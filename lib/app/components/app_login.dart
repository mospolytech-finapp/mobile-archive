import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        const SizedBox(height: 150),
        Container(
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
          height: 800,
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Вход',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: GoogleFonts.bebasNeue().fontFamily,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              children: [
                SizedBox(
                  height: 15,
                  child: Text(
                    'Адрес электронной почты',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 30,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
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
                  height: 15,
                  child: Text(
                    'Пароль',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 30,
              child: TextField(
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                      onPressed: () {},
                      icon:
                          const Icon(Icons.visibility_off, color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: const Color(0xffDCDCDC)),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(children: [
              SizedBox(
                height: 15,
                child: Text(
                  'Забыли пароль?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                ),
              ),
            ]),

            const SizedBox(
              height: 11,
            ),
            //!CheckBox
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 97,
            ),
            const SizedBox(
              height: 11,
            ),
            SizedBox(
              height: 30,
              width: 240,
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
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Text(
                  "Нет учетной записи?",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontFamily: GoogleFonts.bebasNeue().fontFamily,
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              height: 15,
              width: 120,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  'Cвязаться с нами',
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                    fontFamily: GoogleFonts.bebasNeue().fontFamily,
                  ),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
