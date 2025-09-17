import 'package:flutter_application_2/data/datasources/subject_datasource.dart';
import 'package:flutter_application_2/data/dtos/subjects_response.dart';
import 'package:flutter_application_2/domain/entities/subjects.dart';
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';

class SubjectRepositoryImpl implements SubjectRepository{
  //SubjectDatasourceを受け取ってAPIを叩くときに利用する
  SubjectRepositoryImpl(this.subjectDatasource);

  final SubjectDatasource subjectDatasource;

  @override
  Future<Subjects> getSubjects() async{
    final request = SubjectsResponse();

    final response = await subjectDatasource.getSubjects(request);

    return response.toEntity();
  }
}