import 'package:flutter/material.dart';

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    
    path.cubicTo(
      size.width * 0.35, size.height * 0.9, // First control point
      size.width * 0.6, size.height * 0.3, // Second control point
      size.width, size.height * 0.8, // End point
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
