// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';



@JsonSerializable()
class Transaction {
  int id;
  int category;
  String name;
  DateTime date;
  double amount;
  String? description;
  String? time;

  Transaction({
    required this.id,
    required this.category,
    required this.name,
    required this.date,
    required this.amount,
    this.description,
    this.time,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    id: json['id'] as int,
    category: json['category'] as int,
    name: json['name'] as String,
    date: DateTime.parse(json['date'] as String),
    amount: json['amount'] is String ? double.parse(json['amount']) : (json['amount'] as num).toDouble(),
    description: json['description'] as String?,
    time: json['time'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'category': category,
    'name': name,
    'date': date.toIso8601String(),
    'amount': amount,
    'description': description,
    'time': time,
  };
}
