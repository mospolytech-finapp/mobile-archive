import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:finapp/app/app.dart';
import 'package:finapp/app/pages/loginpage/loginpage_model.dart';
import 'package:finapp/app/pages/registrationpage/registerpage_model.dart';

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
      child: const App(),
    ),
  );
}
