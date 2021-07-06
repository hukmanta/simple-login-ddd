
part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory SignInFormEvent.usernameChanged(String usernameStr) = UsernameChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory SignInFormEvent.signInWithUsernameAndPasswordPressed() = SignInWithUsernameAndPasswordPressed;
  }