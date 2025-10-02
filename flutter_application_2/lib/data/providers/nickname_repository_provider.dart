import 'package:dio/dio.dart';
import 'package:flutter_application_2/data/datasources/api/nickname_datasource.dart';
import 'package:flutter_application_2/data/interceptors/zap_interceptor.dart';
import 'package:flutter_application_2/data/repositories/nickname_repository_impl.dart';
import 'package:flutter_application_2/domain/repositories/nickname_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nicknameRepositoryProvider = Provider<NicknameRepository>((ref) {
  final dio = Dio();
  dio.interceptors.add(ZapInterceptor());
  final nicknameDatasource = NicknameDatasource(
    dio,
    baseUrl: 'https://zap-customer-st.benesse.ne.jp',
  );
  return NicknameRepositoryImpl(nicknameDatasource);
});