class WeatherResponse {
  late Coord _coord;
  late List<Weather> _weather;
  late String _base;
  late Main _main;
  late int _visibility;
  late Wind _wind;
  late Clouds _clouds;
  late int _dt;
  late Sys _sys;
  late int _timezone;
  late int _id;
  late String _name;
  late int _cod;

  Coord get coord => _coord;
  List<Weather> get weather => _weather;
  String get base => _base;
  Main get main => _main;
  int get visibility => _visibility;
  Wind get wind => _wind;
  Clouds get clouds => _clouds;
  int get dt => _dt;
  Sys get sys => _sys;
  int get timezone => _timezone;
  int get id => _id;
  String get name => _name;
  int get cod => _cod;

  WeatherResponse({
      required Coord coord,
      required List<Weather> weather,
      required String base,
      required Main main,
      required int visibility,
      required Wind wind,
      required Clouds clouds,
      required int dt,
      required Sys sys,
      required int timezone,
      required int id,
      required String name,
      required int cod}){
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    _clouds = clouds;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
}

  WeatherResponse.fromJson(dynamic json) {
    _coord = json["coord"] != null ? Coord.fromJson(json["coord"]) : Coord();
    if (json["weather"] != null) {
      _weather = [];
      json["weather"].forEach((v) {
        _weather.add(Weather.fromJson(v));
      });
    }
    _base = json["base"] != null ? json["base"]as String :'-';
    _main = json["main"] != null ? Main.fromJson(json["main"]) : Main();
    _visibility = json["visibility"] != null ? json["visibility"] as int : 0 ;
    _wind = json["wind"] != null ? Wind.fromJson(json["wind"]) : Wind();
    _clouds = json["clouds"] != null ? Clouds.fromJson(json["clouds"]) : Clouds();
    _dt = json["dt"] != null ? json["dt"] as int : 0;
    _sys = json["sys"] != null ? Sys.fromJson(json["sys"]) : Sys();
    _timezone = json["timezone"] != null ? json["timezone"] as int: 0;
    _id = json["id"] as int;
    _name = json["name"] as String;
    _cod = json["cod"] as int;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["coord"] = _coord.toJson();
    map["weather"] = _weather.map((v) => v.toJson()).toList();
    map["base"] = _base;
    map["main"] = _main.toJson();
    map["visibility"] = _visibility;
    map["wind"] = _wind.toJson();
    map["clouds"] = _clouds.toJson();
    map["dt"] = _dt;
    map["sys"] = _sys.toJson();
    map["timezone"] = _timezone;
    map["id"] = _id;
    map["name"] = _name;
    map["cod"] = _cod;
    return map;
  }

}

class Sys {
  late int _type;
  late int _id;
  late String _country;
  late int _sunrise;
  late int _sunset;

  int get type => _type;
  int get id => _id;
  String get country => _country;
  int get sunrise => _sunrise;
  int get sunset => _sunset;

  Sys({
      int type=0,
      int id=0,
      String country='',
      int sunrise=0,
      int sunset=0}){
    _type = type;
    _id = id;
    _country = country;
    _sunrise = sunrise;
    _sunset = sunset;
}

  Sys.fromJson(dynamic json) {
    _type = json["type"] as int;
    _id = json["id"] as int;
    _country = json["country"] as String;
    _sunrise = json["sunrise"] as int;
    _sunset = json["sunset"] as int;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["type"] = _type;
    map["id"] = _id;
    map["country"] = _country;
    map["sunrise"] = _sunrise;
    map["sunset"] = _sunset;
    return map;
  }

}

class Clouds {
  late int _all;

  int get all => _all;

  Clouds({
      int all=0}){
    _all = all;
}

  Clouds.fromJson(dynamic json) {
    _all = json["all"] as int;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["all"] = _all;
    return map;
  }

}

class Wind {
  late double _speed;
  late int _deg;

  double get speed => _speed;
  int get deg => _deg;

  Wind({
      double speed=0.0,
      int deg=0}){
    _speed = speed;
    _deg = deg;
}

  Wind.fromJson(dynamic json) {
    _speed = json["speed"] as double;
    _deg = json["deg"] as int;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["speed"] = _speed;
    map["deg"] = _deg;
    return map;
  }

}

class Main {
  late double _temp;
  late double _feelsLike;
  late double _tempMin;
  late double _tempMax;
  late int _pressure;
  late int _humidity;

  double get temp => _temp;
  double get feelsLike => _feelsLike;
  double get tempMin => _tempMin;
  double get tempMax => _tempMax;
  int get pressure => _pressure;
  int get humidity => _humidity;

  Main({
      double temp=0.0,
      double feelsLike=0.0,
      double tempMin=0.0,
      double tempMax=0.0,
      int pressure=0,
      int humidity=0}){
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _humidity = humidity;
}

  Main.fromJson(dynamic json) {
    _temp = json["temp"] as double;
    _feelsLike = json["feels_like"] as double;
    _tempMin = json["temp_min"] as double;
    _tempMax = json["temp_max"] as double;
    _pressure = json["pressure"] as int;
    _humidity = json["humidity"] as int;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["temp"] = _temp;
    map["feels_like"] = _feelsLike;
    map["temp_min"] = _tempMin;
    map["temp_max"] = _tempMax;
    map["pressure"] = _pressure;
    map["humidity"] = _humidity;
    return map;
  }

}

class Weather {
  late int _id;
  late String _main;
  late String _description;
  late String _icon;

  int get id => _id;
  String get main => _main;
  String get description => _description;
  String get icon => _icon;

  Weather({
      int id=0,
      String main='',
      String description='',
      String icon=''}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  Weather.fromJson(dynamic json) {
    _id = json["id"] as int;
    _main = json["main"] as String;
    _description = json["description"] as String;
    _icon = json["icon"] as String;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["id"] = _id;
    map["main"] = _main;
    map["description"] = _description;
    map["icon"] = _icon;
    return map;
  }

}

class Coord {
  late double _lon;
  late double _lat;

  double get lon => _lon;
  double get lat => _lat;

  Coord({
      double lon=0,
      double lat=0}){
    _lon = lon;
    _lat = lat;
}

  Coord.fromJson(dynamic json) {
    _lon = json["lon"] as double;
    _lat = json["lat"] as double;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["lon"] = _lon;
    map["lat"] = _lat;
    return map;
  }

}