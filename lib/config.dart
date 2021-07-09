import 'package:injectable/injectable.dart';

@LazySingleton()
class Config{
  final String _homeURL = 'https://api.openweathermap.org/data/2.5/';
  final String _apiKey = '17de6bd855acf0db4fa430ec53a5d038';

  String get homeURL => _homeURL;
  String get apiKey => _apiKey;
}