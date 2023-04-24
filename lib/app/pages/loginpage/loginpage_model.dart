import 'package:flutter/cupertino.dart';

import 'package:finapp/app/components/app_network.dart';
import 'package:finapp/app/components/secure_storage.dart';

class AuthModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool saveUser = false;

  Future<void> logIn() async {
    try {
      final response = await AppNetwork.loginUser(email: emailController.text, password: passwordController.text);
      if (response.statusCode == 200) {
        if (saveUser) {
          await AppSecureStorage.putToken(response.data['token']);
        }
        notifyListeners();
      } else {
        print("Undefined error");
      }
    } catch (e) {
      print(e);
    }
  }
}
