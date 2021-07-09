import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_login_ddd/application/auth/auth_bloc.dart';
import 'package:simple_login_ddd/injection.dart';
import 'package:simple_login_ddd/presentation/routes/app_route.gr.dart';

class AppWidget extends StatefulWidget {

  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _routes = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>
        getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested(),),),
      ],
      child: MaterialApp.router(
        title: 'Sign In Demo',
          theme: ThemeData.light().copyWith(
        primaryColor: Colors.green[800],
        accentColor: Colors.blueAccent,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ), routerDelegate: _routes.delegate(initialRoutes: [const SplashPageRoute()]),
      routeInformationParser: _routes.defaultRouteParser(),),
    );
  }
}
