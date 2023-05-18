// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:finapp/app/app_model.dart';
import 'package:finapp/app/components/app_network.dart';
import 'package:finapp/app/components/models/category.dart';
import 'package:finapp/app/components/models/transaction.dart';
import 'package:finapp/app/components/secure_storage.dart';

class Transactions_model extends ChangeNotifier {
  late AppModel appModel;
  List<Transaction>? _transactions;
  List<Transaction>? get transactions {
    var sortedTransactions = _transactions?.toList();
    sortedTransactions?.sort((a, b) => a.date.compareTo(b.date));
    return sortedTransactions?.reversed.toList() ?? [];
  }

  Map<int, String>? categories;
  List<int>? categoryIds;
  bool isLoading = false;
  bool isError = false;

//add item
  int? transactionTypeValue;
  int? transactionCategoryValue;
  DateTime? date;
  TimeOfDay? time;

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Future<void> setDate(BuildContext context) async {
    date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    String? dateText = date != null ? "${date?.day}.${date?.month}.${date?.year}" : "";
    dateController.text = dateText;
    notifyListeners();
  }

  Future<void> setTime(BuildContext context) async {
    time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    String? timeText = time != null ? "${time?.hour}:${time?.minute}" : "";
    timeController.text = timeText;
    notifyListeners();
  }

  void init(BuildContext context) {
    appModel = Provider.of<AppModel>(context, listen: true);
  }

  Future<void> onSaveTransactionClick(BuildContext context) async {
    if (nameController.text.isEmpty || amountController.text.isEmpty || date == null || timeController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Заполните все поля"),
          duration: const Duration(seconds: 2),
        ),
      );
      return;
    }
    final amount = double.parse(amountController.text).abs();
    final amountValue = transactionTypeValue == 0 ? amount : -amount;

    final flag = await addTransaction(
      title: nameController.text,
      amount: amountValue,
      date: date!,
      time: timeController.text,
      description: descriptionController.text,
      category: categoryIds![transactionCategoryValue!],
    );
    if (flag) {
      Navigator.pop(context);
    } else {
      if (!context.mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Ошибка при добавлении транзакции"),
          duration: const Duration(seconds: 2),
        ),
      );
    }
    notifyListeners();
  }

//add item
  Future<void> loadTransactions() async {
    isLoading = true;

    try {
      String? token;
      if (appModel.tempToken != null) {
        token = appModel.tempToken;
      } else {
        token = await AppSecureStorage.getToken();
      }
      if (token != null) {
        final response = await AppNetwork.getTransactions(token: token);
        if (response.statusCode == 200) {
          print(response.data);
          _transactions = (response.data as List).map((json) => Transaction.fromJson(json)).toList();
          print("loadTransactions() вызван");
          isError = false;
        } else {
          isError = true;
          print("Error loading transactions");
        }
      } else {
        isError = true;
        print("No token found");
      }
    } catch (e) {
      isError = true;
      print(e);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> addTransaction({
    required String title,
    required double amount,
    required DateTime date,
    String? time,
    String? description,
    required int category,
  }) async {
    String? token;
    if (appModel.tempToken != null) {
      token = appModel.tempToken;
    } else {
      token = await AppSecureStorage.getToken();
    }

    if (token != null) {
      try {
        final response = await AppNetwork.addTransaction(
          token: token,
          title: title,
          amount: amount,
          date: date.toIso8601String().split('T').first,
          time: time,
          description: description,
          category: category,
        );
        if (response.statusCode == 201) {
          loadTransactions();
          return true;
        } else {
          return false;
        }
      } catch (e) {
        print(e);
        return false;
      }
    }
    return false;
  }

  Future<void> editTransaction({
    required int id,
    int? category,
    String? title,
    DateTime? date,
    double? amount,
    String? description,
    String? time,
  }) async {
    String? token;
    if (appModel.tempToken != null) {
      token = appModel.tempToken;
    } else {
      token = await AppSecureStorage.getToken();
    }
    if (token != null) {
      final response = await AppNetwork.editTransaction(
        token: token,
        id: id,
        category: category,
        title: title,
        date: date != null ? date.toIso8601String().split('T')[0] : null,
        amount: amount,
        description: description,
        time: time,
      );
      if (response.statusCode == 200) {
        loadTransactions(); // Reload transactions after one has been edited
      } else {
        print("Error editing transaction");
      }
    } else {
      print("No token found");
    }
  }

  Future<void> deleteTransaction(int id) async {
    String? token;
    if (appModel.tempToken != null) {
      token = appModel.tempToken;
    } else {
      token = await AppSecureStorage.getToken();
    }
    if (token != null) {
      final response = await AppNetwork.deleteTransaction(token: token, id: id);
      if (response.statusCode == 204) {
        loadTransactions(); // Reload transactions after one has been deleted
      } else {
        print("Error deleting transaction");
      }
    } else {
      print("No token found");
    }
  }

  Future<void> loadCategories() async {
    isLoading = true;

    try {
      String? token;
      if (appModel.tempToken != null) {
        token = appModel.tempToken;
      } else {
        token = await AppSecureStorage.getToken();
      }
      if (token != null) {
        final response = await AppNetwork.getCategory(token: token);
        if (response.statusCode == 200) {
          categories = Map.fromIterable(
            (response.data as List).map((json) => Category.fromJson(json)),
            key: (category) => category.id,
            value: (category) => category.name,
          );
          print("loadCategories() вызван");
          print(token);
          categoryIds = categories?.keys.toList();
        } else {
          isError = true;
          print("Error loading categories");
        }
      } else {
        isError = true;
        print("No token found");
      }
    } catch (e) {
      isError = true;
      print(e);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
