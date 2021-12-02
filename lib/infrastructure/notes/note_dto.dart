import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/domain/note/note.dart';
import 'package:to_do/domain/note/note_value_objects/note_content_value_object.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

/// data transfer object
/// Which should contain
/// a native dataType so
/// will use [fromDomain]
/// fromDomain--> will convert Note to [NoteDTO]
/// toJson --> toDB
/// fromJson --> fromDB needs [toObject]
/// toDomain --> toObject to be holding
@freezed
abstract class NoteDTO with _$NoteDTO {
  /// for Note Data Transfer Object
  /// contains List Which gonna returned
  /// inside the UI
  const factory NoteDTO({
    //TODO: id remove it
     int? id,

    /// when this note will be achieved
    @JsonKey(name:"schedule_date") @Default(0) int scheduledForWhichDate,

    /// number done out of note done yet
    // required String doneOutOfNotDone,

    /// content of the note
    required String content,

    /// Is this note is done
    @JsonKey(name:"is_done")  @Default(0) int isDone,
  }) = _NoteDTO;

  /// to convert from domain to DTO
  factory NoteDTO.fromDomain({required Note note}) => NoteDTO(
        // id: note.id,
        scheduledForWhichDate: note.schedulingNoteIsWhen,
        content: note.content.getOrCrash(),
        // convert bool into int 
        isDone: note.isDone?1:0,
      );

  //  factory NoteDTO.fromDomain(Note note)=>
  factory NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteDTOFromJson(json);
}

/// convert Domain Node to DTO
extension NoteDTOX on NoteDTO {
  Note toDomain() {
    return Note(
      id: id!,
      isDone: (isDone==1)?true:false,
      schedulingNoteIsWhen: scheduledForWhichDate,
      content: NoteContent(textInput: content),
    );
  }
}
