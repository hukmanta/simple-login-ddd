import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_login_ddd/domain/weather/i_weather_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IWeatherFacade _iWeatherFacade;
  AuthBloc(this._iWeatherFacade) : super(const AuthState.initial());

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
