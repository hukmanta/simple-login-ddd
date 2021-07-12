import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_login_ddd/application/auth/auth_bloc.dart';

void main() {
  late AuthBloc _authBloc;

  //DO: setUp
  setUp(() {
    _authBloc = AuthBloc();
  });

  //DO: tearDown
  tearDown(() {
    _authBloc.close();
  });

  //DO: test authCheckRequested
  blocTest(
      'test authCheckRequested',
      build: () => _authBloc,
      act: (AuthBloc bloc) => bloc.add(const AuthEvent.authCheckRequested()),
      expect: () => [const AuthState.unauthenticated()]);


  //DO: test grantLogin
  blocTest(
      'test grantLogin',
      build: () => _authBloc,
      act: (AuthBloc bloc) => bloc.add(const AuthEvent.grantedLogIn()),
      expect: () => [const AuthState.authenticated()]);


}
