import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EditTransactionDialogWidget extends StatelessWidget {
  const EditTransactionDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Dialog(
          child: Container(
            height: 64.h,
            width: 80.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(2, 201, 141, 1),
                  Color.fromRGBO(48, 118, 184, 1),
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Транзакция',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(56, 55, 55, 1),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Тип',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: const Color.fromRGBO(56, 55, 55, 1),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'Название',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Квартплата',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Дата',
                              style: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Время',
                              style: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Сумма',
                              style: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'Описание',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Оплатил(а) газ, электричество, воду.',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(234, 234, 234, 1),
                            padding: EdgeInsets.symmetric(
                              vertical: 0.5.h,
                              horizontal: 3.w,
                            ),
                          ),
                          child: Text(
                            'Сохранить изменения',
                            style: TextStyle(
                              fontFamily: 'Gilroy-Light',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(48, 118, 184, 1),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DeleteTransactionDialogWidget extends StatelessWidget {
  const DeleteTransactionDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Dialog(
          child: Container(
            height: 34.h,
            width: 80.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(2, 201, 141, 1),
                  Color.fromRGBO(48, 118, 184, 1),
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Удаление',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(56, 55, 55, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Text(
                      'Выберите транзакцию, которую хотели бы удалить за 31.03.2023',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(56, 55, 55, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: true,
                          onChanged: (value) {},
                          fillColor: MaterialStateColor.resolveWith(
                              (_) => const Color(0xffECECEC)),
                          checkColor: const Color(0xff1BD0B8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(
                              color: Color(0xffECECEC),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.w,
                            vertical: 0.5.h,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                          height: 7.h,
                          width: 50.w,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Квартплата ',
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromRGBO(56, 55, 55, 1),
                                      ),
                                    ),
                                    Text(
                                      '-40376 Р',
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromRGBO(56, 55, 55, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '14:31',
                                  style: TextStyle(
                                    fontFamily: 'Gilroy-Light',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(56, 55, 55, 1),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
                        padding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 4.w,
                        ),
                      ),
                      child: Text(
                        'Удалить транзакцию',
                        style: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(48, 118, 184, 1),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class AddTransactionDialogWidget extends StatelessWidget {
  const AddTransactionDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Dialog(
          child: Container(
            height: 80.h,
            width: 80.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(2, 201, 141, 1),
                  Color.fromRGBO(48, 118, 184, 1),
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Добавление транзакции',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromRGBO(56, 55, 55, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Название',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: const Color.fromRGBO(56, 55, 55, 1),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Квартплата',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'Тип',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: const Color.fromRGBO(56, 55, 55, 1),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Выберите тип',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'Категория',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: const Color.fromRGBO(56, 55, 55, 1),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Выберите категорию',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Дата',
                              style: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 1.1.h,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Время',
                              style: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 1.1.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'Сумма',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: const Color.fromRGBO(56, 55, 55, 1),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: '40 376 Р',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      'Описание',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 1.1.h,
                    ),
                    TextFormField(
                      maxLines: 4,
                      style: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: const Color.fromRGBO(56, 55, 55, 1),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                      cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Оплатил(а) газ, электричество, воду.',
                        hintStyle: TextStyle(
                          fontFamily: 'Gilroy-Light',
                          color: const Color.fromRGBO(56, 55, 55, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.77.w,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(234, 234, 234, 1),
                            padding: EdgeInsets.symmetric(
                              vertical: 0.5.h,
                              horizontal: 3.w,
                            ),
                          ),
                          child: Text(
                            'Сохранить изменения',
                            style: TextStyle(
                              fontFamily: 'Gilroy-Light',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(48, 118, 184, 1),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
