import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class EditItemDialogWidget extends StatefulWidget {
  EditItemDialogWidget({super.key});

  @override
  State<EditItemDialogWidget> createState() => _EditItemDialogWidgetState();
}

class _EditItemDialogWidgetState extends State<EditItemDialogWidget> {
  final _transactionType = ['Доходы', 'Расходы'];
  String? _transactionTypeCurrentItemSelected;
  void _transactionTypeOnDropdownItemSelected(String newValueSelected) {
    setState(
      () {
        _transactionTypeCurrentItemSelected = newValueSelected;
      },
    );
  }

  final _transactionCategoryIncomes = [
    'Работа',
    'Подработка',
    'Разовые выплаты',
    'Подарок',
    'Пособие',
    'Премия',
  ];

  final _transactionCategoryOutcomes = [
    'Путешествия',
    'Транспорт',
    'ЖКХ',
    'Продукты',
    'Еда',
    'Развлечения',
    'Образование',
    'Подарки',
  ];

  //Список из DropdownMenuItem'ов
  final _transactionCategoryIncomesDropdown = [
    DropdownMenuItem(
      value: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Работа'),
          Icon(Icons.work),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Подработка'),
          Icon(Icons.work),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Разовые выплаты'),
          Icon(Icons.work),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Подарок'),
          Icon(Icons.work),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Пособие'),
          Icon(Icons.work),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Премия'),
          Icon(Icons.work),
        ],
      ),
    ),
  ];
  String? _transactionCategoryIncomesCurrentItemSelected;
  void _transactionCategoryIncomesOnDropdownItemSelected(
      String newValueSelected) {
    setState(
      () {
        _transactionCategoryIncomesCurrentItemSelected = newValueSelected;
      },
    );
  }

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
            height: 76.h,
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
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black),
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
                      hintText: 'Квартплата',
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
                    items: _transactionType.map((String dropdownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropdownStringItem,
                        child: Text(dropdownStringItem),
                      );
                    }).toList(),
                    onChanged: (String? newValueSelected) {
                      _transactionTypeOnDropdownItemSelected(
                          newValueSelected!); // Возможно, стоит сделать что-то с null check
                    },
                    value: _transactionTypeCurrentItemSelected,
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
                    items: _transactionCategoryIncomes
                        .map((String dropdownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropdownStringItem,
                        child: Text(dropdownStringItem),
                      );
                    }).toList(),
                    onChanged: (String? newValueSelected) {
                      _transactionCategoryIncomesOnDropdownItemSelected(
                          newValueSelected!); // Возможно, стоит сделать что-то с null check
                    },
                    value: _transactionCategoryIncomesCurrentItemSelected,
                  ),
                  SizedBox(
                    height: 1.h,
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
                      Column(
                        children: [
                          Text(
                            'Сумма',
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
                              hintText: '40 376 ₽',
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
                    cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintText: 'Оплатил(а) газ, электричество, воду.',
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
                        'Сохранить изменения',
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
