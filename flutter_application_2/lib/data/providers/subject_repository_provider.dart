import 'package:dio/dio.dart';
import 'package:flutter_application_2/data/datasources/subject_datasource.dart';
import 'package:flutter_application_2/data/repositories/subject_repository_impl.dart';
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final subjectRepositoryProvider = Provider<SubjectRepository>((ref) {
  final subjectDatasource = SubjectDatasource(Dio());
  return SubjectRepositoryImpl(subjectDatasource);
});