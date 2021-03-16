// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../pages/farms/farm_details.page.dart';
import '../pages/farms/farms.page.dart';
import '../pages/login/login.page.dart';
import '../pages/splash/splash.page.dart';

class Routes {
  static const String splashPage = '/';
  static const String loginPage = '/login';
  static const String farmsPage = '/farms';
  static const String farmDetails = '/farm-details';
  static const all = <String>{
    splashPage,
    loginPage,
    farmsPage,
    farmDetails,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.farmsPage, page: FarmsPage),
    RouteDef(Routes.farmDetails, page: FarmDetails),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<SplashPage>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return buildAdaptivePageRoute<LoginPage>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    FarmsPage: (data) {
      return buildAdaptivePageRoute<FarmsPage>(
        builder: (context) => FarmsPage(),
        settings: data,
      );
    },
    FarmDetails: (data) {
      return buildAdaptivePageRoute<FarmDetails>(
        builder: (context) => FarmDetails(),
        settings: data,
      );
    },
  };
}
