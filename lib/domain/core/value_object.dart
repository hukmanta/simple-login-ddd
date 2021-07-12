import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:simple_login_ddd/domain/core/error.dart';
import 'package:simple_login_ddd/domain/core/failures.dart';
import 'package:simple_login_ddd/domain/core/value_validators.dart';

@immutable
abstract class ValueObject<T>{
  const ValueObject();
  Either<ValueFailure<T>,T> get value;

  @override
  String toString() {
    switch (T.runtimeType){
      case Username: return 'Username($value)';
      case Password: return 'Password($value)';
      default: return 'Unknown($value)';
    }
  }

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  T getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), (r) => r);
  }

  bool isValid() => value.isRight();
}

@immutable
class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input){
    return Username._(validateUsername(input));
  }

  const Username._(this.value);
}

class Password extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input){
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}