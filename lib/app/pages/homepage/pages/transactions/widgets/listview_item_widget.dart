// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:finapp/app/components/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import 'transaction_item_widget.dart';

class ListViewItemWidget extends StatelessWidget {
  final int index;
  final List<Transaction> transactions;

  ListViewItemWidget({required this.index, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffEAEAEA), borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          //? День и месяц(Дата)
          Padding(
            padding: EdgeInsets.fromLTRB(9.w, 0, 8.w, 0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      transactions[0].date.day.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.sp,
                        color: Colors.black,
                        fontFamily: 'Gilroy-Light',
                      ),
                    ),
                    Text(
                      DateFormat.MMMM('ru_RU').format(transactions[0].date).toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontFamily: 'Gilroy-Light',
                      ),
                    )
                  ]),
            ),
          ),
          //? Информация о транзакциях
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: transactions.length,
              itemBuilder: (context, i) {
                return TransactionItemWidget(transaction: transactions[i]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
