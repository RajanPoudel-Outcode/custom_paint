import 'package:auto_route/auto_route.dart';
import 'package:blaast_custom_paint/core/widgets/arrow_clipper.dart';
import 'package:flutter/material.dart';

import '../../../core/routes/route.gr.dart';
import '../../../core/widgets/app_bar_paint.dart';
import '../../../core/widgets/bump_container.dart';
import '../../../core/widgets/circle_paint.dart';
import '../../../core/widgets/dash_liner_paint.dart';
import '../../../core/widgets/dotted_border.dart';
import '../../../core/widgets/line_paint.dart';
import '../../../core/widgets/message_clipper.dart';
import '../../../core/widgets/orange_circle_paint.dart';
import '../../../core/widgets/triangle_paint.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const SizedBox(
                height: 120,
              ),
              InkWell(
                onTap: () {
                  context.router.push(const HomeRoute());
                },
                child: const AppDottedBorder(
                  color: Colors.red,
                  radius: 20,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        Text("Click Me", style: TextStyle(color: Colors.red)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const DashedLine(),
              const SizedBox(height: 20),
              const Text("Line Paint"),
              CustomPaint(
                size: const Size(150, 150),
                painter: LinePainter(),
              ),
              const SizedBox(height: 20),
              const DashedLine(),
              const Text("Triangle Paint"),
              CustomPaint(
                size: Size(MediaQuery.sizeOf(context).width / 2, 150),
                painter: TrianglePainter(),
              ),
              const SizedBox(height: 20),
              const DashedLine(),
              const Text("Circle Paint"),
              CustomPaint(
                size: Size(MediaQuery.sizeOf(context).width, 300),
                painter: CirclePainter(),
              ),
              const SizedBox(height: 20),
              const DashedLine(),
              const Text(" Orange Circle Paint"),
              CustomPaint(
                size: const Size(300, 320),
                painter: OrangeCirclePainter(),
              ),
              const SizedBox(height: 20),
              const DashedLine(),
              const Text("Bump Container"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    2,
                    (index) => CustomPaint(
                        painter: StatPainter(Colors.red),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 3,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Stat $index',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const DashedLine(),
              const Text("Radius Paint"),
              CustomPaint(
                size: const Size(350, 350),
                painter: RadiusPainter(showPath: true),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("Message Clipper"),
              ClipPath(
                clipper: MessageClipper(borderRadius: 16),
                child: Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Arrow Clipper"),
              ClipPath(
                clipper: ArrowClipper(70, 80, Edge.RIGHT),
                child: Container(
                  height: 120,
                  color: Colors.red,
                ),
              ),
              ClipPath(
                clipper: ArrowClipper(70, 80, Edge.LEFT),
                child: Container(
                  height: 120,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const CustomAppBar()
        ],
      ),
    );
  }
}

class RadiusPainter extends CustomPainter {
  RadiusPainter({
    required this.showPath,
  });

  final bool showPath;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(1, 0);
    final width = size.width;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 2;

    final path = Path()
      ..lineTo(0, size.height - 20)
      ..quadraticBezierTo(0, size.height, 20, size.height)
      ..lineTo(width - 20, size.height)
      ..quadraticBezierTo(width, size.height, width, size.height - 20)
      ..lineTo(width, 0);

    canvas.drawPath(path, paint);
    canvas.drawPath(path, Paint()..color = Colors.green);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size.fromHeight(120.0),
      painter: AppBarPainter(),
    );
  }
}
