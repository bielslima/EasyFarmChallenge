import 'package:auto_route/auto_route.dart';
import 'package:easy_farm/constants/Routes.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/models/User.dart';
import 'package:easy_farm/repositories/auth_repository.dart';
import 'package:easy_farm/services/notification_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../controllers/app_controller.dart';

part 'login.controller.g.dart';

@singleton
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final AuthRepository _authRepository = getIt<AuthRepository>();
  final ApplicationController _appController = getIt<ApplicationController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController txtEmail =
      new TextEditingController(text: "caio@eagro.ag");
  TextEditingController txtSenha = new TextEditingController(text: "123456");

  @observable
  bool isLoading = false;

  @action
  void setLoading(bool v) => this.isLoading = v;

  Future login() async {
    this.setLoading(true);

    if (!this.formKey.currentState.validate()) {
      this.setLoading(false);
      return;
    }

    final User _response =
        await _authRepository.authUser(this.txtEmail.text, this.txtSenha.text);

    if (_response == null) {
      AppNotifications.showToastError(
          'Erro inexperado ao tentar fazer o login');
      this.setLoading(false);

      return;
    }

    _appController.setUser(_response);

    ExtendedNavigator.root
        .pushAndRemoveUntil(AppRoutes.farmsView, (route) => false);

    this.setLoading(false);
  }
}
