
import 'package:dartz/dartz.dart';
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

  SignInFromBloc(this._authFacade);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event)
    async* {
      // TODO: Implement
    }
  }