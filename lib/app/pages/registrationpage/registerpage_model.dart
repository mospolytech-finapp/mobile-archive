import 'dart:ffi';

import 'package:finapp/app/components/app_network.dart';
import 'package:flutter/cupertino.dart';

class RegisterModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  Future<void> registerUser(BuildContext context) async {
    try {
      final response = await AppNetwork.registerUser(
        email: emailController.text,
        password: passwordController.text,
        lastName: lastNameController.text,
        firstName: firstNameController.text,
        middleName: middleNameController.text,
        date: dateController, // Исправить на календарь
      );
      if (response.statusCode == 201) {
      } else {
        print("Undefined error");
      }
    } catch (e) {
      print(e);
    }
  }
}
