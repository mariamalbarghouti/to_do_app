part of 'display_note_inside_pages_cubit.dart';

// displayed notes inside pages 
@freezed
class DisplayNoteInsidePagesState with _$DisplayNoteInsidePagesState {
  const factory DisplayNoteInsidePagesState({
    required List<Note> notes,
    required int getNotesCount,
    required String getCountDoneNoteOutOfAllNotes,
    required RadioNameEnum checkBoxValue,
    required RadioNameEnum indexOfTap,
    /// the state of bottom sheet's button [init,save,create,update]
    required int bottomSheetButtonState,
  }) = _DisplayNoteInsidePagesState;

  factory DisplayNoteInsidePagesState.initial() =>const DisplayNoteInsidePagesState(
        checkBoxValue: RadioNameEnum.today,
        getCountDoneNoteOutOfAllNotes: '0/0',
        getNotesCount: 0,
        indexOfTap: RadioNameEnum.today,
        bottomSheetButtonState: 0,
        notes: [],
      );
}
