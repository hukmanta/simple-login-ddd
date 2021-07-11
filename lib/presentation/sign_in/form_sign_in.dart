import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_login_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:simple_login_ddd/presentation/routes/app_route.gr.dart';

class FormSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFromBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          // ignore: deprecated_member_use
          autovalidate: state.showErrorMessages,
          child: ListView(
            children: [
              const Text(
                'Please Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 100),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Username',
                ),
                autocorrect: false,
                onChanged: (value) => BlocProvider.of<SignInFromBloc>(context)
                    .add(SignInFormEvent.usernameChanged(value)),
                validator: (_) => BlocProvider.of<SignInFromBloc>(context)
                    .state
                    .username
                    .value
                    .fold(
                        (l) => l.maybeMap(
                            invalidUsername: (_) => 'Username not Found',
                            orElse: () => null),
                        (r) => null),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => BlocProvider.of<SignInFromBloc>(context)
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) => BlocProvider.of<SignInFromBloc>(context)
                    .state
                    .password
                    .value
                    .fold(
                        (l) => l.maybeMap(
                            invalidPassword: (_) => 'Wrong Password',
                            orElse: () => null),
                        (r) => null),
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {
                  BlocProvider.of<SignInFromBloc>(context).add(
                    const SignInFormEvent
                        .signInWithUsernameAndPasswordPressed(),
                  );
                },
                child: const Text('SIGN IN'),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                  message: failure.map(
                      invalidUsernameAndPasswordCombination: (_) =>
                          'Username dan Password salah')).show(context);
            },
              (_)=>navigateToWeatherPage(context),
          ),
        );
        state.weatherFailureOrResponseOption.fold(
          () {},
          (either) => either.fold(
            (weatherFailure) => FlushbarHelper.createError(
                message: weatherFailure.map(
                    noConnection: (_) => 'Tidak ada koneksi Internet',
                    internalServerError: (_) =>
                        'Kesalahan dalam sisi Server: ${weatherFailure.toString()}',
                    userRequestError: (_) => 'Kesalahan dalam sisi request',
                    jsonParsingError: (_) =>
                        'Kesalahan parsing response API')).show(context),
            (weatherResponse) {
              AutoRouter.of(context)
                  .replace(WeatherPageRoute(data: weatherResponse));
            },
          ),
        );
      },
    );
  }

  void navigateToWeatherPage(BuildContext context){
    FlushbarHelper.createLoading(
        message: 'mempersiapkan data',
        linearProgressIndicator: const LinearProgressIndicator());
    BlocProvider.of<SignInFromBloc>(context)
        .add(SignInFormEvent.moveToWeatherPage(context));
  }
}
