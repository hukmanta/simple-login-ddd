// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  DoNothing doNothing() {
    return const DoNothing();
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doNothing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doNothing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoNothing value) doNothing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoNothing value)? doNothing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class $DoNothingCopyWith<$Res> {
  factory $DoNothingCopyWith(DoNothing value, $Res Function(DoNothing) then) =
      _$DoNothingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoNothingCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements $DoNothingCopyWith<$Res> {
  _$DoNothingCopyWithImpl(DoNothing _value, $Res Function(DoNothing) _then)
      : super(_value, (v) => _then(v as DoNothing));

  @override
  DoNothing get _value => super._value as DoNothing;
}

/// @nodoc

class _$DoNothing implements DoNothing {
  const _$DoNothing();

  @override
  String toString() {
    return 'WeatherEvent.doNothing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DoNothing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doNothing,
  }) {
    return doNothing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doNothing,
    required TResult orElse(),
  }) {
    if (doNothing != null) {
      return doNothing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoNothing value) doNothing,
  }) {
    return doNothing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoNothing value)? doNothing,
    required TResult orElse(),
  }) {
    if (doNothing != null) {
      return doNothing(this);
    }
    return orElse();
  }
}

abstract class DoNothing implements WeatherEvent {
  const factory DoNothing() = _$DoNothing;
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {required String name,
      required String description,
      required int temp,
      required int feelsLike,
      required int humidity,
      required int windSpeed,
      required int windDegree}) {
    return _WeatherState(
      name: name,
      description: description,
      temp: temp,
      feelsLike: feelsLike,
      humidity: humidity,
      windSpeed: windSpeed,
      windDegree: windDegree,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get temp => throw _privateConstructorUsedError;
  int get feelsLike => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get windSpeed => throw _privateConstructorUsedError;
  int get windDegree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      int temp,
      int feelsLike,
      int humidity,
      int windSpeed,
      int windDegree});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      int temp,
      int feelsLike,
      int humidity,
      int windSpeed,
      int windDegree});
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
  }) {
    return _then(_WeatherState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.name,
      required this.description,
      required this.temp,
      required this.feelsLike,
      required this.humidity,
      required this.windSpeed,
      required this.windDegree});

  @override
  final String name;
  @override
  final String description;
  @override
  final int temp;
  @override
  final int feelsLike;
  @override
  final int humidity;
  @override
  final int windSpeed;
  @override
  final int windDegree;

  @override
  String toString() {
    return 'WeatherState(name: $name, description: $description, temp: $temp, feelsLike: $feelsLike, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.feelsLike, feelsLike) ||
                const DeepCollectionEquality()
                    .equals(other.feelsLike, feelsLike)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.windSpeed, windSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.windSpeed, windSpeed)) &&
            (identical(other.windDegree, windDegree) ||
                const DeepCollectionEquality()
                    .equals(other.windDegree, windDegree)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(feelsLike) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(windSpeed) ^
      const DeepCollectionEquality().hash(windDegree);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required String name,
      required String description,
      required int temp,
      required int feelsLike,
      required int humidity,
      required int windSpeed,
      required int windDegree}) = _$_WeatherState;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get temp => throw _privateConstructorUsedError;
  @override
  int get feelsLike => throw _privateConstructorUsedError;
  @override
  int get humidity => throw _privateConstructorUsedError;
  @override
  int get windSpeed => throw _privateConstructorUsedError;
  @override
  int get windDegree => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
