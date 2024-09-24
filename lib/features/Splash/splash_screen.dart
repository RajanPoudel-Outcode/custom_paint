import 'package:auto_route/auto_route.dart';
import 'package:blaast_custom_paint/core/routes/route.gr.dart';
import 'package:blaast_custom_paint/core/widgets/wave_paint.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      context.router.push(const DashboardRoute());
    
    });
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xFFED1845),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomPaint(
              size:
                  Size(double.infinity, MediaQuery.sizeOf(context).height / 4),
              painter: WavePainter(),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.7, 1),
                    colors: <Color>[
                      Color(0xffeeee00),
                      Color(0xffeeff00),
                      Color(0xff00ffbb),
                      Color(0xff00ffdd),
                      Color(0xff0055ff),
                      Color(0xff8800ff),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Custom Paint',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CircularProgressIndicator.adaptive()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
