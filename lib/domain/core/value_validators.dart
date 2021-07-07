import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input == 'user1') {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    if (input == "@bcdE123") {
      return right(input);
    } else {
      return left(ValueFailure.invalidPassword(failedValue: input));
    }
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
