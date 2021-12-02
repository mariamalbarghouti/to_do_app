import 'package:dartz/dartz.dart';
import 'package:to_do/domain/core/error.dart';
import 'package:to_do/domain/core/value_failures.dart';

//TODO: valueFailure

// i make value a T dataType
// as getOrCrash()
// needs to get only one return type
// so T will be string or ValueFailures<T>
// as [value.fold] contains the two type of return value
// so using T is handy as when ever i need to return the value
// will not asked me to return Either, But indeed i WILL return
// Either type

/// making all attributes a dataClass 
abstract class ValueObjects<T> {
  const ValueObjects();
  Either<ValueFailures<T>, T> get value;

  /// for get only the wrong value
  Either<ValueFailures<T>, Unit> get failureOrUnit=>
    value.fold((l) => left(l), (r) => right(unit));
//TODO: recognize
//! when it is left returned failure not crash!
//TODO override error screen
    /// the return value is T as 
    /// it is string actually but if there is 
    /// an Error thrown, no thing bad happens!
    /// so the input also is T
  T getOrCrash() { 
    return value.fold((l) => throw UnexpectedValueError(msg: l), (r) => r);
  }
//TODO
//todo: delete it
/// for return the right side 
/// or else give it a string to be printed 
   T getValueOrElse(T dflt){
    return value.getOrElse(() =>dflt);
  }

  @override
  String toString() => 'value: $value';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObjects && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
