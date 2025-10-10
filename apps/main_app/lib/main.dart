import 'package:core/core.dart' as core;
import 'package:flutter/material.dart';
import 'package:main_app/app.dart';
import 'package:main_app/core/di/di.dart' as main_app;

void main() {
  main_app.configDependencies();
  core.configureDependencies();
  runApp(const App());
}
