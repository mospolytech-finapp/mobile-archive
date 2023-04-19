import 'package:finapp/app/models/registerpage_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    final registerModel = Provider.of<RegisterModel>(context, listen: false);
    return Sizer(
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
                  padding: EdgeInsets.only(
                    left: 16.667.w,
                    top: 0.h,
                    right: 16.67.w,
                    bottom: 0.h,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.5.h,
                      ),
                      Row(
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
                      SizedBox(
                        height: 1.72.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 66.67.w,
                        child: Text('Фамилия*',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 10.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          controller:registerModel.lastNameController ,
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
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
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 66.67.w,
                        child: Text('Имя*',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 10.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          controller: registerModel.firstNameController,
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
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
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 66.67.w,
                        child: Text('Отчество',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 10.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          controller: registerModel.middleNameController,
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
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
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 66.67.w,
                        child: Text('Пароль*',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 10.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          controller: registerModel.passwordController,
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
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
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 20.w,
                        // child: Text(
                        //   'Адрес электронной почты*',
                        //   style: GoogleFonts.bebasNeue(
                        //     fontSize: 10.sp,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        //? Вариант с надписью 'Адрес электронной почты*'
                        child: Text(
                          'E-mail*',
                          style: GoogleFonts.inter(
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                        //? Вариант с надписью 'E-mail*'
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          controller: registerModel.emailController,
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
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
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 25.w,
                        child: Text(
                          'Дата рождения*',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          controller: registerModel.dateController,
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            hintText: 'dd.mm.yyyy',
                            hintStyle: GoogleFonts.bebasNeue(
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
                        ),
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 66.67.w,
                        child: Text('Пол',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 10.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 0.94.h,
                      ),
                      SizedBox(
                        width: 66.67.h,
                        height: 4.69.h,
                        child: TextField(
                          style: GoogleFonts.bebasNeue(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.start,
                          cursorColor: const Color.fromRGBO(2, 201, 141, 1),
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(220, 220, 220, 1),
                              ),
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
                      ),
                      SizedBox(
                        height: 0.625.h,
                      ),
                      SizedBox(
                        height: 1.88.h,
                        width: 45.w,
                        child: Text('* - Обязательное поле для ввода',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 9.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
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
                            backgroundColor: const Color.fromRGBO(27, 208, 184, 1),
                            side: const BorderSide(
                              width: 0,
                              color: Color.fromRGBO(27, 208, 184, 1),
                            ),
                          ),
                          onPressed: () {
                            registerModel.registerUser(context);
                          },
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
                        height: 1.5.h,
                      ),
                      SizedBox(
                        height: 2.5.h,
                        width: 66.67.w,
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
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                              ),
                              child: Text(
                                'Войти',
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
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
                          ],
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
    );
  }
}
