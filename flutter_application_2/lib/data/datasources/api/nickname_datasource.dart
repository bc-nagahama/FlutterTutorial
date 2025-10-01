import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:flutter_application_2/data/dtos/nickname_response.dart';

part 'nickname_datasource.g.dart';

@RestApi()
abstract class NicknameDatasource {
  factory NicknameDatasource(Dio dio, {String? baseUrl}) = _NicknameDatasource;

  @GET('https://zap-customer-st.benesse.ne.jp/customer-service/member-info/nickname')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<NicknameResponse> getNickname();
}