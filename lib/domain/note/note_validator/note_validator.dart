import 'package:dartz/dartz.dart';
import 'package:to_do/domain/core/value_failures.dart';
import 'package:to_do/domain/note/note_failures/note_failures.dart';

//TODO: delete last \n
/// Validate input text
/// convert issue to
///  failure or 
/// returns the input 
Either<ValueFailures<String>, String> addNoteValidator(String input) {
  // If empty
  // return a message to the user
  if (input.trim().isEmpty) {
    return left(
      const ValueFailures.emptyNote(msg: 'Please enter your note'),
    );
  }
  // Else
  // return the value
  return right(input);
}
