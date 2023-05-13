// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  int id;
  int category;
  String title;
  DateTime date;
  double amount;
  String? description;
  String? time;
  Transaction({
    required this.id,
    required this.category,
    required this.title,
    required this.date,
    required this.amount,
    this.description,
    this.time,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
