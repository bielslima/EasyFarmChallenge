import 'package:easy_farm/models/Credentials.dart';
import 'package:easy_farm/models/User.dart';

abstract class AuthRepository {
  Future<User> authUser(String email, String password);
  Future<Credentials> verifyLogin();
}
