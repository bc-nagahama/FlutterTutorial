import 'package:flutter_application_2/data/dtos/subjects_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'subject_datasource.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:5502/flutter_application_2')

abstract class SubjectDatasource{
  factory SubjectDatasource(Dio dio, {String? baseUrl}) = _SubjectDatasource;

  @GET('/practice.json')
  Future<SubjectsResponse> getSubjects();
}