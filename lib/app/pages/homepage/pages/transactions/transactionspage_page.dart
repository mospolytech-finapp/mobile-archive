import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/widgets/transactionspage_dialog.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const DeleteTransactionDialogWidget(),
                  );
                },
                child: const Text("Удалить транзакцию"),
              ),
              OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const EditTransactionDialogWidget(),
                  );
                },
                child: const Text("Изменить транзакцию"),
              ),
              OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AddTransactionDialogWidget(),
                  );
                },
                child: const Text("Добавить транзакцию"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
