import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_login_ddd/config.dart';
import 'package:simple_login_ddd/domain/core/weather_response.dart';
import 'package:simple_login_ddd/domain/weather/i_weather_facade.dart';
import 'package:simple_login_ddd/domain/weather/weather_failure.dart';
import 'package:http/http.dart' as http;
import 'package:simple_login_ddd/injection.dart';

@LazySingleton(as: IWeatherFacade)
class WeatherFacade implements IWeatherFacade{
  @override
  Future<Either<WeatherFailure, WeatherResponse>> getWeatherInfo({required String city}) async {
    final Config config = getIt<Config>();
    try{
    final Uri url = Uri.parse('${config.homeURL}/weather/?q=$city&appid=${config.apiKey}');
    final response = await http.get(url);
    return right(WeatherResponse.fromJson(json.decode(response.body)));
    } catch (e){
      return left(const WeatherFailure.internalServerError());
    }
  }
  
}