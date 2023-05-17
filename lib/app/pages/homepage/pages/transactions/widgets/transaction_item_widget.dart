import 'package:finapp/app/components/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final Transaction transaction;

  TransactionItemWidget({required this.transaction});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Transactions_model>(context, listen: false);
    String name = transaction.name;
    double expense = transaction.amount;
    String? time = transaction.time;
    String category = model.findCategoryName(transaction.category);
    IconData icon;
    Color iconColor;
    String expenseText;

    if (transaction.amount < 0) {
      icon = Icons.arrow_downward;
      iconColor = Color(0xff383737);
      expenseText = '$expense ₽';
    } else {
      icon = Icons.arrow_upward;
      iconColor = Color(0xff009C6D);
      expenseText = '+$expense ₽';
    }

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        // trailing: SizedBox.shrink(),
        childrenPadding: EdgeInsets.zero,

        initiallyExpanded: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 4.h,
            ),
            SizedBox(
              width: 2.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //? Название транзакции и доход/расход
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontFamily: 'Gilroy-Light',
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      expenseText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontFamily: 'Gilroy-Light',
                      ),
                    ),
                  ],
                ),
                Text(category,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontFamily: 'Gilroy-Light',
                    )),
                //? Время транзакции
                Text(
                  time!,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontFamily: 'Gilroy-Light',
                  ),
                ),
              ],
            ),
          ],
        ),
        children: [
          Container(
            width: 57.w,
            padding: EdgeInsets.fromLTRB(3.w, 1.w, 3.w, 1.w),
            decoration: BoxDecoration(color: Color(0xffA1C7EA), borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              transaction.description!,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 10.sp,
                color: Colors.black,
                fontFamily: 'Gilroy-Light',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
