import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_login_ddd/app_widget.dart';
import 'package:simple_login_ddd/injection.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(const AppWidget());
}