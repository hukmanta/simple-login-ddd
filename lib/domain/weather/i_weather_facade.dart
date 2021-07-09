import 'package:dartz/dartz.dart';
import 'package:simple_login_ddd/domain/core/weather_response.dart';
import 'package:simple_login_ddd/domain/weather/weather_failure.dart';

abstract class IWeatherFacade {
  Future<Either<WeatherFailure,WeatherResponse>> getWeatherInfo({required String city});
}