import 'package:finapp/app/components/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_model.dart';

class TransactionItemWidget extends StatelessWidget {
  final Transaction transaction;

  const TransactionItemWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Transactions_model>(context, listen: true);
    String name = transaction.name;
    double expense = transaction.amount;
    String? time = transaction.time?.substring(0, 5);
    String category = model.categories?[transaction.category] ?? '';
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
        trailing: const SizedBox.shrink(),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        initiallyExpanded: true,
        title: Row(
          mainAxisSize: MainAxisSize.max,
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
                    SizedBox(
                      width: 50.w,
                      child: Text(
                        name,
                        overflow: TextOverflow.visible, // или TextOverflow.ellipsis
                        softWrap: true,
                        // maxlines:null
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontFamily: 'Gilroy-Light',
                        ),
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

                Builder(builder: (context) {
                  if (time == null) return const SizedBox.shrink();
                  return Text(
                    time,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontFamily: 'Gilroy-Light',
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
        children: [
          if (transaction.description != null)
            Builder(builder: (context) {
              if (transaction.description!.isEmpty) return const SizedBox.shrink();
              return Container(
                width: 60.w,
                padding: EdgeInsets.fromLTRB(2.w, 1.w, 2.w, 1.w),
                decoration:
                    const BoxDecoration(color: Color(0xffA1C7EA), borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  transaction.description!,
                  maxLines: null,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontFamily: 'Gilroy-Light',
                  ),
                ),
              );
            }),
        ],
      ),
    );
  }
}
