// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDTO _$NoteDTOFromJson(Map<String, dynamic> json) {
  return _NoteDTO.fromJson(json);
}

/// @nodoc
class _$NoteDTOTearOff {
  const _$NoteDTOTearOff();

  _NoteDTO call(
      {int? id,
      @JsonKey(name: "schedule_date") int scheduledForWhichDate = 0,
      required String content,
      @JsonKey(name: "is_done") int isDone = 0}) {
    return _NoteDTO(
      id: id,
      scheduledForWhichDate: scheduledForWhichDate,
      content: content,
      isDone: isDone,
    );
  }

  NoteDTO fromJson(Map<String, Object> json) {
    return NoteDTO.fromJson(json);
  }
}

/// @nodoc
const $NoteDTO = _$NoteDTOTearOff();

/// @nodoc
mixin _$NoteDTO {
//TODO: id remove it
  int? get id => throw _privateConstructorUsedError;

  /// when this note will be achieved
  @JsonKey(name: "schedule_date")
  int get scheduledForWhichDate => throw _privateConstructorUsedError;

  /// number done out of note done yet
// required String doneOutOfNotDone,
  /// content of the note
  String get content => throw _privateConstructorUsedError;

  /// Is this note is done
  @JsonKey(name: "is_done")
  int get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDTOCopyWith<NoteDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDTOCopyWith<$Res> {
  factory $NoteDTOCopyWith(NoteDTO value, $Res Function(NoteDTO) then) =
      _$NoteDTOCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "schedule_date") int scheduledForWhichDate,
      String content,
      @JsonKey(name: "is_done") int isDone});
}

/// @nodoc
class _$NoteDTOCopyWithImpl<$Res> implements $NoteDTOCopyWith<$Res> {
  _$NoteDTOCopyWithImpl(this._value, this._then);

  final NoteDTO _value;
  // ignore: unused_field
  final $Res Function(NoteDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? scheduledForWhichDate = freezed,
    Object? content = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledForWhichDate: scheduledForWhichDate == freezed
          ? _value.scheduledForWhichDate
          : scheduledForWhichDate // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NoteDTOCopyWith<$Res> implements $NoteDTOCopyWith<$Res> {
  factory _$NoteDTOCopyWith(_NoteDTO value, $Res Function(_NoteDTO) then) =
      __$NoteDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "schedule_date") int scheduledForWhichDate,
      String content,
      @JsonKey(name: "is_done") int isDone});
}

/// @nodoc
class __$NoteDTOCopyWithImpl<$Res> extends _$NoteDTOCopyWithImpl<$Res>
    implements _$NoteDTOCopyWith<$Res> {
  __$NoteDTOCopyWithImpl(_NoteDTO _value, $Res Function(_NoteDTO) _then)
      : super(_value, (v) => _then(v as _NoteDTO));

  @override
  _NoteDTO get _value => super._value as _NoteDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? scheduledForWhichDate = freezed,
    Object? content = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_NoteDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledForWhichDate: scheduledForWhichDate == freezed
          ? _value.scheduledForWhichDate
          : scheduledForWhichDate // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDTO with DiagnosticableTreeMixin implements _NoteDTO {
  const _$_NoteDTO(
      {this.id,
      @JsonKey(name: "schedule_date") this.scheduledForWhichDate = 0,
      required this.content,
      @JsonKey(name: "is_done") this.isDone = 0});

  factory _$_NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDTOFromJson(json);

  @override //TODO: id remove it
  final int? id;
  @override

  /// when this note will be achieved
  @JsonKey(name: "schedule_date")
  final int scheduledForWhichDate;
  @override

  /// number done out of note done yet
// required String doneOutOfNotDone,
  /// content of the note
  final String content;
  @override

  /// Is this note is done
  @JsonKey(name: "is_done")
  final int isDone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteDTO(id: $id, scheduledForWhichDate: $scheduledForWhichDate, content: $content, isDone: $isDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('scheduledForWhichDate', scheduledForWhichDate))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('isDone', isDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.scheduledForWhichDate, scheduledForWhichDate) ||
                const DeepCollectionEquality().equals(
                    other.scheduledForWhichDate, scheduledForWhichDate)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(scheduledForWhichDate) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(isDone);

  @JsonKey(ignore: true)
  @override
  _$NoteDTOCopyWith<_NoteDTO> get copyWith =>
      __$NoteDTOCopyWithImpl<_NoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDTOToJson(this);
  }
}

abstract class _NoteDTO implements NoteDTO {
  const factory _NoteDTO(
      {int? id,
      @JsonKey(name: "schedule_date") int scheduledForWhichDate,
      required String content,
      @JsonKey(name: "is_done") int isDone}) = _$_NoteDTO;

  factory _NoteDTO.fromJson(Map<String, dynamic> json) = _$_NoteDTO.fromJson;

  @override //TODO: id remove it
  int? get id => throw _privateConstructorUsedError;
  @override

  /// when this note will be achieved
  @JsonKey(name: "schedule_date")
  int get scheduledForWhichDate => throw _privateConstructorUsedError;
  @override

  /// number done out of note done yet
// required String doneOutOfNotDone,
  /// content of the note
  String get content => throw _privateConstructorUsedError;
  @override

  /// Is this note is done
  @JsonKey(name: "is_done")
  int get isDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteDTOCopyWith<_NoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
