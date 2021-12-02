import 'package:to_do/domain/note/note_value_objects/note_content_value_object.dart';

// TODO:
//todo: make it freezed
//todo: make it Note.empty
//todo: extension for tofailure

/// Contains note attributes which
///  will be as an Item in the listView
class Note {
  /// id of the node
  final int? id;

  /// content of the note
  final NoteContent content;

  /// isDone node
  final bool isDone;

  /// [Today, Tomorrow, SomeDay]
  final int schedulingNoteIsWhen;
  Note({
    this.id,
    this.isDone=false,
    required this.content,
    required this.schedulingNoteIsWhen,
  });
  //TODO: use it
  factory Note.empty() => Note(
        // id: 0,
        isDone: false,
        content: NoteContent(textInput: ''),
        schedulingNoteIsWhen: 0,
      );
}
//TODO
// Option<NoteValueFailures> get failureOption =>

// noteContent.map<Option<NoteValueFailures>((e) => e.failureOrUnit.fold((l) => some(l), (_) => none()));
//   noteContent.map<Option<NoteValueFailures>((e) {

//  noteContent=  e.failureOrUnit.fold((l) => some(l), (_) => none());
//  return noteContent;
//   }
// );
