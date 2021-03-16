import 'dart:convert';

import 'package:easy_farm/constants/Endpoints.dart';
import 'package:easy_farm/constants/Keys.dart';
import 'package:easy_farm/controllers/app_controller.dart';
import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/models/Credentials.dart';
import 'package:easy_farm/models/User.dart';
import 'package:easy_farm/repositories/auth_repository.dart';
import 'package:easy_farm/services/http_service.dart';
import 'package:easy_farm/services/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthImplRepository implements AuthRepository {
  HttpService httpClient = getIt<HttpService>();
  LocalStorage localStorage = getIt<LocalStorage>();
  ApplicationController appController = getIt<ApplicationController>();

  Future<User> authUser(String email, String password) async {
    try {
      final Map<String, dynamic> _data = {
        'email': email,
        'password': password,
      };

      final Response _response =
          await httpClient.httpPost(Endpoints.authUser, data: _data);

      if (_response.statusCode == 200) {
        final _result = _response.data;

        _saveHeaders(_response.headers);

        // await _saveCredentials(Credentials.fromJson(_data));

        return _parseUser(_result);
      } else {
        return null;
      }
    } catch (e) {
      print("impl auth 43 ");
      print(e);
      return null;
    }
  }

  Future<Credentials> verifyLogin() async {
    try {
      final email = await localStorage.getData(Keys.credentialsEmail);
      final password = await localStorage.getData(Keys.credentialsPassword);

      if (email != null && password != null) {
        return Credentials(email: email, password: password);
      }
      return null;
    } catch (e) {
      print("impl auth 58 " + e);
      return null;
    }
  }

  void _saveHeaders(Headers headers) {
    print(headers);
    Map<String, dynamic> _headers = {};
    // print(headers['access-token'][0]);
    // print(headers['uid'][0]);
    // print(headers['client'][0]);
    _headers['access-token'] = headers['access-token'][0];
    _headers['uid'] = headers['uid'][0];
    _headers['client'] = headers['client'][0];
    // print(_headers);
    appController.setHeaders(_headers);
  }

  Future _saveCredentials(Credentials c) async {
    await localStorage.writeData(Keys.credentialsEmail, c.email);
    await localStorage.writeData(Keys.credentialsPassword, c.password);
  }

  User _parseUser(Map json) {
    return User.fromJson(json['data']);
  }
}
