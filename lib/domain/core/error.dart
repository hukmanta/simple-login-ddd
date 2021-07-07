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