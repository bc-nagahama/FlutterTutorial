import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:flutter_application_2/data/dtos/login_request.dart';
import 'package:flutter_application_2/data/dtos/login_response.dart';

part 'login_datasource.g.dart';

@RestApi()
abstract class LoginDatasource {
  factory LoginDatasource(Dio dio, {String? baseUrl}) = _LoginDatasource;

  @POST('https://zap-customer-st.benesse.ne.jp/customer-service/auth/login')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<LoginResponse> getLogin(
    @Body() LoginRequest request,
  );

}