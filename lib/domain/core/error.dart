import 'package:simple_login_ddd/domain/auth/auth_failure.dart';
import 'package:simple_login_ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error{
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
  const explanation = 'Mengalami error pada point yang tidak bisa dikembalikan. keluar applikasi ...';
  return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class SignInError extends Error{
  final AuthFailure authFailure;

  SignInError(this.authFailure);

  @override
  String toString() {
    const explanation = 'Mengalami error pada saat login aplikasi. keluar applikasi ...';
    return Error.safeToString('$explanation Failure was: $authFailure');
  }
}