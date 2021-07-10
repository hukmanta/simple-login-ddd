part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required Username username,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<Either<WeatherFailure,WeatherResponse>> weatherFailureOrResponseOption
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        username: Username(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        weatherFailureOrResponseOption:  none()
      );
}