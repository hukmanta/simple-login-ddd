import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_login_ddd/application/auth/auth_bloc.dart';
import 'package:simple_login_ddd/presentation/routes/app_route.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>( listener: (context, state)
    {
      state.map(initial: (_){
        print('initial state');
      },
          authenticated: (_){
            // ignore: avoid_print
            print('user 1 authenticated');},
          unauthenticated: (_){
            print('unauthenticated');
            AutoRouter.of(context).replace(SignInPageRoute(title: 'Sign In Demo'));
          });
    },
      child: const Scaffold(body:
      Center(child:
      CircularProgressIndicator(),),),
    );
  }

}
