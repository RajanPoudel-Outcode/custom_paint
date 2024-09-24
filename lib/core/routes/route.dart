import 'package:auto_route/auto_route.dart';
import 'package:blaast_custom_paint/core/routes/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class BlaastCustomPaintRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          keepHistory: false,
          initial: true,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          children: [
            AutoRoute(page: DashboardRoute.page,initial: true),
            AutoRoute(page: HomeRoute.page),
          ],
        ),
        AutoRoute(page: HomeRoute.page),
      ];


}
