import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_login_ddd/domain/core/weather_response.dart';

@immutable
class WeatherPage extends StatelessWidget {
  final WeatherResponse data;

  const WeatherPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Weather info for ${data.name}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text('condition: ${data.weather[0].description}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text('temp: ${data.main.temp}',style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text('feels like: ${data.main.feelsLike}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('humidity: ${data.main.humidity}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Wind Speed: ${data.wind.speed}',style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Wind Degree: ${data.wind.deg}',style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      )
    );
  }
}
