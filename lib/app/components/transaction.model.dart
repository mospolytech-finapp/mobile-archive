class Transaction {
  final String id;
  final String type;
  final String category;
  final String title;
  final DateTime date;
  final double amount;
  final String? description;

  Transaction({
    required this.id,
    required this.type,
    required this.category,
    required this.title,
    required this.date,
    required this.amount,
     this.description,
  });


  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      type: json['type'],
      category: json['category'],
      title: json['title'],
      date: DateTime.parse(json['date']),
      amount: json['amount'].toDouble(),
      description: json['description'],
    );
  }
}
