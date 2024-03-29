import 'package:flutter/material.dart';
import 'package:finapp/app/app_model.dart';
import 'package:finapp/app/components/app_network.dart';
import 'package:finapp/app/components/secure_storage.dart';
import 'package:provider/provider.dart';

class AuthModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool saveUser = false;
  bool isError = false;

  Future<void> logIn(BuildContext context) async {
    try {
      final response = await AppNetwork.loginUser(email: emailController.text, password: passwordController.text);
      if (response.statusCode == 200) {
        if (saveUser) {
          await AppSecureStorage.putToken(response.data['token']);
          isError = false;
          Navigator.of(context).pushReplacementNamed('/home');
        } else {
          final appModel = Provider.of<AppModel>(context, listen: false);
          appModel.tempToken = response.data['token'];
          Navigator.of(context).pushReplacementNamed('/home');
        }
        notifyListeners();
      } else {
        isError = true;
        print("Undefined error");
        notifyListeners();
      }
    } catch (e) {
      isError = true;
      print(e);
      notifyListeners();
    }
  }
}
