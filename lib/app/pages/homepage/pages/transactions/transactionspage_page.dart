import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:finapp/app/pages/widgets/listview_item_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
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
                  padding: EdgeInsets.fromLTRB(2.5.w, 2.h, 2.5.w, 2.h),
                  child: Row(children: [
                    //? кнопка Фильтры
                    SizedBox(
                      width: 29.43.w,
                      height: 4.5.h,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xff00B881),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35))),
                          child: Wrap(
                            children: [
                              Text(
                                'Фильтры',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Light',
                                ),
                              ),
                              Icon(
                                Icons.expand_more_outlined,
                                color: Colors.white,
                                size: 6.w,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 2.85.w,
                    ),
                    //? кнопка Добавить
                    SizedBox(
                      width: 24.97.w,
                      height: 4.5.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff00B881),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35))),
                        child: Text(
                          'Добавить',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11.sp,
                            color: Colors.white,
                            fontFamily: 'Gilroy-Light',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.85.w,
                    ),
                    //? кнопка Редактировать
                    SizedBox(
                      width: 34.89.w,
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
                            fontSize: 11.sp,
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
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return ListViewItemWidget(index);
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 2.5.h,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
