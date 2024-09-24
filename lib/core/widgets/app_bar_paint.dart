import 'package:flutter/material.dart';

class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFFED1845)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.lineTo(0, size.height);
    path.cubicTo(
      size.width * 0.35, size.height * 0.9, // First control point
      size.width * 0.6, size.height * 0.3, // Second control point
      size.width, size.height * 0.8, // End point
    );

    path.lineTo(size.width, 0);
    path.close();
    path.moveTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
