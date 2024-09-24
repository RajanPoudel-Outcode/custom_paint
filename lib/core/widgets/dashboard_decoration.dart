import 'package:flutter/material.dart';

class DashboardDecoration extends Decoration {
  const DashboardDecoration({this.height});

  final double? height;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _ContainerDecorationPainter(height);
}

class _ContainerDecorationPainter extends BoxPainter {
  _ContainerDecorationPainter(this.height);

  final double? height;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final bounds = configuration.size;
    final width = bounds!.width;
    final effectiveHeight = height ?? (bounds.height / 4.0);
    Paint paint = Paint()
      ..color = const Color(0xFFED1845)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Path path = Path();
    path.lineTo(0, effectiveHeight * 0.2);
    path.cubicTo(
      width * 0.35, effectiveHeight * 0.9, // First control point
      width * 0.6, effectiveHeight * 0.3, // Second control point
      width, effectiveHeight * 0.8, // End point
    );

    path.lineTo(width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }
}
