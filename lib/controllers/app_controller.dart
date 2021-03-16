import 'package:auto_route/auto_route.dart';
import 'package:easy_farm/constants/Routes.dart';
import 'package:easy_farm/models/Farm.dart';
import 'package:easy_farm/models/User.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'app_controller.g.dart';

@singleton
class ApplicationController = _ApplicationControllerBase
    with _$ApplicationController;

abstract class _ApplicationControllerBase with Store {
  User _currentUser;
  Farms currentFarm;
  Map<String, dynamic> _headers = {};

  String get userName => this._currentUser.name;
  void setUser(User u) => this._currentUser = u;
  void setFarm(Farms f) => this.currentFarm = f;
  Map<String, dynamic> get headers => this._headers;
  void setHeaders(Map h) {
    print(h);
    this._headers = h;
  }

  void logout() {
    ExtendedNavigator.root
        .pushAndRemoveUntil(AppRoutes.loginView, (route) => false);
    this.setUser(null);
  }
}
