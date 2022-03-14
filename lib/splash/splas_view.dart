import 'package:flutter/material.dart';
import '../pages/on_boarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _toOnbording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.30),
                child: Container(
                  height: 200,
                  child: Image.asset('assets/image/splash.png'),
                  alignment: Alignment.center,
                ))
            ]),
        painter: _SplashCanvas()),
        height: double.infinity,
        width: double.infinity)),
    );
  }

  _toOnbording() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OnBoarding(),
      ),
    );
  }
}

class _SplashCanvas extends CustomPainter {
  @override

  // ignore: missing_return
  Scaffold paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = const Color(0xFF76AB56);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.10);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.20, size.width / 3,
        size.height * 0.12);
    path.quadraticBezierTo(size.width / 2.1, size.height * 0.08, (size.width / 3) * 2,
        size.height * 0.12);
    path.quadraticBezierTo(size.width / 1.2, size.height * 0.15, (size.width / 2) * 3, size.height * 0.1);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

    // Dibujo de la parte inferior

    final paint2 = Paint();

    paint2.color = const Color(0xFF76AB56);
    paint2.style = PaintingStyle.fill;
    paint2.strokeWidth = 5;

    final path2 = Path();

    path2.lineTo(0, size.height);
    path2.quadraticBezierTo(
        size.width * 0.70, size.height * 0.80, size.width, size.height);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, paint2);

    canvas.scale(0.20, 0.20);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
