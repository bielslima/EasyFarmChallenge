import 'package:easy_farm/controllers/app_controller.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class HttpService {
  final Dio _dioInstance = Dio();
  static const BASE_URL = 'https://api.easyfarm.io/v2';

  Map<String, dynamic> makeHeader() {
    ApplicationController appController = getIt<ApplicationController>();
    Map<String, dynamic> _headers = appController.headers;
    _headers['Content-type'] = 'application/json';

    return _headers;
  }

  Future<Response> httpGet(String endpoint) async {
    final url = '$BASE_URL$endpoint';

    return _dioInstance.get(
      url,
      options: Options(
        headers: makeHeader(),
      ),
    );
  }

  Future<Response> httpPost(String endpoint,
      {@required Map<String, dynamic> data}) async {
    final url = BASE_URL + endpoint;
    return _dioInstance.post(
      url,
      data: data,
      options: Options(
        headers: makeHeader(),
      ),
    );
  }
}
