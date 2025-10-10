import 'package:flutter_application_2/data/datasources/api/login_datasource.dart';
import 'package:flutter_application_2/data/dtos/login_request.dart';
import 'package:flutter_application_2/data/dtos/login_response.dart';
import 'package:flutter_application_2/domain/entities/login.dart';
import 'package:flutter_application_2/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository{

  LoginRepositoryImpl(this.loginDatasource);

  final LoginDatasource loginDatasource;

  @override
  Future<Login> getLogin({
    required String loginId,
    required String password,
    required String authGroup,
  }) async {
    
    final request = LoginRequest(
      authGroup: authGroup,
      loginId: loginId,
      password: password,
    );

    final response = await loginDatasource.getLogin(request);

    return response.toEntity();
  }

  @override
  Future<String> getAuthKey() async {
    final response = await loginDatasource.getAuthKey();

    return response.key;
  }

  
}