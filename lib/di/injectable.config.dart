// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../controllers/app_controller.dart' as _i10;
import '../pages/farms/controller/farms.controller.dart' as _i7;
import '../pages/login/controller/login.controller.dart' as _i11;
import '../repositories/auth_repository.dart' as _i3;
import '../repositories/farm_repository.dart' as _i5;
import '../repositories/implementations/auth_impl_repository.dart' as _i4;
import '../repositories/implementations/farm_impl_repository.dart' as _i6;
import '../services/http_service.dart' as _i8;
import '../services/local_storage.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthRepository>(() => _i4.AuthImplRepository());
  gh.factory<_i5.FarmRepository>(() => _i6.FarmImplRepository());
  gh.factory<_i7.FarmsController>(() => _i7.FarmsController());
  gh.factory<_i8.HttpService>(() => _i8.HttpService());
  gh.factory<_i9.LocalStorage>(() => _i9.LocalStorage());
  gh.singleton<_i10.ApplicationController>(_i10.ApplicationController());
  gh.singleton<_i11.LoginController>(_i11.LoginController());
  return get;
}
