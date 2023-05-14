import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class DeleteItemDialogWidget extends StatefulWidget {
  DeleteItemDialogWidget({super.key});

  @override
  State<DeleteItemDialogWidget> createState() => _DeleteItemDialogWidgetState();
}

class _DeleteItemDialogWidgetState extends State<DeleteItemDialogWidget> {
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
            height: 43.h,
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
                        'Удаление транзакции',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Light',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(56, 55, 55, 1),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
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
                  SizedBox(height: 1.h),
                  SizedBox(
                    height: 7.h,
                    child: Text(
                      'Выберите транзакцию, которую хотели бы удалить за '
                      '31.03.2023',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Gilroy-Light',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: ((value) {}),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 3.5.w,
                        ),
                        width: 69.w,
                        height: 6.5.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Квартплата ' '-40 376₽',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Gilroy-Light',
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '14:31',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: 'Gilroy-Light',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: ((value) {}),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 3.5.w,
                        ),
                        width: 69.w,
                        height: 6.5.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Зарплата ' '+100 876₽',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Gilroy-Light',
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '12:49',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: 'Gilroy-Light',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
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
                        'Удалить изменения',
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
