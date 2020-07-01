import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 260.0,
          height: 260.0,
          // color: Colors.black12,
          child: CustomPaint(
            painter: MiPainterPersonalizado(),
          ),
        ),
      ),
    );
  }
}

class MiPainterPersonalizado extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
                  ..color       = Color(0xff21232A)
                  ..strokeWidth = 5.0
                  ..strokeCap   = StrokeCap.round
                  ..style       = PaintingStyle.stroke;

    final path = Path();

    // path.lineTo(size.width * 0.5, 0.0);
    // path.lineTo(size.width * 0.5, size.height * 0.5);
    // path.lineTo(0.0, size.height * 0.5);
    // path.lineTo(0.0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, size.height * 0.5);
    // path.lineTo(size.width * 0.5, size.height * 0.5);

    //Primer palo vertical
    path.moveTo(size.width * 0.3333, 0.0);
    path.lineTo(size.width * 0.3333, size.height);

    //Segundo palo vertical
    path.moveTo(size.width * 0.6666, 0.0);
    path.lineTo(size.width * 0.6666, size.height);

    //Primer palo horizontal
    path.moveTo(0.0, size.height * 0.3333);
    path.lineTo(size.width, size.height * 0.3333);

    //Segundo palo horizontal
    path.moveTo(0.0, size.height * 0.6666);
    path.lineTo(size.width, size.height * 0.6666);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MiPainterPersonalizado oldDelegate) => true;
}