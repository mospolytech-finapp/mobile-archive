import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'package:finapp/app/models/loginpage_model.dart';

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
    final authModel = Provider.of<AuthModel>(context, listen: false);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(children: <Widget>[
            //? лого
            SizedBox(
                height: 16.h,
                child: SizedBox(height: 10.h, width: 28.37.w, child: SvgPicture.asset('assets/logo.svg'))),
            //? бирюзовая подложка
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(16.67.w, 0, 16.67.w, 0),
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
                    height: 7.81.h,
                  ),
                  //? Вход
                  Text(
                    'Вход',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.white,
                      fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 7.81.h,
                  ),
                  //? Текст Адрес электронной почты
                  Row(
                    children: [
                      SizedBox(
                        height: 2.5.h,
                        width: 66.6.w,
                        child: Text(
                          'Адрес электронной почты',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.white,
                            fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 1.25.h,
                  ),
                  //? Текстовое поле Адрес электронной почты
                  SizedBox(
                    height: 4.69.h,
                    width: 66.67.w,
                    child: TextFormField(
                      controller: authModel.emailController,
                      style: TextStyle(
                          color: Colors.black, fontSize: 16.sp, fontFamily: GoogleFonts.bebasNeue().fontFamily),
                      cursorColor: const Color(0xff1BD0B8),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          focusColor: const Color(0xff1BD0B8),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(color: Colors.transparent)),
                          filled: true,
                          fillColor: const Color(0xffDCDCDC)),
                    ),
                  ),
                  SizedBox(
                    height: 3.13.h,
                  ),
                  //? Текст Пароль
                  Row(
                    children: [
                      SizedBox(
                        height: 2.5.h,
                        width: 66.6.w,
                        child: Text(
                          'Пароль',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.white,
                            fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.25.h,
                  ),
                  //? Текстовое поле Пароль
                  SizedBox(
                    height: 4.69.h,
                    width: 66.67.w,
                    child: TextFormField(
                      controller: authModel.passwordController,
                      style: TextStyle(
                          color: Colors.black, fontSize: 16.sp, fontFamily: GoogleFonts.bebasNeue().fontFamily),
                      textAlign: TextAlign.left,
                      obscureText: !_showPassword,
                      cursorColor: const Color(0xff1BD0B8),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10.0),
                        focusColor: const Color(0xff1BD0B8),
                        filled: true,
                        fillColor: const Color(0xffDCDCDC),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: Colors.transparent),
                        ),
                        //? Иконка глаза
                        suffixIcon: IconButton(
                          icon: Icon(
                            _showPassword ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                        ),
                      ),
                    ),
                  ),
                  //? Текст Забыли пароль
                  Container(
                    margin: const EdgeInsets.only(left: 0),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(fixedSize: Size(30.56.w, 1.88.h)),
                      child: Text(
                        'Забыли пароль?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        ),
                      ),
                    ),
                  ),

                  //? Чекбокс и Текст Запомнить аккаунт
                  SizedBox(
                    height: 2.50.h,
                    width: 66.67.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          fillColor: MaterialStateColor.resolveWith((_) => const Color(0xffECECEC)),
                          checkColor: const Color(0xff1BD0B8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), side: const BorderSide(color: Color(0xffECECEC))),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(left: 0),
                              fixedSize: Size(36.5.w, 1.88.h),
                            ),
                            onPressed: () => setState(() {
                                  isChecked = !isChecked;
                                }),
                            child: Text(
                              'Запомнить  аккаунт',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: GoogleFonts.bebasNeue().fontFamily,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.63.h,
                  ),
                  //? Кнопка Войти
                  SizedBox(
                    height: 4.69.h,
                    width: 66.67.w,
                    child: ElevatedButton(
                      onPressed: () {
                        authModel.logIn(authModel.emailController.text, authModel.passwordController.text);
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff1BD0B8),
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.88.h,
                  ),
                  //? Текст Нет учетной записи и Зарегистрировать
                  SizedBox(
                    height: 2.5.h,
                    width: 66.6.w,
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            "Нет учетной записи?",
                            style: TextStyle(
                              fontSize: 9.3.sp,
                              color: Colors.white,
                              fontFamily: GoogleFonts.bebasNeue().fontFamily,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2.4.w,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/login/register');
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              //fixedSize: Size(33.88.w, 2.5.h),
                            ),
                            child: Text(
                              'Зарегистрироваться',
                              style: TextStyle(
                                fontSize: 9.3.sp,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                fontFamily: GoogleFonts.bebasNeue().fontFamily,
                              ),
                            )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 4.69.h,
                  ),
                  //? Кнопка Связаться с нами
                  SizedBox(
                    height: 2.5.h,
                    width: 33.62.w,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Связаться с нами',
                        style: TextStyle(
                          fontSize: 9.sp,
                          color: Colors.white,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
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
