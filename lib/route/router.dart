import 'package:auto_route/auto_route_annotations.dart';
import 'package:easy_farm/pages/farms/farm_details.page.dart';
import 'package:easy_farm/pages/farms/farms.page.dart';
import 'package:easy_farm/pages/login/login.page.dart';
import 'package:easy_farm/pages/splash/splash.page.dart';

import '../constants/Routes.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute<SplashPage>(
    page: SplashPage,
    path: '/',
    initial: true,
  ),
  AdaptiveRoute<LoginPage>(
    page: LoginPage,
    path: AppRoutes.loginView,
  ),
  AdaptiveRoute<FarmsPage>(
    page: FarmsPage,
    path: AppRoutes.farmsView,
  ),
  AdaptiveRoute<FarmDetails>(
    page: FarmDetails,
    path: AppRoutes.farmDetails,
  ),
])
class $AppRouter {
  SplashPage initialScreen;
  FarmsPage farmsView;
  LoginPage loginView;
  FarmDetails farmDetails;
}
