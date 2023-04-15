import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/app/assets/image.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 42,
            left: (MediaQuery.of(context).size.width - 270) / 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 270,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color(0xFF801CAF), width: 2),
                ),
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(seconds: 3),
                  builder: (BuildContext context, double value, Widget? child) {
                    return CustomPaint(
                      foregroundPainter: _CustomProgressBar(value: value),
                      child: Container(),
                    );
                  },
                  onEnd: () {
                    // Navigator.pushReplacementNamed(context, '/home');
                  },
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -140),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'lib/app/assets/logo.svg',
                    width: 180, height: 130,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 280,
                    height: 92,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'FINAPP',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w800, // Изменено на FontWeight.w800
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomProgressBar extends CustomPainter {
  final double value;

  _CustomProgressBar({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = Colors.transparent
      ..strokeWidth = 18.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final Paint valuePaint = Paint()
      ..color = Color(0xFF03DE9C)
      ..strokeWidth = 18.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(8, size.height / 2),
      Offset(size.width - 8, size.height / 2),
      backgroundPaint,
    );

    canvas.drawLine(
      Offset(10, size.height / 2),
      Offset(10 + (size.width - 20) * value, size.height / 2),
      valuePaint,
    );
  }

  @override
  bool shouldRepaint(covariant _CustomProgressBar old) => value != old.value;
}
