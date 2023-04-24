import 'package:finapp/app/components/app_network.dart';
import 'package:flutter/material.dart';

class RegisterModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  Future<void> setDate(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    String? dateOfBirth =
        date != null ? "${date.year}-${date.month}-${date.day}" : "";
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
        date: dateController.text,
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
