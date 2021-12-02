import 'package:injectable/injectable.dart';
import 'package:to_do/local_database/database_helper.dart';

// a module to make the database instance 
// a singleton
@module
abstract class SQLModule{
  @singleton
  SQLHelper get dbHelper=>SQLHelper.instance;
}