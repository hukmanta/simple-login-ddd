import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_login_ddd/domain/auth/auth_failure.dart';
import 'package:simple_login_ddd/domain/auth/i_auth_facade.dart';
import 'package:simple_login_ddd/domain/core/value_object.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

class SignInFromBloc extends Bloc<SignInFormEvent, SignInFormState>{
  final IAuthFacade _authFacade;
  
  SignInFromBloc(this._authFacade) : super(SignInFormState.initial());

  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event)
    async* {
      yield* event.map(
        usernameChanged: (e) async* {
          yield state.copyWith(
            username : Username(e.usernameStr),
            authFailureOrSuccessOption : none(),
          );
        },
        passwordChanged: (e) async* {
          yield state.copyWith (
            password:Password(e.passwordStr),
          authFailureOrSuccessOption:none(),
          );},
        signInWithUsernameAndPasswordPressed: (e) async* {
              Either<AuthFailure, Unit> failureOrSuccess;
              final isValidUsername = state.username.isValid();
              final isValidPassword = state.password.isValid();

              if (isValidUsername && isValidPassword)
              yield state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption:none(),
              );

              failureOrSuccess = await _authFacade.signWithUsernameAndPassword(
                  username: state.username,
                  password: state.password);
              yield state.copyWith(
                isSubmitting: false,
                  showErrorMessages: true,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess)
              );
        },
      );
    }

}