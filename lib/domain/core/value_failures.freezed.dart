// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailuresTearOff {
  const _$ValueFailuresTearOff();

  _EmptyNote<T> emptyNote<T>({required T msg}) {
    return _EmptyNote<T>(
      msg: msg,
    );
  }
}

/// @nodoc
const $ValueFailures = _$ValueFailuresTearOff();

/// @nodoc
mixin _$ValueFailures<T> {
  T get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T msg) emptyNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T msg)? emptyNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T msg)? emptyNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyNote<T> value) emptyNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyNote<T> value)? emptyNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyNote<T> value)? emptyNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailuresCopyWith<T, ValueFailures<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailuresCopyWith<T, $Res> {
  factory $ValueFailuresCopyWith(
          ValueFailures<T> value, $Res Function(ValueFailures<T>) then) =
      _$ValueFailuresCopyWithImpl<T, $Res>;
  $Res call({T msg});
}

/// @nodoc
class _$ValueFailuresCopyWithImpl<T, $Res>
    implements $ValueFailuresCopyWith<T, $Res> {
  _$ValueFailuresCopyWithImpl(this._value, this._then);

  final ValueFailures<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailures<T>) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$EmptyNoteCopyWith<T, $Res>
    implements $ValueFailuresCopyWith<T, $Res> {
  factory _$EmptyNoteCopyWith(
          _EmptyNote<T> value, $Res Function(_EmptyNote<T>) then) =
      __$EmptyNoteCopyWithImpl<T, $Res>;
  @override
  $Res call({T msg});
}

/// @nodoc
class __$EmptyNoteCopyWithImpl<T, $Res>
    extends _$ValueFailuresCopyWithImpl<T, $Res>
    implements _$EmptyNoteCopyWith<T, $Res> {
  __$EmptyNoteCopyWithImpl(
      _EmptyNote<T> _value, $Res Function(_EmptyNote<T>) _then)
      : super(_value, (v) => _then(v as _EmptyNote<T>));

  @override
  _EmptyNote<T> get _value => super._value as _EmptyNote<T>;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EmptyNote<T>(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_EmptyNote<T> with DiagnosticableTreeMixin implements _EmptyNote<T> {
  const _$_EmptyNote({required this.msg});

  @override
  final T msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailures<$T>.emptyNote(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailures<$T>.emptyNote'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyNote<T> &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EmptyNoteCopyWith<T, _EmptyNote<T>> get copyWith =>
      __$EmptyNoteCopyWithImpl<T, _EmptyNote<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T msg) emptyNote,
  }) {
    return emptyNote(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T msg)? emptyNote,
  }) {
    return emptyNote?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T msg)? emptyNote,
    required TResult orElse(),
  }) {
    if (emptyNote != null) {
      return emptyNote(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyNote<T> value) emptyNote,
  }) {
    return emptyNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyNote<T> value)? emptyNote,
  }) {
    return emptyNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyNote<T> value)? emptyNote,
    required TResult orElse(),
  }) {
    if (emptyNote != null) {
      return emptyNote(this);
    }
    return orElse();
  }
}

abstract class _EmptyNote<T> implements ValueFailures<T> {
  const factory _EmptyNote({required T msg}) = _$_EmptyNote<T>;

  @override
  T get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyNoteCopyWith<T, _EmptyNote<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
