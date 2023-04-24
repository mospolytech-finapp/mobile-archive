import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:finapp/app/pages/loginpage/loginpage_model.dart';
import 'package:finapp/app/pages/widgets/dialog_contact_us.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                //alignment: Alignment.topCenter,
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
                  //? Колонка до Войти
                  Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    SizedBox(
                      height: 7.81.h,
                    ),
                    //? Вход
                    Text(
                      'Вход',
                      style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.white,
                        fontFamily: 'Gilroy-Light',
                      ),
                    ),
                    SizedBox(
                      height: 7.81.h,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.67.w, 0, 16.67.w, 0),
                      child: Column(
                        children: [
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
                                    fontFamily: 'Gilroy-Light',
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 1.25.h,
                          ),
                          //? Текстовое поле Адрес электронной почты
                          TextField(
                            controller: authModel.emailController,
                            style: TextStyle(color: Colors.black, fontSize: 16.sp, fontFamily: 'Gilroy-Light'),
                            cursorColor: const Color(0xff1BD0B8),
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.fromLTRB(2.77.w, 0.5.h, 2.77.w, 0.5.h),
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
                                    fontFamily: 'Gilroy-Light',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.25.h,
                          ),
                          //? Текстовое поле Пароль
                          TextField(
                            controller: authModel.passwordController,
                            style: TextStyle(color: Colors.black, fontSize: 16.sp, fontFamily: 'Gilroy-Light'),
                            cursorColor: const Color(0xff1BD0B8),
                            textAlign: TextAlign.justify,
                            //? для скрытия пароля
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.fromLTRB(2.77.w, 0.5.h, 2.77.w, 0.5.h),
                                //? Иконка глаза
                                suffixIconConstraints: BoxConstraints(maxHeight: 24),
                                suffixIcon: IconButton(
                                  padding: EdgeInsets.zero,
                                  iconSize: 24,
                                  icon: Icon(
                                    _showPassword ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                ),
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
                                  fontFamily: 'Gilroy-Light',
                                ),
                              ),
                            ),
                          ),
                        ],
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
                            value: authModel.saveUser,
                            onChanged: (value) {
                              setState(() {
                                authModel.saveUser = !authModel.saveUser;
                              });
                            },
                            fillColor: MaterialStateColor.resolveWith((_) => const Color(0xffECECEC)),
                            checkColor: const Color(0xff1BD0B8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(color: Color(0xffECECEC))),
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(left: 0),
                                fixedSize: Size(36.5.w, 1.88.h),
                              ),
                              onPressed: () => setState(() {
                                    authModel.saveUser = !authModel.saveUser;
                                  }),
                              child: Text(
                                'Запомнить  аккаунт',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Light',
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.63.h,
                    ),
                  ]),
                  //? Колонка Войти
                  Column(
                    children: [
                      //? Кнопка Войти
                      SizedBox(
                        height: 4.69.h,
                        width: 66.67.w,
                        child: ElevatedButton(
                          onPressed: () {
                            authModel.logIn();
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
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      //? Текст Нет учетной записи и Зарегистрировать
                      SizedBox(
                        height: 2.5.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Text(
                                "Нет учетной записи?",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Light',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
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
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    fontFamily: 'Gilroy-Light',
                                  ),
                                )),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 1.3.h,
                      ),
                      //? Кнопка Связаться с нами
                      SizedBox(
                        height: 2.5.h,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => ContactUsDialogWidget(),
                            );
                          },
                          child: Text(
                            'Связаться с нами',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ]),
        );
      },
    );
  }
}
