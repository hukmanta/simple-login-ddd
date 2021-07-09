import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_login_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:simple_login_ddd/injection.dart';
import 'package:simple_login_ddd/presentation/sign_in/form_sign_in.dart';

class SignInPage extends StatelessWidget {
  final String title;
  const SignInPage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: BlocProvider(
        create: (context) => getIt<SignInFromBloc>(),
        child: FormSignIn(),
      ),
    );
  }
}
