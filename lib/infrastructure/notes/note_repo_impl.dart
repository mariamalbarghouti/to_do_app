import 'package:injectable/injectable.dart';
import 'package:to_do/domain/note/note.dart';
import 'package:to_do/domain/note/note_repo.dart';
import 'package:to_do/domain/note/note_value_objects/note_content_value_object.dart';
import 'package:to_do/local_database/database_helper.dart';
import 'package:to_do/infrastructure/notes/note_dto.dart';

// impl
// data to object
//TODO
//todo: add DTO
//todo: add Failures according db
//todo: throw errors
//todo: try catch
@Singleton(as: NoteRepository)
class NoteRepositoryImp extends NoteRepository {
  final SQLHelper _db = SQLHelper.instance;

  // insertNodeToDB
  @override
  Future<int> insertNodeToDB({
    required Note note,
  }) async =>
      await _db.insertNodeToDB(notes: NoteDTO.fromDomain(note: note).toJson());

  //retrieveData according to tap value
//TODO:get failure or success
    //TODO give it QueryResultSet
    //todo to see the output
  @override
  Future<List<Note>> retrieveDataByScheduleDay({required int dayIndex}) async {
  List<Map<String,Object?>> data=await _db.retrieveNotesByScheduleDay(status: dayIndex);
   return data.map((e) => NoteDTO.fromJson(e).toDomain()).toList();
  }

  // deleteNote
  @override
  Future<int> deleteNote({required int id}) async => await _db.deleteNote(id);

  // countOfAllNotes
  // @override
  // Future<List<Map<String, dynamic>>> countOfAllNotes() async =>
  //     await _db.countOfAllNotes();

  // // countOfDoneNote
  // @override
  // Future<List<Map<String, dynamic>>> countOfDoneNote() async =>
  //     await _db.countOfDoneNote();

  // updateCheckbox
  @override
  Future<int> updateCheckbox(
          {required bool isFinished, required int id}) async =>
      await _db.updateCheckbox(isFinished: isFinished?1:0, id: id);

  // updateNote
  @override
  Future<int> updateNote({required int id,required String content,required int scheduledDate }) async =>
      await _db.updateNote(content: content,id: id,scheduledDate: scheduledDate);
// countDoneNoteOutOfAllNotes
  @override
  Future<String> countDoneNoteOutOfAllNotes({required int statusIndex}) async =>
      await _db.countDoneNoteOutOfAllNotes(status: statusIndex);

// //count of all notes
//   @override
//   Future<int> notesCount() async => await _db.countOfAllNotes();

  // @override
  // Future<List<bool>> getCheckBoxValue({required int id}) async =>
  //     await _db.checkBoxValue(id: id);

  @override
  Future<int> updateScheduledDate({required int dayIndex, required int id}) async=>await _db.updateScheduledDate(day: dayIndex, id: id);

  // @override
  // void close() {
  //   _db.close();
  // }
}
