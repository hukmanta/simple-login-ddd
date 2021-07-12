import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_login_ddd/application/Weather/weather_bloc.dart';

void main() {
  late WeatherBloc _weatherBloc;

  //DO: setUp
  setUp(() {
    _weatherBloc = WeatherBloc();
  });

  //DO: tearDown
  tearDown(() {
    _weatherBloc.close();
  });

  //DO: test Do Nothing Event
  blocTest(
      'test Do Nothing Event',
      build: () => _weatherBloc,
      act: (WeatherBloc bloc) => bloc.add(const WeatherEvent.doNothing()),
      );




}
