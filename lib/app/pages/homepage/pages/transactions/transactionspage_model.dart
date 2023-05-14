import 'package:finapp/app/components/models/category.dart';
import 'package:flutter/material.dart';

import 'package:finapp/app/components/app_network.dart';
import 'package:finapp/app/components/models/transaction.dart';
import 'package:finapp/app/components/secure_storage.dart';

class Transactions_model extends ChangeNotifier {
  List<Transaction>? transactions;
  List<Category>? categories;
  bool isLoading = false;
  bool isError = false;

  Future<void> loadTransactions() async {
    isLoading = true;

    try {
      String? token = await AppSecureStorage.getToken();
      if (token != null) {
        final response = await AppNetwork.getTransactions(token: token);
        if (response.statusCode == 200) {
          print(response.data);
          transactions = (response.data as List).map((json) => Transaction.fromJson(json)).toList();
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

  Future<void> addTransaction({
    required String title,
    required double amount,
    required DateTime date,
    String? time,
    String? description,
    required int category,
  }) async {
    String? token = await AppSecureStorage.getToken();
    if (token != null) {
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
        loadTransactions(); // Reload transactions after a new one has been added
      } else {
        print("Error adding transaction");
      }
    } else {
      print("No token found");
    }
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
    String? token = await AppSecureStorage.getToken();
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
    String? token = await AppSecureStorage.getToken();
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
      String? token = await AppSecureStorage.getToken();
      if (token != null) {
        final response = await AppNetwork.getCategory(token: token);
        if (response.statusCode == 200) {
          categories = (response.data as List).map((json) => Category.fromJson(json)).toList();
          print("loadCategories() вызван");
          print(token);
          isError = false;
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
