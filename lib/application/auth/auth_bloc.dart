import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(grantedLogIn: (GrantedLogin value) async* {
        yield const AuthState.authenticated();
    },
        authCheckRequested: (AuthCheckRequested value) async* {
        yield const AuthState.unauthenticated();
        }

    );
  }
}
