// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i9;
import 'config.dart' as _i4;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/weather/i_weather_facade.dart' as _i7;
import 'infrastructure/auth/sign_in_facade.dart' as _i6;
import 'infrastructure/weather/weather_facade.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.lazySingleton<_i4.Config>(() => _i4.Config());
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.SignInFacade());
  gh.lazySingleton<_i7.IWeatherFacade>(() => _i8.WeatherFacade());
  gh.factory<_i9.SignInFromBloc>(
      () => _i9.SignInFromBloc(get<_i5.IAuthFacade>()));
  return get;
}
