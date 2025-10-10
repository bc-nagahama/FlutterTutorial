import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_application_2/data/dtos/auth_key_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_application_2/data/dtos/login_request.dart';
import 'package:flutter_application_2/data/dtos/login_response.dart';

part 'login_datasource.g.dart';

@RestApi()
abstract class LoginDatasource {
  factory LoginDatasource(Dio dio, {String? baseUrl}) = _LoginDatasource;

  @POST('/auth/login')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<LoginResponse> getLogin(
    @Body() LoginRequest request,
  );

  @GET('/auth/key')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<AuthKeyResponse> getAuthKey();

}