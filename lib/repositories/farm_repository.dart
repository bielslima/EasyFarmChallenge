import 'package:easy_farm/models/Farm.dart';

abstract class FarmRepository {
  Future<List<Farms>> listFarms();
}
