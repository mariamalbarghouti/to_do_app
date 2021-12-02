import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failures.freezed.dart';

//TODO: What <T> usage
@freezed
// The value failure of the user interactions 
abstract class ValueFailures<T> with _$ValueFailures<T>{
   const factory ValueFailures.emptyNote({required T msg}) =  _EmptyNote<T> ;
}
