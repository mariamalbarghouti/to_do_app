// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDTO _$$_NoteDTOFromJson(Map<String, dynamic> json) => _$_NoteDTO(
      id: json['id'] as int?,
      scheduledForWhichDate: json['schedule_date'] as int? ?? 0,
      content: json['content'] as String,
      isDone: json['is_done'] as int? ?? 0,
    );

Map<String, dynamic> _$$_NoteDTOToJson(_$_NoteDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schedule_date': instance.scheduledForWhichDate,
      'content': instance.content,
      'is_done': instance.isDone,
    };
