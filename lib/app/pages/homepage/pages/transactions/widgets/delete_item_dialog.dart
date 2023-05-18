import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:finapp/app/components/models/transaction.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_model.dart';

class DeleteItemDialogWidget extends StatelessWidget {
  DeleteItemDialogWidget({super.key, required this.model, required this.transactionDate, required this.transactions});
  Transactions_model model;
  DateTime transactionDate;
  List<Transaction> transactions;
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(
            vertical: 1.h,
            horizontal: 2.w,
          ),
          child: Container(
            width: 90.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(2, 201, 141, 1),
                  Color.fromRGBO(53, 137, 215, 1),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Удаление транзакции',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Light',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(56, 55, 55, 1),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.cancel_outlined,
                          color: Color.fromRGBO(56, 55, 55, 1),
                          size: 28,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 1.h),
                  SizedBox(
                    height: 7.h,
                    child: Text(
                      'Выберите транзакцию, которую хотели бы удалить за ${transactionDate.day}.${transactionDate.month}.${transactionDate.year}',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: transactions.length,
                    itemBuilder: (context, i) {
                      return TransactionRow(transaction: transactions[i]);
                    },
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //? Кнопка удаления
                  Center(
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Удалить изменения',
                        style: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(53, 137, 215, 1),
                          fontSize: 11.sp,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        // И сохранение данных
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TransactionRow extends StatelessWidget {
  TransactionRow({super.key, required this.transaction});
  Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: ((value) {}),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 0.5.h,
                horizontal: 3.5.w,
              ),
              width: 69.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                  ),
                  Builder(builder: (context) {
                    String expenseText;
                    String expense = transaction.amount.toString();
                    if (transaction.amount < 0) {
                      expenseText = '$expense ₽';
                    } else {
                      expenseText = '+$expense ₽';
                    }
                    ;
                    return Text(
                      expenseText,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                      ),
                    );
                  }),
                  Builder(builder: (context) {
                    if (transaction.time != null) {
                      return Text(
                        transaction.time!.substring(0, 5),
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: 'Gilroy-Light',
                          color: Colors.black,
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  }),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        )
      ],
    );
  }
}
