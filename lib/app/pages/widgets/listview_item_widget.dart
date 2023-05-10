// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

int day = 31;
String month = 'марта';
String name = 'Кварплата';
int expense = 40376;
String time = '14:30';
String discript = 'Перевели за вторую половину текущего месяца.';

Widget ListViewItemWidget(int index, double calculate_height) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xffEAEAEA),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Row(children: [
      //? День и месяц(Дата)
      Padding(
        padding: EdgeInsets.fromLTRB(9.w, 0, 8.w, 0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$day',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36.sp,
                    color: Colors.black,
                    fontFamily: 'Gilroy-Light',
                  ),
                ),
                Text(
                  month.toUpperCase(),
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
      Padding(
        padding: EdgeInsets.fromLTRB(0, 1.h, 5.w, 1.h),
        child: Builder(builder: (BuildContext context) {
          if (calculate_height == 26.h) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Color(0xff383737),
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? Название транзакции и доход/расход
                        Row(
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
                              '-$expense ₽',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                                color: Colors.black,
                                fontFamily: 'Gilroy-Light',
                              ),
                            )
                          ],
                        ),
                        //? Время транзакции
                        Text(
                          time,
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
                Container(
                  width: 57.w,
                  padding: EdgeInsets.fromLTRB(3.w, 1.w, 3.w, 1.w),
                  decoration: BoxDecoration(
                      color: Color(0xffA1C7EA),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    discript,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontFamily: 'Gilroy-Light',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Color(0xff009C6D),
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? Название транзакции и доход/расход
                        Row(
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
                              '+$expense ₽',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                                color: Color(0xff009C6D),
                                fontFamily: 'Gilroy-Light',
                              ),
                            )
                          ],
                        ),
                        //? Время транзакции
                        Text(
                          '$time',
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
                Container(
                  width: 57.w,
                  padding: EdgeInsets.fromLTRB(3.w, 1.w, 3.w, 1.w),
                  decoration: BoxDecoration(
                      color: Color(0xffA1C7EA),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    discript,
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
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Color(0xff383737),
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? Название транзакции и доход/расход
                        Row(
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
                              '-$expense ₽',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                                color: Colors.black,
                                fontFamily: 'Gilroy-Light',
                              ),
                            )
                          ],
                        ),
                        //? Время транзакции
                        Text(
                          time,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Color(0xff009C6D),
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? Название транзакции и доход/расход
                        Row(
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
                              '+$expense ₽',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                                color: Color(0xff009C6D),
                                fontFamily: 'Gilroy-Light',
                              ),
                            )
                          ],
                        ),
                        //? Время транзакции
                        Text(
                          '$time',
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
              ],
            );
          }
        }),
      ),
    ]),
  );
}
