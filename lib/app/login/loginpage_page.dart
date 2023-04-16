import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sized_context/sized_context.dart';
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
    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: <Widget>[
          SizedBox(
              height: context.heightPct(.16),
              child: SizedBox(
                  height: context.heightPct(.62),
                  width: context.widthPct(.28),
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
                  height: context.heightPct(.08),
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
                  height: context.heightPct(.08),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: context.heightPct(.025),
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
                  height: context.heightPct(.01),
                ),
                SizedBox(
                  height: context.heightPct(.05),
                  width: context.widthPct(.70),
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
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: context.heightPct(.025),
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
                  height: context.heightPct(.01),
                ),
                SizedBox(
                  height: context.heightPct(.05),
                  width: context.widthPct(.70),
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
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                  height: context.heightPct(.12),
                ),
                const SizedBox(
                  height: 11,
                ),
                SizedBox(
                  height: context.heightPct(.05),
                  width: context.widthPct(.66),
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
                      width: context.widthPct(.0095),
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
                      width: context.widthPct(.005),
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
                  height: context.heightPct(.03),
                  width: context.widthPct(.35),
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
      ),
    );
  }
}
