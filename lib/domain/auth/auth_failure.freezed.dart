// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  InvalidUsernameAndPasswordCombination
      invalidUsernameAndPasswordCombination() {
    return const InvalidUsernameAndPasswordCombination();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidUsernameAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidUsernameAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $InvalidUsernameAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidUsernameAndPasswordCombinationCopyWith(
          InvalidUsernameAndPasswordCombination value,
          $Res Function(InvalidUsernameAndPasswordCombination) then) =
      _$InvalidUsernameAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidUsernameAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidUsernameAndPasswordCombinationCopyWith<$Res> {
  _$InvalidUsernameAndPasswordCombinationCopyWithImpl(
      InvalidUsernameAndPasswordCombination _value,
      $Res Function(InvalidUsernameAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidUsernameAndPasswordCombination));

  @override
  InvalidUsernameAndPasswordCombination get _value =>
      super._value as InvalidUsernameAndPasswordCombination;
}

/// @nodoc

class _$InvalidUsernameAndPasswordCombination
    implements InvalidUsernameAndPasswordCombination {
  const _$InvalidUsernameAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidUsernameAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsernameAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidUsernameAndPasswordCombination,
  }) {
    return invalidUsernameAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidUsernameAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidUsernameAndPasswordCombination != null) {
      return invalidUsernameAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUsernameAndPasswordCombination value)
        invalidUsernameAndPasswordCombination,
  }) {
    return invalidUsernameAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUsernameAndPasswordCombination value)?
        invalidUsernameAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidUsernameAndPasswordCombination != null) {
      return invalidUsernameAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidUsernameAndPasswordCombination implements AuthFailure {
  const factory InvalidUsernameAndPasswordCombination() =
      _$InvalidUsernameAndPasswordCombination;
}
