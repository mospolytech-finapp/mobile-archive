import 'package:flutter/material.dart';
import 'package:finapp/app/pages/loginpage/loginpage_page.dart';
import 'package:finapp/app/pages/registrationpage/registrationpage_page.dart';
import 'package:finapp/app/pages/homepage/homepage_page.dart';

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
    return '/home';
  }
}
