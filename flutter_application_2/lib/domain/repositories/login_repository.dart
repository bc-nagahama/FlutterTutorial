import 'package:flutter_application_2/domain/entities/login.dart';

abstract class LoginRepository {
  Future<Login> getLogin({
    required String loginId,
    required String password,
    required String authGroup,
  });

}