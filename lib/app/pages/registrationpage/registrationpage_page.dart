import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (
        BuildContext context,
        Orientation orientation,
        DeviceType deviceType,
      ) {
        return Scaffold(
          body: SizedBox(
            height: 100.h,
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15.625.h,
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 64.56.h,
                        width: 28.37.w,
                        child: SvgPicture.asset('assets/logo.svg'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 16.66667.w,
                      top: 2.34375.h,
                      right: 16.66667.w,
                      bottom: 1.5.h,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(2, 201, 141, 1),
                          Color.fromRGBO(53, 137, 215, 1),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 3.4375.h,
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Создать учётную запись',
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.71875.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 16.38889.w,
                          child: Text('Фамилия*',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.9375.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 16.38889.w,
                          child: Text('Имя*',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 16.38889.w,
                          child: Text('Отчество',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 16.38889.w,
                          child: Text('Пароль*',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 20.w,
                          child: Text('E-mail*',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 25.w,
                          child: Text('Дата рождения*',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: 'dd.mm.yyyy',
                              hintStyle: GoogleFonts.bebasNeue(
                                fontSize: 1.sp,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 16.38889.w,
                          child: Text('Пол',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 10.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 4.375.h,
                          child: TextField(
                            style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(220, 220, 220, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.92592.h,
                        ),
                        SizedBox(
                          height: 1.875.h,
                          width: 40.w,
                          child: Text('*Обязательное поле для ввода',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 9.sp,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 2.96875.h,
                        ),
                        SizedBox(
                          height: 4.6875.h,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              minimumSize: Size(66.66667.w, 4.6875.h),
                              backgroundColor:
                                  const Color.fromRGBO(27, 208, 184, 1),
                              side: const BorderSide(
                                width: 0,
                                color: Color.fromRGBO(27, 208, 184, 1),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Продолжить',
                              style: GoogleFonts.bebasNeue(
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.5625.h,
                        ),
                        SizedBox(
                          height: 2.03125.h,
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Уже зарегистрированы? ',
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Войти',
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 11,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.96875.h,
                        ),
                        SizedBox(
                          height: 2.5.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(
                                      2.w, 0.2.h, 2.w, 0.2.h),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  side: const BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  'Связаться с нами',
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
