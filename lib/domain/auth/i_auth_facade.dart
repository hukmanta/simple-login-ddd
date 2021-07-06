import 'package:dartz/dartz.dart';
import 'package:simple_login_ddd/domain/auth/auth_failure.dart';
import 'package:simple_login_ddd/domain/core/value_object.dart';

abstract class IAuthFacade{
  Future<Either<AuthFailure, Unit>> signWithUsernameAndPassword({required Username username, required Password password});
}