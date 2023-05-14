import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:finapp/app/pages/widgets/listview_item_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

List<String> list = <String>['Категория', 'Дата', 'Цели', 'Сумма', 'Время'];

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  int selectedIndex = -1;
  int count = 0;
  int item_ListViewBuilder = 8;
  List<int> items = List<int>.generate(8, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        SvgPicture.asset('assets/background.svg', fit: BoxFit.cover),
        Column(
          children: [
            //? Строка с кнопками Фильтры, добавить, редактировать
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 2.h, 2.w, 2.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    SizedBox(
                      width: 60.w,
                    ),
                    //? кнопка Фильтры
                    SizedBox(
                      width: 35.w,
                      height: 4.5.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            shadowColor: const Color(0xff383737),
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
                          style: const TextStyle(color: Colors.white),
                          dropdownColor: const Color(0xff383737),
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
                  ]),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: item_ListViewBuilder,
                itemBuilder: (BuildContext context, int index) {
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
                                    decoration: BoxDecoration(
                                        color: Color(0xff383737),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.tune,
                                                color: Colors.white,
                                                size: 10.w,
                                              )),
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
                            duration: const Duration(milliseconds: 2000),
                            child: ListViewItemWidget(
                                index, calculate_height(index, selectedIndex)),
                          ),
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ],
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

void doNothing(BuildContext context) {}
