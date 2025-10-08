import 'package:dio/dio.dart';
import 'package:flutter_application_2/data/datasources/api/login_datasource.dart';
import 'package:flutter_application_2/data/repositories/login_repository_impl.dart';
import 'package:flutter_application_2/domain/repositories/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  final loginDatasource = LoginDatasource(Dio());
  return LoginRepositoryImpl(loginDatasource);
});