part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState(
      {required String name,
      required String description,
      required int temp,
      required int feelsLike,
      required int humidity,
      required int windSpeed,
      required int windDegree}) = _WeatherState;

  factory WeatherState.initial() => const WeatherState(
        name: 'null',
        description: 'null',
        temp: 0,
        feelsLike: 0,
        humidity: 0,
        windSpeed: 0,
        windDegree: 0,
      );
}
