import 'package:collection/collection.dart';
import 'package:finapp/app/components/models/transaction.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/transactionspage_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/widgets/listview_item_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:finapp/app/pages/homepage/pages/transactions/widgets/add_item_dialog.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
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
          if (i == 0) {
            Provider.of<Transactions_model>(context, listen: false).init(context);
            Provider.of<Transactions_model>(context, listen: false).loadTransactions();
            Provider.of<Transactions_model>(context, listen: false).loadCategories();
            i++;
          }

          final transactionsModel = Provider.of<Transactions_model>(context, listen: true);

          Map<DateTime, List<Transaction>> groupTransactionsByDate(List<Transaction> transactions) {
            return groupBy(transactions, (Transaction t) => DateTime(t.date.year, t.date.month, t.date.day));
          }

          Map<DateTime, List<Transaction>> groupedTransactions =
              groupTransactionsByDate(transactionsModel.transactions ?? []);

          return Stack(
            fit: StackFit.expand,
            children: [
              SvgPicture.asset('assets/background.svg', fit: BoxFit.cover),
              Column(
                children: [
                  //? Строка с кнопками Фильтры, добавить, редактировать
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(const Duration(seconds: 2));
                        transactionsModel.loadTransactions();
                        transactionsModel.loadCategories();
                      },
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
                                child: Slidable(
                                  key: const ValueKey(0),
                                  startActionPane: ActionPane(
                                    motion: ScrollMotion(),
                                    children: [
                                      Expanded(
                                        child: Container(
                                            decoration: const BoxDecoration(
                                                color: Color(0xff383737),
                                                borderRadius: BorderRadius.all(Radius.circular(20))),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.delete,
                                                        color: Colors.white,
                                                        size: 10.w,
                                                      ))
                                                ],
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
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
                                ),
                              ));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 16 + MediaQuery.of(context).padding.bottom,
                right: 16,
                child: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AddItemDialogWidget(model: transactionsModel),
                    );
                  },
                  backgroundColor: Color(0xff00B881),
                  hoverColor: Color(0xff383737),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
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
