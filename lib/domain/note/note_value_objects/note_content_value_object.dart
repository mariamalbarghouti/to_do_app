import 'package:dartz/dartz.dart';
import 'package:to_do/domain/core/value_failures.dart';
import 'package:to_do/domain/core/value_objects.dart';
import 'package:to_do/domain/note/note_validator/note_validator.dart';

/// For validation and failures 
/// includes [value Of Note And Validate It]

class NoteContent extends ValueObjects<String> {
  NoteContent._({required this.value});
  
  @override
  final Either<ValueFailures<String>, String> value;

  factory NoteContent({required String textInput}) {
    return NoteContent._(value: addNoteValidator(textInput));
  }
}
