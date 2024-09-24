import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    // Start from the left bottom corner
    path.moveTo(0, size.height * 0.2);

    // Create a cubic curve (three control points)
    path.cubicTo(
      size.width * 0.15, size.height * 0.1, // First control point
      size.width * 0.75, size.height * 0.95, // Second control point
      size.width, size.height * 0.4, // End point
    );

    // Continue the path to the bottom and close it
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
