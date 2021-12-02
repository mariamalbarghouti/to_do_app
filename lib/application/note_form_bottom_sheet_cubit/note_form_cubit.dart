import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do/domain/core/bottom_sheet_state_enum.dart';
import 'package:to_do/domain/note/note.dart';
import 'package:to_do/domain/note/note_repo.dart';
import 'package:to_do/domain/note/note_value_objects/note_content_value_object.dart';

part 'note_form_state.dart';
part 'note_form_cubit.freezed.dart';

// NoteForm entities
// contains textInput ,radio and addButton
@injectable
class NoteFormCubit extends Cubit<NoteFormState> {
  NoteFormCubit(this._noteRepository) : super(NoteFormState.initial());
  final NoteRepository _noteRepository;

  // text input note
  void textInputNote({required String? textNote}) => emit(
        state.copyWith(
          noteContent: NoteContent(textInput: textNote!),
          //TODO >> openToCreateNewNote
          //todo but be careful
          bottomState: BottomSheetButtonState.isEditing,
        ),
      );

  /// for change the value the radio group
  void radioGroupValue({required int value}) async => emit(
        state.copyWith(
          scheduleDayRadioIndex: value,
          bottomState: BottomSheetButtonState.isEditing,
          // validToBeSavedToDB: false,
        ),
      );

  /// to tell the UI "it is okay to open it the next time"
  void openOrCloseBottomSheet(
          {required BottomSheetButtonState openOrCloseButton}) =>
      emit(
        state.copyWith(
          bottomState: openOrCloseButton,
        ),
      );

  //TODO
  //todo need to make it show
  //todo error when data is note not valid
  //todo show error message i mean

  /// update the note from UI Menu of List
  void updateNoteMenuClicked({required Note note}) {
    emit(
      state.copyWith(
        bottomState: BottomSheetButtonState.openToUpdate,
        isUpdateState: true,
      ),
    );
    // get the previous text to be updated
    radioGroupValue(value: note.schedulingNoteIsWhen);
    // get the previous radio text to be updated
    textInputNote(textNote: note.content.getValueOrElse(""));
    // to get the id of the note to be updated
    emit(state.copyWith(noteID: note.id!));
  }
/// for save the note if it is a new note
/// update the note if it is 
  void saveOrUpdate() async {
    // if is value is valid
    if (state.noteContent.value.isRight()) {
      if (state.isUpdateState) {
        await _noteRepository.updateNote(
            content:state.noteContent.getOrCrash(), id: state.noteID, scheduledDate: state.scheduleDayRadioIndex);
      } else {
        print('\n save state \n');
        await _noteRepository.insertNodeToDB(
          note: Note(
            content: state.noteContent,
            schedulingNoteIsWhen: state.scheduleDayRadioIndex,
          ),
        );
      }
      // for auto-pop the bottom sheet
      emit(state.copyWith(validToBeSavedToDB: true));
      // reset the state of the note
      emit(NoteFormState.initial());
    }
  }
}
