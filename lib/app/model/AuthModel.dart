import 'package:finapp/app/components/app_network.dart';
import 'package:flutter/foundation.dart';

class AuthModel extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> logIn(String email, String password) async {
    try {
      final response =
          await AppNetwork.loginUser(email: email, password: password);
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

  Future<void> registerUser({
    required String email,
    required String password,
    required String lastName,
    required String firstName,
    String? middleName,
    DateTime? date,
  }) async {
    try {
      final response = await AppNetwork.registerUser(
        email: email,
        password: password,
        lastName: lastName,
        firstName: firstName,
        middleName: middleName,
        date: date,
      );
      if (response.statusCode == 201) {
        // Registration successful
        // You can perform additional actions here if needed, e.g. navigate to another screen
      } else {
        print("Undefined error");
      }
    } catch (e) {
      print(e);
    }
  }
}
