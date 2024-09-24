import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/dashboard_decoration.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // const SingleChildScrollView(
          //   child: Column(
          //     children: [],
          //   ),
          // ),
          Container(
            // height: MediaQuery.sizeOf(context).height,
            // width: double.infinity,
            decoration: const DashboardDecoration(height: 200),
            // child: const Text("data"),
          ),
        ],
      ),
    );
  }
}
