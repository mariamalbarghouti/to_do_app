// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required int scheduleDayRadioIndex,
      required NoteContent noteContent,
      required BottomSheetButtonState bottomState,
      required bool isUpdateState,
      required bool validToBeSavedToDB,
      required int noteID}) {
    return _NoteFormState(
      scheduleDayRadioIndex: scheduleDayRadioIndex,
      noteContent: noteContent,
      bottomState: bottomState,
      isUpdateState: isUpdateState,
      validToBeSavedToDB: validToBeSavedToDB,
      noteID: noteID,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  int get scheduleDayRadioIndex =>
      throw _privateConstructorUsedError; //TODO: delete it
// required bool isDone,
  NoteContent get noteContent => throw _privateConstructorUsedError;

  /// a state of the add button
  /// preferred to use BottomSheetButtonState enum
  /// to be more readable
  /// and also because i can not make it a sealed classes
  /// as this is data class
//TODO: search for alternative way
  BottomSheetButtonState get bottomState => throw _privateConstructorUsedError;

  /// isUpdate else create
  bool get isUpdateState => throw _privateConstructorUsedError;
  bool get validToBeSavedToDB => throw _privateConstructorUsedError;
  int get noteID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {int scheduleDayRadioIndex,
      NoteContent noteContent,
      BottomSheetButtonState bottomState,
      bool isUpdateState,
      bool validToBeSavedToDB,
      int noteID});
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? scheduleDayRadioIndex = freezed,
    Object? noteContent = freezed,
    Object? bottomState = freezed,
    Object? isUpdateState = freezed,
    Object? validToBeSavedToDB = freezed,
    Object? noteID = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleDayRadioIndex: scheduleDayRadioIndex == freezed
          ? _value.scheduleDayRadioIndex
          : scheduleDayRadioIndex // ignore: cast_nullable_to_non_nullable
              as int,
      noteContent: noteContent == freezed
          ? _value.noteContent
          : noteContent // ignore: cast_nullable_to_non_nullable
              as NoteContent,
      bottomState: bottomState == freezed
          ? _value.bottomState
          : bottomState // ignore: cast_nullable_to_non_nullable
              as BottomSheetButtonState,
      isUpdateState: isUpdateState == freezed
          ? _value.isUpdateState
          : isUpdateState // ignore: cast_nullable_to_non_nullable
              as bool,
      validToBeSavedToDB: validToBeSavedToDB == freezed
          ? _value.validToBeSavedToDB
          : validToBeSavedToDB // ignore: cast_nullable_to_non_nullable
              as bool,
      noteID: noteID == freezed
          ? _value.noteID
          : noteID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int scheduleDayRadioIndex,
      NoteContent noteContent,
      BottomSheetButtonState bottomState,
      bool isUpdateState,
      bool validToBeSavedToDB,
      int noteID});
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? scheduleDayRadioIndex = freezed,
    Object? noteContent = freezed,
    Object? bottomState = freezed,
    Object? isUpdateState = freezed,
    Object? validToBeSavedToDB = freezed,
    Object? noteID = freezed,
  }) {
    return _then(_NoteFormState(
      scheduleDayRadioIndex: scheduleDayRadioIndex == freezed
          ? _value.scheduleDayRadioIndex
          : scheduleDayRadioIndex // ignore: cast_nullable_to_non_nullable
              as int,
      noteContent: noteContent == freezed
          ? _value.noteContent
          : noteContent // ignore: cast_nullable_to_non_nullable
              as NoteContent,
      bottomState: bottomState == freezed
          ? _value.bottomState
          : bottomState // ignore: cast_nullable_to_non_nullable
              as BottomSheetButtonState,
      isUpdateState: isUpdateState == freezed
          ? _value.isUpdateState
          : isUpdateState // ignore: cast_nullable_to_non_nullable
              as bool,
      validToBeSavedToDB: validToBeSavedToDB == freezed
          ? _value.validToBeSavedToDB
          : validToBeSavedToDB // ignore: cast_nullable_to_non_nullable
              as bool,
      noteID: noteID == freezed
          ? _value.noteID
          : noteID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.scheduleDayRadioIndex,
      required this.noteContent,
      required this.bottomState,
      required this.isUpdateState,
      required this.validToBeSavedToDB,
      required this.noteID});

  @override
  final int scheduleDayRadioIndex;
  @override //TODO: delete it
// required bool isDone,
  final NoteContent noteContent;
  @override

  /// a state of the add button
  /// preferred to use BottomSheetButtonState enum
  /// to be more readable
  /// and also because i can not make it a sealed classes
  /// as this is data class
//TODO: search for alternative way
  final BottomSheetButtonState bottomState;
  @override

  /// isUpdate else create
  final bool isUpdateState;
  @override
  final bool validToBeSavedToDB;
  @override
  final int noteID;

  @override
  String toString() {
    return 'NoteFormState(scheduleDayRadioIndex: $scheduleDayRadioIndex, noteContent: $noteContent, bottomState: $bottomState, isUpdateState: $isUpdateState, validToBeSavedToDB: $validToBeSavedToDB, noteID: $noteID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.scheduleDayRadioIndex, scheduleDayRadioIndex) ||
                const DeepCollectionEquality().equals(
                    other.scheduleDayRadioIndex, scheduleDayRadioIndex)) &&
            (identical(other.noteContent, noteContent) ||
                const DeepCollectionEquality()
                    .equals(other.noteContent, noteContent)) &&
            (identical(other.bottomState, bottomState) ||
                const DeepCollectionEquality()
                    .equals(other.bottomState, bottomState)) &&
            (identical(other.isUpdateState, isUpdateState) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdateState, isUpdateState)) &&
            (identical(other.validToBeSavedToDB, validToBeSavedToDB) ||
                const DeepCollectionEquality()
                    .equals(other.validToBeSavedToDB, validToBeSavedToDB)) &&
            (identical(other.noteID, noteID) ||
                const DeepCollectionEquality().equals(other.noteID, noteID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scheduleDayRadioIndex) ^
      const DeepCollectionEquality().hash(noteContent) ^
      const DeepCollectionEquality().hash(bottomState) ^
      const DeepCollectionEquality().hash(isUpdateState) ^
      const DeepCollectionEquality().hash(validToBeSavedToDB) ^
      const DeepCollectionEquality().hash(noteID);

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required int scheduleDayRadioIndex,
      required NoteContent noteContent,
      required BottomSheetButtonState bottomState,
      required bool isUpdateState,
      required bool validToBeSavedToDB,
      required int noteID}) = _$_NoteFormState;

  @override
  int get scheduleDayRadioIndex => throw _privateConstructorUsedError;
  @override //TODO: delete it
// required bool isDone,
  NoteContent get noteContent => throw _privateConstructorUsedError;
  @override

  /// a state of the add button
  /// preferred to use BottomSheetButtonState enum
  /// to be more readable
  /// and also because i can not make it a sealed classes
  /// as this is data class
//TODO: search for alternative way
  BottomSheetButtonState get bottomState => throw _privateConstructorUsedError;
  @override

  /// isUpdate else create
  bool get isUpdateState => throw _privateConstructorUsedError;
  @override
  bool get validToBeSavedToDB => throw _privateConstructorUsedError;
  @override
  int get noteID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
