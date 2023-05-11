import 'package:flutter/material.dart';

import 'package:finapp/app/pages/auth/loginpage/loginpage.dart';
import 'package:finapp/app/pages/auth/registrationpage/registrationpage.dart';
import 'package:finapp/app/pages/homepage/homepage.dart';

abstract class AppNavigator {
  static Map<String, WidgetBuilder> getRoutes() {
    // Заглушки для экранов
    return {
      '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/login/register': (context) => RegistrationPage(),
    };
  }

  static String getInitialRoute(bool isLoggedIn) {
    if (isLoggedIn) {
      return '/home';
    }
    return '/login';
  }
}
