import 'package:flutter_application_2/data/datasources/subject_datasource.dart';
import 'package:flutter_application_2/data/dtos/subjects_response.dart';
import 'package:flutter_application_2/domain/entities/subjects.dart';
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';

class SubjectRepositoryImpl implements SubjectRepository{
  SubjectRepositoryImpl(this.subjectDatasource);

  final SubjectDatasource subjectDatasource;

  @override
  Future<Subjects> getSubjects() async{

    final response = await subjectDatasource.getSubjects();

    return response.toEntity();
  }
}