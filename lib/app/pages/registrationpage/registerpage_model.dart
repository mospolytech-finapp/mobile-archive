import 'package:finapp/app/components/app_network.dart';
import 'package:flutter/material.dart';

class RegisterModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  DateTime? date;
  Future<void> setDate(BuildContext context) async {
    date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    String? dateOfBirth =
        date != null ? "${date?.day}.${date?.month}.${date?.year}" : "";
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
        date: date,
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
