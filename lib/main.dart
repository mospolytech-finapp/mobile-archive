import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finapp/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const App());
}
