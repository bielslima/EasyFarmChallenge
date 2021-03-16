import 'dart:convert';

import 'package:easy_farm/constants/Endpoints.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/models/Farm.dart';
import 'package:easy_farm/repositories/farm_repository.dart';
import 'package:easy_farm/services/http_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FarmRepository)
class FarmImplRepository implements FarmRepository {
  HttpService _httpService = getIt<HttpService>();

  Future<List<Farms>> listFarms() async {
    try {
      final Response _response =
          await _httpService.httpGet(Endpoints.listFarms);
      // print(_response);
      if (_response.statusCode == 200) {
        final _result = _response.data['data'];

        return _parseFarms(_result);
      } else {
        return null;
      }
    } catch (e) {
      print("Farm Repo 28");
      print(e);
      return null;
    }
  }

  List<Farms> _parseFarms(List _list) =>
      _list.map((e) => Farms.fromJson(e)).toList();
}
