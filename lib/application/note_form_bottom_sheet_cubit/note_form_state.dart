part of 'note_form_cubit.dart';

    //TODO: answer the question to delete it 
@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required int scheduleDayRadioIndex,
    //TODO: delete it
    // required bool isDone,
    required NoteContent noteContent,
    /// a state of the add button 
    /// preferred to use BottomSheetButtonState enum
    /// to be more readable
    /// and also because i can not make it a sealed classes 
    /// as this is data class
    //TODO: search for alternative way
    required BottomSheetButtonState bottomState,
    /// isUpdate else create
    required bool isUpdateState,
    required bool validToBeSavedToDB,
    required int noteID,

    // required int noteID,
  }) = _NoteFormState;
  // TODO
  //todo make a factory for update
  factory NoteFormState.initial() => NoteFormState(
        noteID:0,
        noteContent: NoteContent(textInput: ''),
        scheduleDayRadioIndex: 0,
        isUpdateState: false,
        // isDone: false,
        validToBeSavedToDB: false,
        // isUpdating: false,
        bottomState: BottomSheetButtonState.initState,
      );
}
