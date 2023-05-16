import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class AddItemDialogWidget extends StatefulWidget {
  const AddItemDialogWidget({super.key});

  @override
  State<AddItemDialogWidget> createState() => _AddItemDialogWidgetState();
}

class _AddItemDialogWidgetState extends State<AddItemDialogWidget> {
  int? _transactionTypeValue;
  int? _transactionCategoryValue;

  //Список из DropdownMenuItem'ов
  final _transactionCategoryIncomesDropdown = [
    DropdownMenuItem(
      value: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Работа'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Подработка'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Разовые выплаты'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Подарок'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Пособие'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Премия'),
        ],
      ),
    ),
  ];
  final _transactionCategoryOutcomesDropdown = [
    DropdownMenuItem(
      value: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Путешествия'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Транспорт'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('ЖКХ'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Продукты'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Еда'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 11,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Развлечения'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Образование'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Подарки'),
        ],
      ),
    ),
  ];
  final _transactionTypeDropdown = [
    DropdownMenuItem(
      value: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Доходы'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Расходы'),
        ],
      ),
    ),
  ];

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
            // width: 90.w,
            // height: 76.h,
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
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                // mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.start,
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Добавление транзакции',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Light',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(56, 55, 55, 1),
                        ),
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
                  SizedBox(height: 2.h),
                  Text(
                    'Название',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Gilroy-Light', color: Colors.black),
                  ),
                  // GestureDetector(
                  //   child: Text(
                  //     'HELPME@FINAPP.COM',
                  //     textAlign: TextAlign.start,
                  //     style: TextStyle(
                  //         fontSize: 15.sp,
                  //         fontFamily: 'Gilroy-Light',
                  //         color: Colors.white,
                  //         decoration: TextDecoration.underline,
                  //         decorationColor: Colors.white),
                  //   ),
                  //   onTap: () {
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //       const SnackBar(
                  //         content: Text(
                  //           "Email скопирован",
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontFamily: 'Gilroy-Light',
                  //           ),
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextField(
                    style: TextStyle(
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                      fontSize: 11.sp,
                    ),
                    textAlign: TextAlign.start,
                    cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                        fontSize: 11.sp,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0.5.h,
                        horizontal: 2.77.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(220, 220, 220, 1),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Тип',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0.5.h,
                        horizontal: 2.77.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(220, 220, 220, 1),
                    ),
                    hint: Text(
                      'Выберите тип',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                    items: _transactionTypeDropdown,
                    onChanged: (v) {
                      setState(() {
                        _transactionTypeValue = v as int;
                        _transactionCategoryValue = null;
                      });
                    },
                    value: _transactionTypeValue,
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Категория',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  DropdownButtonFormField(
                    menuMaxHeight: 25.h,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0.5.h,
                        horizontal: 2.77.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(220, 220, 220, 1),
                    ),
                    hint: Text(
                      'Выберите категорию',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                    items: _transactionTypeValue == 0
                        ? _transactionCategoryIncomesDropdown
                        : _transactionCategoryOutcomesDropdown,
                    onChanged: (v) {
                      setState(() {
                        _transactionCategoryValue = v as int;
                      });
                    },
                    value: _transactionCategoryValue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Дата',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy-Light',
                              color: Colors.black,
                            ),
                          ),
                          /* - При вставке TextField (даже пустого) программа выдает ошибку; добавить DatePicker
                          TextField(
                            readOnly: true,
                            style: TextStyle(
                              fontFamily: 'Gilroy-Light',
                              color: Colors.black,
                              fontSize: 11.sp,
                            ),
                            textAlign: TextAlign.start,
                            cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 0.5.h,
                                horizontal: 2.77.w,
                              ),
                              hintText: '31.03.2023',
                              hintStyle: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 11.sp,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ), */
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Время',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy-Light',
                              color: Colors.black,
                            ),
                          ),
                          /*TextField( - виджет с выбором времени (TimePicker)
                            readOnly: true,
                            style: TextStyle(
                              fontFamily: 'Gilroy-Light',
                              color: Colors.black,
                              fontSize: 11.sp,
                            ),
                            textAlign: TextAlign.start,
                            cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 0.5.h,
                                horizontal: 2.77.w,
                              ),
                              hintText: '31.03.2023',
                              hintStyle: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                fontSize: 11.sp,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ), */
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Сумма',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextField(
                    style: TextStyle(
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                      fontSize: 11.sp,
                    ),
                    textAlign: TextAlign.start,
                    cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                        fontSize: 11.sp,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0.5.h,
                        horizontal: 2.77.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(220, 220, 220, 1),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Описание',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextField(
                    style: TextStyle(
                      fontFamily: 'Gilroy-Light',
                      color: Colors.black,
                      fontSize: 11.sp,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                    minLines: 1,
                    cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                        fontSize: 11.sp,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0.5.h,
                        horizontal: 2.77.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(220, 220, 220, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(220, 220, 220, 1),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
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
                        'Сохранить транзакцию',
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
