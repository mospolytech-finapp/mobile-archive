import 'package:finapp/app/components/models/transaction.dart';

class DateWithTransactions {
  final DateTime date;
  final List<Transaction> transactions;

  DateWithTransactions({required this.date, required this.transactions});
}
