// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  SignInWithUsernameAndPasswordPressed signInWithUsernameAndPasswordPressed() {
    return const SignInWithUsernameAndPasswordPressed();
  }

  MoveToWheaterPage moveToWeatherPage(BuildContext context) {
    return MoveToWheaterPage(
      context,
    );
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithUsernameAndPasswordPressed,
    required TResult Function(BuildContext context) moveToWeatherPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithUsernameAndPasswordPressed,
    TResult Function(BuildContext context)? moveToWeatherPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithUsernameAndPasswordPressed value)
        signInWithUsernameAndPasswordPressed,
    required TResult Function(MoveToWheaterPage value) moveToWeatherPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithUsernameAndPasswordPressed value)?
        signInWithUsernameAndPasswordPressed,
    TResult Function(MoveToWheaterPage value)? moveToWeatherPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'SignInFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithUsernameAndPasswordPressed,
    required TResult Function(BuildContext context) moveToWeatherPage,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithUsernameAndPasswordPressed,
    TResult Function(BuildContext context)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithUsernameAndPasswordPressed value)
        signInWithUsernameAndPasswordPressed,
    required TResult Function(MoveToWheaterPage value) moveToWeatherPage,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithUsernameAndPasswordPressed value)?
        signInWithUsernameAndPasswordPressed,
    TResult Function(MoveToWheaterPage value)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignInFormEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithUsernameAndPasswordPressed,
    required TResult Function(BuildContext context) moveToWeatherPage,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithUsernameAndPasswordPressed,
    TResult Function(BuildContext context)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithUsernameAndPasswordPressed value)
        signInWithUsernameAndPasswordPressed,
    required TResult Function(MoveToWheaterPage value) moveToWeatherPage,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithUsernameAndPasswordPressed value)?
        signInWithUsernameAndPasswordPressed,
    TResult Function(MoveToWheaterPage value)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithUsernameAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithUsernameAndPasswordPressedCopyWith(
          SignInWithUsernameAndPasswordPressed value,
          $Res Function(SignInWithUsernameAndPasswordPressed) then) =
      _$SignInWithUsernameAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithUsernameAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithUsernameAndPasswordPressedCopyWith<$Res> {
  _$SignInWithUsernameAndPasswordPressedCopyWithImpl(
      SignInWithUsernameAndPasswordPressed _value,
      $Res Function(SignInWithUsernameAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithUsernameAndPasswordPressed));

  @override
  SignInWithUsernameAndPasswordPressed get _value =>
      super._value as SignInWithUsernameAndPasswordPressed;
}

/// @nodoc

class _$SignInWithUsernameAndPasswordPressed
    implements SignInWithUsernameAndPasswordPressed {
  const _$SignInWithUsernameAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithUsernameAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithUsernameAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithUsernameAndPasswordPressed,
    required TResult Function(BuildContext context) moveToWeatherPage,
  }) {
    return signInWithUsernameAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithUsernameAndPasswordPressed,
    TResult Function(BuildContext context)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (signInWithUsernameAndPasswordPressed != null) {
      return signInWithUsernameAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithUsernameAndPasswordPressed value)
        signInWithUsernameAndPasswordPressed,
    required TResult Function(MoveToWheaterPage value) moveToWeatherPage,
  }) {
    return signInWithUsernameAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithUsernameAndPasswordPressed value)?
        signInWithUsernameAndPasswordPressed,
    TResult Function(MoveToWheaterPage value)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (signInWithUsernameAndPasswordPressed != null) {
      return signInWithUsernameAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithUsernameAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithUsernameAndPasswordPressed() =
      _$SignInWithUsernameAndPasswordPressed;
}

/// @nodoc
abstract class $MoveToWheaterPageCopyWith<$Res> {
  factory $MoveToWheaterPageCopyWith(
          MoveToWheaterPage value, $Res Function(MoveToWheaterPage) then) =
      _$MoveToWheaterPageCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$MoveToWheaterPageCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $MoveToWheaterPageCopyWith<$Res> {
  _$MoveToWheaterPageCopyWithImpl(
      MoveToWheaterPage _value, $Res Function(MoveToWheaterPage) _then)
      : super(_value, (v) => _then(v as MoveToWheaterPage));

  @override
  MoveToWheaterPage get _value => super._value as MoveToWheaterPage;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(MoveToWheaterPage(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$MoveToWheaterPage implements MoveToWheaterPage {
  const _$MoveToWheaterPage(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignInFormEvent.moveToWeatherPage(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoveToWheaterPage &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  $MoveToWheaterPageCopyWith<MoveToWheaterPage> get copyWith =>
      _$MoveToWheaterPageCopyWithImpl<MoveToWheaterPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithUsernameAndPasswordPressed,
    required TResult Function(BuildContext context) moveToWeatherPage,
  }) {
    return moveToWeatherPage(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithUsernameAndPasswordPressed,
    TResult Function(BuildContext context)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (moveToWeatherPage != null) {
      return moveToWeatherPage(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithUsernameAndPasswordPressed value)
        signInWithUsernameAndPasswordPressed,
    required TResult Function(MoveToWheaterPage value) moveToWeatherPage,
  }) {
    return moveToWeatherPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithUsernameAndPasswordPressed value)?
        signInWithUsernameAndPasswordPressed,
    TResult Function(MoveToWheaterPage value)? moveToWeatherPage,
    required TResult orElse(),
  }) {
    if (moveToWeatherPage != null) {
      return moveToWeatherPage(this);
    }
    return orElse();
  }
}

abstract class MoveToWheaterPage implements SignInFormEvent {
  const factory MoveToWheaterPage(BuildContext context) = _$MoveToWheaterPage;

  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveToWheaterPageCopyWith<MoveToWheaterPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required Username username,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      username: username,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.username,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required Username username,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
