// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/core/weather_response.dart' as _i6;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;
import '../weather/weather_page.dart' as _i5;

class AppRoute extends _i1.RootStackRouter {
  AppRoute([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignInPageRouteArgs>();
          return _i4.SignInPage(key: args.key, title: args.title);
        }),
    WeatherPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WeatherPageRouteArgs>();
          return _i5.WeatherPage(args.data);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(WeatherPageRoute.name, path: '/weather-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo<SignInPageRouteArgs> {
  SignInPageRoute({_i2.Key? key, required String title})
      : super(name,
            path: '/sign-in-page',
            args: SignInPageRouteArgs(key: key, title: title));

  static const String name = 'SignInPageRoute';
}

class SignInPageRouteArgs {
  const SignInPageRouteArgs({this.key, required this.title});

  final _i2.Key? key;

  final String title;
}

class WeatherPageRoute extends _i1.PageRouteInfo<WeatherPageRouteArgs> {
  WeatherPageRoute({required _i6.WeatherResponse data})
      : super(name,
            path: '/weather-page', args: WeatherPageRouteArgs(data: data));

  static const String name = 'WeatherPageRoute';
}

class WeatherPageRouteArgs {
  const WeatherPageRouteArgs({required this.data});

  final _i6.WeatherResponse data;
}
