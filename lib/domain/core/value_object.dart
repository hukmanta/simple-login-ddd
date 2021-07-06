import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:simple_login_ddd/domain/core/failures.dart';
import 'package:simple_login_ddd/domain/core/value_validators.dart';

@immutable
abstract class ValueObject<T>{
  const ValueObject();
  Either<ValueFailure<T>,T> get value;

  @override
  String toString() => 'Username($value)';

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  bool isValid() => value.isRight();
}

@immutable
class Username extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Username(String input){
    assert(input != null);
    return Username._(validateUsername(input));
  }

  const Username._(this.value);
}

class Password extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory Password(String input){
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}