
import 'package:to_do/domain/core/value_failures.dart';

/// unexpectedValueError
class UnexpectedValueError extends Error {
  final ValueFailures msg;
  UnexpectedValueError({required this.msg});
  @override
  String toString() {
    return Error.safeToString(
        "Encountered a ValueFailure at an unrecoverable point. Terminating. Failure was $msg");
  }
}
