import 'package:finapp/app/models/loginpage_model.dart';
import 'package:finapp/app/models/registerpage_model.dart';
import 'package:flutter/material.dart';
import 'package:finapp/app/app.dart';
import 'package:provider/provider.dart';

void main() {
  Paint.enableDithering = true;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegisterModel(),
        ),
      ],
      child: const MaterialApp(
        home: App(),
      ),
    ),
  );
}
