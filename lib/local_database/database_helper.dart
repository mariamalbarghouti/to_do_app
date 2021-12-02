import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:to_do/domain/note/note.dart';
import 'package:to_do/infrastructure/notes/note_dto.dart';

//TODO
//todo Json to Dart Model install
class SQLHelper {
  SQLHelper._();
  factory SQLHelper() => instance;
  static final SQLHelper instance = SQLHelper._();
  Database? _db;

  Future<Database> _createDB() async {
    // If the app is opened just now
    if (_db != null) return _db!;
    // Open db too create a db
    // or to take an instance of it
    // Get the default databases location.
    // and join the name of app db
    String path = join(await getDatabasesPath(), 'todo_db.db');
    _db = await openDatabase(path, version: 1,
        onCreate: (Database database, int version) {
      print("Created");
      return database.execute(// auto increment
          //TODO status int
          "CREATE TABLE tasks (id integer PRIMARY KEY  ,content TEXT,schedule_date INTEGER,is_done INTEGER) ");
    }, onOpen: (_) {
      //TODO: remove it
      print("\n opened db \n ");
    });
    return _db!;
  }

  /// insert note to database
  Future<int> insertNodeToDB({
    // required Map<String, Object?> noteDatabaseModel,
    required Map<String, Object?> notes,
  }) async {
    Database _database = await _createDB();
    return _database.insert("tasks", notes);
    // .rawInsert(
    //     'INSERT INTO tasks (content,status,isFinished) values("${noteDatabaseModel.content}", "${noteDatabaseModel.status}","${noteDatabaseModel.isFinished}")');
  }

  /// get all data from database
  // Future<List<Map<String, dynamic>>> getAllNotesFormDB() async {
  //   Database _database = await _createDB();
  //   return await _database.rawQuery("SELECT * from tasks");
  // }

  /// get [today,tomorrow, or someday] notes
  Future<List<Map<String, Object?>>> retrieveNotesByScheduleDay(
      {required int status}) async {
    Database _database = await _createDB();
    return await _database
        .rawQuery("SELECT * from tasks where schedule_date = $status");
  }

  /// count of all elements
  Future<int> _countOfAllNotes({required int status}) async {
    Database _database = await _createDB();
    //get all elements
    dynamic allNotesCount = await _database.rawQuery(
        "SELECT COUNT(is_done) FROM tasks  WHERE schedule_date = $status");
    allNotesCount.forEach((element) {
      allNotesCount = element['COUNT(is_done)'];
    });
    return allNotesCount;
  }

  /// count Done Note Out Of All Notes
  Future<String> countDoneNoteOutOfAllNotes({required int status}) async {
    Database _database = await _createDB();
    //get all the done elements
    dynamic done = await _database.rawQuery(
        "SELECT COUNT(is_done) FROM tasks WHERE is_done = 1 AND schedule_date = $status");
    done.forEach((element) {
      done = element['COUNT(is_done)'];
    });

    int allNotes = await _countOfAllNotes(status: status);

    // for example => return 4/5
    return done.toString() + '/' + allNotes.toString();
  }

  /// update note content && status
  Future<int> updateNote({required int id,required String content,required int scheduledDate}) async {
    Database _database = await _createDB();
    print("\n hi from update helper\n");
    
    return await _database.rawUpdate(
        "UPDATE tasks SET content = '$content', schedule_date = $scheduledDate WHERE id = $id ");
  }
  //TODO
  //todo try it
  //todo rename it

  // retrieve the checkBox value
  //TODO ask why her future is required
  //todo delete it
  // Future<List<bool>> checkBoxValue({required int id}) async {
  //   Database? _database = await _createDB();
  //   // int i=1;
  //   dynamic _checkBoxValue =
  //       await _database.rawQuery("SELECT is_done FROM tasks WHERE id = $id");

  //   // print('\n _checkBoxValue: ${_checkBoxValue} \n');
  //   _checkBoxValue.forEach((element) {
  //     _checkBoxValue = element['is_done'];
  //   });
  //   // print('\n isFinished: ${_checkBoxValue} \n');
  //   print('\n db isFinished checkBoxValue: $_checkBoxValue \n');
  //   return _checkBoxValue;
  // }

  /// update check box
  /// done or not
  Future<int> updateCheckbox({
    required int isFinished,
    required int id,
  }) async {
    Database? _database = await _createDB();
    return await _database
        .rawUpdate("UPDATE tasks SET is_done = $isFinished  WHERE id = $id");
  }
  /// update scheduled date 
  Future<int> updateScheduledDate({
    required int day,
    required int id,
  }) async {
    Database? _database = await _createDB();
    return await _database
        .rawUpdate("UPDATE tasks SET schedule_date = $day  WHERE id = $id");
  }

  /// delete note
  Future<int> deleteNote(int id) async {
    Database? _database = await _createDB();
    return await _database.rawDelete("DELETE FROM tasks WHERE id = $id");
  }

  //TODO: So Important
  //todo delete multi
  //DELETE from `tablename` WHERE `id` IN (1, 5 , 7)
  Future<int> deleteMultiNotes(
      {required int id1, required int id2, required int id3}) async {
    Database? _database = await _createDB();
    return await _database
        .rawDelete("DELETE FROM tasks WHERE id IN ($id1,$id2,$id3)");
  }

  //TODO use it
  Future<void> close() async => await _db!.close();
}
