import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:finapp/app/pages/homepage/homepage_model.dart';

class ConfirmExitDialog extends StatelessWidget {
  HomePageModel model;

  ConfirmExitDialog({super.key, required this.model});

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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Выйти из аккаунта?',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontFamily: 'Gilroy-Light',
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      model.logOut(context);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff1BD0B8),
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    child: Text(
                      'Выйти',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontFamily: 'Gilroy-Light',
                      ),
                    ),
                  ),
                ],
              )),
        ));
      },
    );
  }
}
