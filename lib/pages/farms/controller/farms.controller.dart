import 'package:easy_farm/controllers/app_controller.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/models/Farm.dart';
import 'package:easy_farm/repositories/farm_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'farms.controller.g.dart';

@injectable
class FarmsController = _FarmsControllerBase with _$FarmsController;

abstract class _FarmsControllerBase with Store {
  FarmRepository _repository = getIt<FarmRepository>();
  ApplicationController appController = getIt<ApplicationController>();

  @observable
  bool isLoadingFarms = false;

  @observable
  List<Farms> farms = [];

  @action
  void setFarms(List<Farms> list) {
    this.farms = list;
  }

  void setFarm(Farms farm) {
    appController.setFarm(farm);
  }

  @action
  void setLoading(bool v) {
    this.isLoadingFarms = v;
  }

  listFarms() async {
    this.setLoading(true);

    final List<Farms> _result = await _repository.listFarms();

    this.setFarms(_result);

    this.setLoading(false);
  }
}
