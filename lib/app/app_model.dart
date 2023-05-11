import 'package:flutter/material.dart';

import 'package:finapp/app/components/app_navigator.dart';
import 'package:finapp/app/components/secure_storage.dart';

class AppModel extends ChangeNotifier {
  bool isLoggedIn = false;
  String? initialRoute;
  String? tempToken;
  Future<void> initApp() async {
    isLoggedIn = await AppSecureStorage.checkToken();
    initialRoute = AppNavigator.getInitialRoute(isLoggedIn);
  }
}
