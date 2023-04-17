import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(children: <Widget>[
            SizedBox(
                height: 16.h,
                child: SizedBox(
                    height: 10.h,
                    width: 28.w,
                    child: SvgPicture.asset('assets/logo.svg'))),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(25.0),
                      bottomLeft: Radius.circular(0),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff02C98D), Color(0xff3589D7)])),
                child: Column(children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Вход',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 2.5.h,
                        child: Text(
                          'Адрес электронной почты',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 70.w,
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.aleo().fontFamily),
                      cursorColor: const Color(0xff1BD0B8),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          focusColor: const Color(0xff1BD0B8),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          filled: true,
                          fillColor: const Color(0xffDCDCDC)),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 2.5.h,
                        child: Text(
                          'Пароль',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 70.w,
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.aleo().fontFamily),
                      textAlign: TextAlign.left,
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          focusColor: const Color(0xff1BD0B8),
                          suffixIcon: IconButton(
                            icon: Icon(_showPassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          filled: true,
                          fillColor: const Color(0xffDCDCDC)),
                    ),
                  ),
                  Row(children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Забыли пароль?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        ),
                      ),
                    ),
                  ]),

                  //!CheckBox
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          fillColor: MaterialStateColor.resolveWith(
                              (_) => const Color(0xffECECEC)),
                          checkColor: const Color(0xff1BD0B8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(color: Color(0xffECECEC))),
                        ),
                        TextButton(
                            onPressed: () => setState(() {
                                  isChecked = !isChecked;
                                }),
                            child: Text(
                              'Запомнить аккаунт',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: GoogleFonts.bebasNeue().fontFamily,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 66.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff1BD0B8),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 0.50.h,
                      ),
                      Text(
                        "Нет учетной записи?",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: GoogleFonts.aleo().fontFamily,
                        ),
                      ),
                      SizedBox(
                        width: 0.20.h,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Зарегистрироваться',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              fontFamily: GoogleFonts.aleo().fontFamily,
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  SizedBox(
                    height: 3.h,
                    width: 35.w,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Cвязаться с нами',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: GoogleFonts.aleo().fontFamily,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ]),
        );
      },
    );
  }
}
