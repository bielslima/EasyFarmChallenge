// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farms.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FarmsController on _FarmsControllerBase, Store {
  final _$isLoadingFarmsAtom =
      Atom(name: '_FarmsControllerBase.isLoadingFarms');

  @override
  bool get isLoadingFarms {
    _$isLoadingFarmsAtom.reportRead();
    return super.isLoadingFarms;
  }

  @override
  set isLoadingFarms(bool value) {
    _$isLoadingFarmsAtom.reportWrite(value, super.isLoadingFarms, () {
      super.isLoadingFarms = value;
    });
  }

  final _$farmsAtom = Atom(name: '_FarmsControllerBase.farms');

  @override
  List<Farms> get farms {
    _$farmsAtom.reportRead();
    return super.farms;
  }

  @override
  set farms(List<Farms> value) {
    _$farmsAtom.reportWrite(value, super.farms, () {
      super.farms = value;
    });
  }

  final _$_FarmsControllerBaseActionController =
      ActionController(name: '_FarmsControllerBase');

  @override
  void setFarms(List<Farms> list) {
    final _$actionInfo = _$_FarmsControllerBaseActionController.startAction(
        name: '_FarmsControllerBase.setFarms');
    try {
      return super.setFarms(list);
    } finally {
      _$_FarmsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool v) {
    final _$actionInfo = _$_FarmsControllerBaseActionController.startAction(
        name: '_FarmsControllerBase.setLoading');
    try {
      return super.setLoading(v);
    } finally {
      _$_FarmsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingFarms: ${isLoadingFarms},
farms: ${farms}
    ''';
  }
}
