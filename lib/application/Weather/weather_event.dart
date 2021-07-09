part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent{
  const factory WeatherEvent.doNothing() = DoNothing;
}
