import 'package:finapp/app/components/app_network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AuthModel extends ChangeNotifier {
  bool _isLoggedIn = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool get isLoggedIn => _isLoggedIn;

  Future<void> logIn() async {
    try {
      final response = await AppNetwork.loginUser(email: emailController.text, password: passwordController.text);
      if (response.statusCode == 200) {
        _isLoggedIn = true;
        notifyListeners();
      } else {
        print("Undefined error");
      }
    } catch (e) {
      print(e);
    }
  }

  void logOut() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
