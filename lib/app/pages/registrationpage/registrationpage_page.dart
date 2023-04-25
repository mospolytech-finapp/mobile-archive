import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'package:finapp/app/pages/registrationpage/registerpage_model.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerModel = Provider.of<RegisterModel>(context, listen: false);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegisterModel(),
        ),
      ],
      child: Sizer(
        builder: (
          BuildContext context,
          Orientation orientation,
          DeviceType deviceType,
        ) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Логотип FinApp
                SizedBox(
                  height: 16.h,
                  child: SizedBox(
                    height: 10.h,
                    width: 28.37.w,
                    child: SvgPicture.asset('assets/logo.svg'),
                  ),
                ),
                // Фоновый градиент и все остальные элементы
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25)),
                      // Фоновый градиент
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
                      children: [
                        SizedBox(
                          height: 2.5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Создать учётную запись',
                              style: TextStyle(
                                fontFamily: 'Gilroy-Light',
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.67.w, vertical: 0.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 1.72.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 66.67.w,
                                      child: Text('Фамилия*',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy-Light',
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 0.94.h,
                                    ),
                                    TextField(
                                      controller:
                                          registerModel.lastNameController,
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                      textAlign: TextAlign.start,
                                      cursorColor:
                                          const Color.fromRGBO(2, 201, 141, 1),
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.5.h,
                                          horizontal: 2.77.w,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            220, 220, 220, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.625.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 66.67.w,
                                      child: Text('Имя*',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy-Light',
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 0.94.h,
                                    ),
                                    TextField(
                                      controller:
                                          registerModel.firstNameController,
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                      textAlign: TextAlign.start,
                                      cursorColor:
                                          const Color.fromRGBO(2, 201, 141, 1),
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.5.h,
                                          horizontal: 2.77.w,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            220, 220, 220, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.625.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 66.67.w,
                                      child: Text('Отчество',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy-Light',
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 0.94.h,
                                    ),
                                    TextField(
                                      controller:
                                          registerModel.middleNameController,
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                      textAlign: TextAlign.start,
                                      cursorColor:
                                          const Color.fromRGBO(2, 201, 141, 1),
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.5.h,
                                          horizontal: 2.77.w,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            220, 220, 220, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.625.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 66.67.w,
                                      child: Text('Пароль*',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy-Light',
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 0.94.h,
                                    ),
                                    TextField(
                                      controller:
                                          registerModel.passwordController,
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                      textAlign: TextAlign.start,
                                      cursorColor:
                                          const Color.fromRGBO(2, 201, 141, 1),
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.5.h,
                                          horizontal: 2.77.w,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            220, 220, 220, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.625.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 20.w,
                                      // child: Text(
                                      //   'Адрес электронной почты*',
                                      // style: TextStyle(
                                      //   fontFamily: 'Gilroy-Light',
                                      //   fontSize: 10.sp,
                                      //   color: Colors.white,
                                      // ),
                                      // ),
                                      // ? Вариант с надписью 'Адрес электронной почты*'
                                      child: Text(
                                        'E-mail*',
                                        style: TextStyle(
                                          fontFamily: 'Gilroy-Light',
                                          fontSize: 10.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      //? Вариант с надписью 'E-mail*'
                                    ),
                                    SizedBox(
                                      height: 0.94.h,
                                    ),
                                    TextField(
                                      controller: registerModel.emailController,
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                      textAlign: TextAlign.start,
                                      cursorColor:
                                          const Color.fromRGBO(2, 201, 141, 1),
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.5.h,
                                          horizontal: 2.77.w,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            220, 220, 220, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.625.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 25.w,
                                      child: Text(
                                        'Дата рождения*',
                                        style: TextStyle(
                                          fontFamily: 'Gilroy-Light',
                                          fontSize: 10.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.94.h,
                                    ),
                                    TextField(
                                      onTap: () =>
                                          registerModel.setDate(context),
                                      controller: registerModel.dateController,
                                      readOnly: true,
                                      style: TextStyle(
                                        fontFamily: 'Gilroy-Light',
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                      ),
                                      textAlign: TextAlign.start,
                                      cursorColor:
                                          const Color.fromRGBO(2, 201, 141, 1),
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.5.h,
                                          horizontal: 2.77.w,
                                        ),
                                        // hintText: 'dd.mm.yyyy',
                                        // hintStyle: TextStyle(
                                        //   fontFamily: 'Gilroy-Light',
                                        //   fontSize: 16.sp,
                                        //   color: Colors.grey,
                                        // ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                220, 220, 220, 1),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            220, 220, 220, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.625.h,
                                    ),
                                    SizedBox(
                                      height: 1.88.h,
                                      width: 45.w,
                                      child: Text(
                                        '* - Обязательное поле для ввода',
                                        style: TextStyle(
                                          fontFamily: 'Gilroy-Light',
                                          fontSize: 9.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 4.6875.h,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(50),
                                            ),
                                          ),
                                          minimumSize:
                                              Size(66.66667.w, 4.6875.h),
                                          backgroundColor: const Color.fromRGBO(
                                              27, 208, 184, 1),
                                          side: const BorderSide(
                                            width: 0,
                                            color:
                                                Color.fromRGBO(27, 208, 184, 1),
                                          ),
                                        ),
                                        onPressed: () {
                                          registerModel.registerUser(context);
                                        },
                                        child: Text(
                                          'Продолжить',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy-Light',
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.5.h,
                                    ),
                                    SizedBox(
                                      height: 2.5.h,
                                      width: 66.67.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Уже зарегистрированы? ',
                                            style: TextStyle(
                                              fontFamily: 'Gilroy-Light',
                                              fontSize: 11.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: TextButton.styleFrom(
                                              padding: const EdgeInsets.all(0),
                                            ),
                                            child: Text(
                                              'Войти',
                                              style: TextStyle(
                                                fontFamily: 'Gilroy-Light',
                                                fontSize: 11.sp,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.3.h,
                                    ),
                                    SizedBox(
                                      height: 2.5.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              'Связаться с нами',
                                              style: TextStyle(
                                                fontFamily: 'Gilroy-Light',
                                                fontSize: 10.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.5.h,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
