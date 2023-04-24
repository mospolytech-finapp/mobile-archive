// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:finapp/app/components/app_network.dart';

class RegisterModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? date;

  void setDate() {
    String? dateOfBirth = date != null ? "${date?.year}-${date?.month}-${date?.day}" : "";
    dateController.text = dateOfBirth;
    notifyListeners();
  }

  Future<void> registerUser(BuildContext context) async {
    try {
      final response = await AppNetwork.registerUser(
        email: emailController.text,
        password: passwordController.text,
        lastName: lastNameController.text,
        firstName: firstNameController.text,
        middleName: middleNameController.text,
        date: dateController.text, // Исправить на календарь
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
