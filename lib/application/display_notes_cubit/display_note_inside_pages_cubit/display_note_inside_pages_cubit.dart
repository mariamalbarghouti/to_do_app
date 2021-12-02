import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do/domain/core/bottom_sheet_state_enum.dart';
import 'package:to_do/domain/core/radio_name_enum.dart';
import 'package:to_do/domain/note/note.dart';
import 'package:to_do/domain/note/note_repo.dart';

part 'display_note_inside_pages_state.dart';
part 'display_note_inside_pages_cubit.freezed.dart';

// displays data inside today, tomorrow or someDay
@injectable
class DisplayNoteInsidePagesCubit extends Cubit<DisplayNoteInsidePagesState> {
  DisplayNoteInsidePagesCubit(this._noteRepository)
      : super(DisplayNoteInsidePagesState.initial());

  final NoteRepository _noteRepository;

  // tab clicked, swapped or app opened then
  // change the value according to index [today,tomorrow,someDay]
  // && done notes out of
  void retrieveClickedOrSwapped({required RadioNameEnum index}) async => emit(
        state.copyWith(
          indexOfTap: index,
          notes: await _noteRepository.retrieveDataByScheduleDay(
              dayIndex: index.index),
          getCountDoneNoteOutOfAllNotes:
              await _noteRepository.countDoneNoteOutOfAllNotes(
            statusIndex: index.index,
          ),
        ),
      );
//TODo 
  /// update from the tile of list
  void updateCheckBoxValue({required bool value, required int id}) async {
    await _noteRepository.updateCheckbox(
      isFinished: value,
      id: id,
    );
    return retrieveClickedOrSwapped(index: state.indexOfTap);
  }

  /// delete from drop menu
  void deleteFromDropMenuClicked({required int id}) async {
    //TODO: make a thing using deleteNote return value
    //like
    await _noteRepository.deleteNote(id: id);
    // refresh ui
    retrieveClickedOrSwapped(index: state.indexOfTap);
  }

  /// change the scheduled date from drop down menu
  void updateScheduledDateFromDropMenuClicked({
    required int id,
    required int scheduledDayIndex,
  }) async {
    //TODO: make a thing using deleteNote return value
    await _noteRepository.updateScheduledDate(
        dayIndex: scheduledDayIndex, id: id);
    // refresh
    retrieveClickedOrSwapped(index: state.indexOfTap);
  }

}
