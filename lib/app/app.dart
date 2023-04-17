import 'package:flutter/material.dart';

import 'pages/registration_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finapp',
      // theme: AppTheme.apptheme(),
      routes: {
        '/registration': (context) => RegistrationPage(),
      },
      initialRoute: '/registration',
    );
  }
}
