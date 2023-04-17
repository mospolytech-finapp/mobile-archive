import 'package:flutter/material.dart';
import 'package:finapp/app/login/loginpage_page.dart';

abstract class AppNavigator {
  static Map<String, WidgetBuilder> getRoutes() {
    // Заглушки для экранов
    return {
      // '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      // '/login/register': (context) => RegistrationPage(),
    };
  }

  static bool isLoggedIn() {
    return false;
  }

  static String getInitialRoute() {
    if (isLoggedIn()) {
      return '/home';
    }
    return '/login';
  }
}
