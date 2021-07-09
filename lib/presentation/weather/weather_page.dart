import 'package:flutter/material.dart';
import 'package:simple_login_ddd/domain/core/weather_response.dart';

@immutable
class WeatherPage extends StatelessWidget {
  final WeatherResponse data;

  const WeatherPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
        children: <Widget>[
          Text('Weather info for ${data.name}'),
          Text('condition: ${data.weather[0].description}'),
          Text('temp: ${data.main.temp}'),
          Text('feels like: ${data.main.feelsLike}'),
          Text('humidity: ${data.main.humidity}'),
          Text('Wind Speed: ${data.wind.speed}'),
          Text('Wind Degree: ${data.wind.deg}'),
        ],
      )
    );
  }
}
