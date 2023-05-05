import 'package:finapp/app/components/date_transaction_model.dart';
import 'package:finapp/app/components/transaction.model.dart';
import 'package:flutter/material.dart';

import 'package:finapp/app/components/app_network.dart';
import 'package:finapp/app/components/secure_storage.dart';

class HomepageModel extends ChangeNotifier {

  bool isLoading = false;
  bool isError = false;
  String? userInfo;
  double? balance;
  List<Transaction>? transactions;
  List<DateWithTransactions>? groupedTransactions;

  HomepageModel() {
    loadUserInfo();
    loadTransactions(); // Возможно это не тут надо реализовывать
  }

  Future<void> loadUserInfo() async {
    isLoading = true;
    notifyListeners();

    try {
      String? token = await AppSecureStorage.getToken();
      if (token != null) {
        final response = await AppNetwork.getUserInfo(token: token);
        if (response.statusCode == 200) {
          userInfo = response.data['user_info'];
          balance = response.data['balance'];
          //
          isError = false;
        } else {
          isError = true;
          print("Undefined error");
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
    required String type,
    required String category,
    required String title,
    required DateTime date,
    required String time,
    required double amount,
    required String description,
  }) async {
    isLoading = true;
    notifyListeners();

    try {
      String? token = await AppSecureStorage.getToken();
      if (token != null) {
        final response = await AppNetwork.addTransaction(
          token: token,
          type: type,
          category: category,
          title: title,
          date: date,
          time: time,
          amount: amount,
          description: description,
        );
        if (response.statusCode == 200) {
          //
          notifyListeners();
          isError = false;
        } else {
          isError = true;
          print("Undefined error");
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

  Future<void> loadTransactions() async {
    isLoading = true;
    notifyListeners();

    try {
      String? token = await AppSecureStorage.getToken();
      if (token != null) {
        transactions = (await AppNetwork.getTransactions(token: token)) as List<Transaction>?; // убрать принудительный каст когда бужет сделана getTransactions
        isError = false;
      } else {
        isError = true;
        print("No token found");
      }
    } catch (e) {
      isError = true;
      print(e);
    } finally {
      isLoading = false;
      _groupTransactionsByDate();
      notifyListeners();
    }
  }



  void _groupTransactionsByDate() {
    if (transactions != null) {
      Map<String, List<Transaction>> groupedMap = {};

      for (Transaction transaction in transactions!) {
        String date = transaction.date.toIso8601String().split('T')[0];

        if (groupedMap.containsKey(date)) {
          groupedMap[date]!.add(transaction);
        } else {
          groupedMap[date] = [transaction];
        }
      }

      groupedTransactions = groupedMap.entries
          .map((entry) => DateWithTransactions(
        date: DateTime.parse(entry.key),
        transactions: entry.value,
      ))
          .toList();
    } else {
      groupedTransactions = null;
    }
  }

  Future<void> deleteTransaction(String transactionId) async {
    isLoading = true;
    notifyListeners();

    try {
      String? token = await AppSecureStorage.getToken();
      if (token != null) {
        final response = await AppNetwork.deleteTransaction(token: token, transactionId: transactionId);
        if (response.statusCode == 200) {
          transactions = transactions?.where((transaction) => transaction.id != transactionId).toList();
          isError = false;
        } else {
          isError = true;
          print("Undefined error");
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

