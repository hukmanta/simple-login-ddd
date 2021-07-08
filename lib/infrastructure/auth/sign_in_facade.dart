import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_login_ddd/domain/auth/auth_failure.dart';
import 'package:simple_login_ddd/domain/auth/i_auth_facade.dart';
import 'package:simple_login_ddd/domain/core/value_object.dart';

@LazySingleton(as: IAuthFacade)
class SignInFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> signWithUsernameAndPassword(
      {required Username username, required Password password}) async {
    try {
      username.getOrCrash();
      password.getOrCrash();
      return right(unit);
    }  catch (e) {
      return left(const AuthFailure.invalidUsernameAndPasswordCombination());
    }
    
  }
}
