import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class ContactUsDialogWidget extends StatelessWidget {
  const ContactUsDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Dialog(
            child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF3589d7), Color(0xFF02c98d)])),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Row(children: [
                      SizedBox(width: 14.w),
                      Text(
                        'Связаться с нами',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.sp, fontFamily: 'Gilroy-Light', color: Colors.white),
                      ),
                      SizedBox(width: 2.7.w),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 28,
                          ))
                    ]),
                  ),
                  SizedBox(height: 1.875.h),
                  Text(
                    'Почта',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 13.sp, fontFamily: 'Gilroy-Light', color: Color(0xFF7DEDCB)),
                  ),
                  GestureDetector(
                    child: Text(
                      'HELPME@FINAPP.COM',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Gilroy-Light',
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                    onTap: () {
                      Clipboard.setData(const ClipboardData(text: 'HELPME@FINAPP.COM')).then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("Email скопирован",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Light',
                                ))));
                      });
                    },
                  ),
                  SizedBox(height: 3.125.h),
                  Text(
                    'Телефон',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 13.sp, fontFamily: 'Gilroy-Light', color: Color(0xFF7DEDCB)),
                  ),
                  GestureDetector(
                    child: Text(
                      '89996663132',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Gilroy-Light',
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                    onTap: () {
                      Clipboard.setData(const ClipboardData(text: '89996663132')).then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                          "Телефон скопирован",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gilroy-Light',
                          ),
                        )));
                      });
                    },
                  ),
                  SizedBox(height: 4.69.h)
                ],
              )),
        ));
      },
    );
  }
}
