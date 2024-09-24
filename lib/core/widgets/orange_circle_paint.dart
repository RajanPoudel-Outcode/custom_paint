import 'package:flutter/material.dart';

class OrangeCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFB8A76).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(0, 0, size.width, size.height),
            bottomRight: Radius.circular(size.width * 0.5),
            bottomLeft: Radius.circular(size.width * 0.5),
            topLeft: Radius.circular(size.width * 0.5),
            topRight: Radius.circular(size.width * 0.5)),
        paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4931820, size.height * 0.7863650);
    path_1.cubicTo(
        size.width * 0.6551000,
        size.height * 0.7863650,
        size.width * 0.7863650,
        size.height * 0.6551000,
        size.width * 0.7863650,
        size.height * 0.4931820);
    path_1.cubicTo(
        size.width * 0.7863650,
        size.height * 0.3312620,
        size.width * 0.6551000,
        size.height * 0.2000000,
        size.width * 0.4931820,
        size.height * 0.2000000);
    path_1.cubicTo(
        size.width * 0.3312620,
        size.height * 0.2000000,
        size.width * 0.2000000,
        size.height * 0.3312620,
        size.width * 0.2000000,
        size.height * 0.4931820);
    path_1.cubicTo(
        size.width * 0.2000000,
        size.height * 0.6551000,
        size.width * 0.3312620,
        size.height * 0.7863650,
        size.width * 0.4931820,
        size.height * 0.7863650);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
