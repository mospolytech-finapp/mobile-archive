import 'package:flutter/material.dart';

import 'package:finapp/app/components/app_network.dart';
import 'package:finapp/app/components/models/date_transaction.dart';
import 'package:finapp/app/components/models/transaction.dart';
import 'package:finapp/app/components/secure_storage.dart';

class TransactionsPage extends ChangeNotifier {
  bool isLoading = false;
  bool isError = false;
  List<Transaction>? transactions;
  List<DateWithTransactions>? groupedTransactions;
  // Future<void> loadUserInfo() async {
  //   isLoading = true;
  //   notifyListeners();

  // Future<void> addTransaction({
  //   required String type,
  //   required String category,
  //   required String title,
  //   required DateTime date,
  //   required String time,
  //   required double amount,
  //   required String description,
  // }) async {
  //   isLoading = true;
  //   notifyListeners();

  //   try {
  //     String? token = await AppSecureStorage.getToken();
  //     if (token != null) {
  //       final response = await AppNetwork.addTransaction(
  //         token: token,
  //         type: type,
  //         category: category,
  //         title: title,
  //         date: date,
  //         // time: time,
  //         amount: amount,
  //         description: description,
  //       );
  //       if (response.statusCode == 200) {
  //         //
  //         notifyListeners();
  //         isError = false;
  //       } else {
  //         isError = true;
  //         print("Undefined error");
  //       }
  //     } else {
  //       isError = true;
  //       print("No token found");
  //     }
  //   } catch (e) {
  //     isError = true;
  //     print(e);
  //   } finally {
  //     isLoading = false;
  //     notifyListeners();
  //   }
  // }

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

  // Future<void> getTransactions() async {
  //   isLoading = true;
  //   notifyListeners();
  //   try {
  //     String? token = await AppSecureStorage.getToken();
  //     if (token != null) {
  //       isError = false;
  //       for (json in await AppNetwork.getTransactions(token: token)){}

  //     } else {
  //       isError = true;
  //       print("No token found");
  //     }
  //   } catch (e) {
  //     isError = true;
  //     print(e);
  //   } finally {
  //     isLoading = false;
  //     _groupTransactionsByDate();
  //     notifyListeners();
  //   }
  // }

  // Future<void> deleteTransaction(String transactionId) async {
  //   isLoading = true;
  //   notifyListeners();

  //   try {
  //     String? token = await AppSecureStorage.getToken();
  //     if (token != null) {
  //       final response = await AppNetwork.deleteTransaction(token: token, transactionId: transactionId);
  //       if (response.statusCode == 200) {
  //         transactions = transactions?.where((transaction) => transaction.id != transactionId).toList();
  //         isError = false;
  //       } else {
  //         isError = true;
  //         print("Undefined error");
  //       }
  //     } else {
  //       isError = true;
  //       print("No token found");
  //     }
  //   } catch (e) {
  //     isError = true;
  //     print(e);
  //   } finally {
  //     isLoading = false;
  //     notifyListeners();
  //   }
  // }
}
