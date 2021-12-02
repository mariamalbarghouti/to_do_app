import 'package:to_do/domain/note/note.dart';
import 'package:to_do/infrastructure/notes/note_dto.dart';
// TODO
// todo Make data as stream
abstract class NoteRepository {
  // Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  // Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  // Future<Either<NoteFailure, Unit>> create(Note note);
  // Future<Either<NoteFailure, Unit>> update(Note note);
  // Future<Either<NoteFailure, Unit>> delete(Note note);
  // TODO
  //todo i need to use freezed json
  //todo know in which layer should i use data transfer layer

  //TODO returnType of API
  //todo is Either or Unit
  //todo input type is Note
  Future<int> insertNodeToDB({required Note note});
  Future<List<Note>> retrieveDataByScheduleDay({required int dayIndex});
  Future<int> deleteNote({required int id});
  Future<int> updateNote({required int id,required String content,required int scheduledDate });
  Future<int> updateCheckbox({required bool isFinished, required int id});
  Future<int> updateScheduledDate({required int dayIndex, required int id});
  //TODO
  //! i really used it?
  Future<String> countDoneNoteOutOfAllNotes({required int statusIndex});
  // Future<int> notesCount();
  //TODO:delete it
  // Future<List<bool>> getCheckBoxValue({required int id});
//  Future<List<Map<String, dynamic>>> countOfAllNotes();
//  Future<List<Map<String, dynamic>>> countOfDoneNote();
//TODO
// void close();
}
