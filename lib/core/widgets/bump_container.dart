import 'package:flutter/material.dart';

class StatPainter extends CustomPainter {
  StatPainter(this.color);

  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    const kBumpHeight = 20.0;
    const kBumpHalfWidth = 15.0;
    const radius = 12.0;

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;
    final p = Path();

    p.moveTo(radius, kBumpHeight);

    //bump
    p.lineTo(size.width / 2 - kBumpHalfWidth, kBumpHeight);
    p.quadraticBezierTo(
        size.width / 2.0, 0.0, size.width / 2 + kBumpHalfWidth, kBumpHeight);

    p.lineTo(size.width - radius, kBumpHeight);

    p.lineTo(size.width - radius, kBumpHeight);
    p.quadraticBezierTo(
        size.width, kBumpHeight, size.width, kBumpHeight + radius);
    p.lineTo(size.width, size.height);

    p.quadraticBezierTo(size.width, size.height + kBumpHeight,
        size.width - radius, size.height + kBumpHeight);
    p.lineTo(radius, size.height + kBumpHeight);

    p.quadraticBezierTo(0.0, size.height + kBumpHeight, 0.0,
        size.height + kBumpHeight - radius);
    p.lineTo(0.0, kBumpHeight + radius);

    p.quadraticBezierTo(0.0, kBumpHeight, radius, kBumpHeight);

    p.close();
    canvas.drawPath(p, paint);
  }

  @override
  bool shouldRepaint(StatPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(StatPainter oldDelegate) => false;
}
