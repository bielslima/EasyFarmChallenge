import 'package:auto_route/auto_route.dart';
import 'package:easy_farm/constants/Routes.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/repositories/auth_repository.dart';
import 'package:easy_farm/services/notification_service.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  AuthRepository _authRepository = getIt();

  verifyIsLogged() async {
    // final _response = await _authRepository.verifyLogin();

    // print(_response);

    // if (_response != null) {
    //   AppNotifications.showToastSuccess('Sucesso');
    // } else {
    // }
    await Future.delayed(Duration(seconds: 3));

    ExtendedNavigator.root
        .pushAndRemoveUntil(AppRoutes.loginView, (route) => false);
  }
}
