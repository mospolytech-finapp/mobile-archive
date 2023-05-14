import 'package:collection/collection.dart';
import 'package:finapp/app/components/models/transaction.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/widgets/listview_item_widget.dart';

List<String> list = <String>['Категория', 'Дата', 'Цели', 'Сумма', 'Время'];

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  String dropdownValue = list.first;
  bool isTap = false;
  int selectedIndex = -1;
  int count = 0;
  int i = 0;



  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Transactions_model(),
        ),
      ],
      child: Builder(
        builder: (context) {

          if( i == 0){
            Provider.of<Transactions_model>(context, listen: false).loadTransactions();
            Provider.of<Transactions_model>(context, listen: false).loadCategories();
            i++;
          }

          final transactionsModel = Provider.of<Transactions_model>(context, listen: true);

          Map<DateTime, List<Transaction>> groupTransactionsByDate(List<Transaction> transactions) {
            return groupBy(transactions, (Transaction t) => DateTime(t.date.year, t.date.month, t.date.day));
          }
          Map<DateTime, List<Transaction>> groupedTransactions = groupTransactionsByDate(transactionsModel.transactions ?? []);


          return Stack(
            fit: StackFit.expand,
            children: [
              SvgPicture.asset('assets/background.svg', fit: BoxFit.cover),
              Column(
                children: [
                  //? Строка с кнопками Фильтры, добавить, редактировать
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(2.w, 2.h, 2.w, 2.h),
                        child: Row(children: [
                          //? кнопка Фильтры
                          SizedBox(
                            width: 35.w,
                            height: 4.5.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  shadowColor: Color(0xff383737),
                                  backgroundColor: const Color(0xff00B881),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35))),
                              child: DropdownButton(
                                hint: Text(
                                  'Фильтры',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    fontFamily: 'Gilroy-Light',
                                  ),
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                icon: Icon(
                                  Icons.expand_more_outlined,
                                  color: Colors.white,
                                  size: 6.5.w,
                                ),
                                style: TextStyle(color: Colors.white),
                                dropdownColor: Color(0xff383737),
                                onChanged: (value) {
                                  setState(() {});
                                },
                                items: list.map((itemone) {
                                  return DropdownMenuItem(
                                      value: itemone, child: Text(itemone));
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          //? кнопка Добавить
                          SizedBox(
                            width: 23.43.w,
                            height: 4.5.h,
                            child: ElevatedButton(
                              onPressed: () {
                                print(transactionsModel.categories);
                                print(transactionsModel.transactions);
                                transactionsModel.addTransaction(
                                  category: transactionsModel.categories![1].id,
                                  title: 'fgfg',
                                  date: DateTime.now(),
                                  amount: -9000.0,
                                  time:'18:00' ,
                                  description: 'hsdkjhfshdfhkjshfhskjhfhshfkjsh');

                                },
                              style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff00B881),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35))),
                              child: Text(
                                'Добавить',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Light',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          //? кнопка Редактировать
                          SizedBox(
                            width: 32.34.w,
                            height: 4.5.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff00B881),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35))),
                              child: Text(
                                'Редактировать',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Light',
                                ),
                              ),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: groupedTransactions.keys.length,
                      itemBuilder: (BuildContext context, int index) {
                        final date = groupedTransactions.keys.elementAt(index);
                        final transactions = groupedTransactions[date];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 2.5.h),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedIndex == -1) {
                                  selectedIndex = index;
                                } else if (selectedIndex == index) {
                                  selectedIndex = -1;
                                } else if (selectedIndex != index) {
                                  selectedIndex = index;
                                }
                              });
                            },
                            child: AnimatedContainer(
                              height: calculate_height(index, selectedIndex),
                              curve: Curves.easeInOutCubic,
                              duration: const Duration(milliseconds: 1000),
                              child: ListViewItemWidget(
                              index: index,
                              transactions: transactions ?? [],
                              // calculate_height: calculate_height(index, selectedIndex),
                            ),
                          ),
                          )
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

double calculate_height(int index, int selectedIndex) {
  double item_height;
  if (selectedIndex == index) {
    item_height = 26.h;
  } else {
    item_height = 13.h;
  }
  return item_height;
}
