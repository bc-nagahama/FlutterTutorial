import 'package:flutter_application_2/domain/entities/subjects.dart';

abstract class SubjectRepository {
  Future<Subjects> getSubjects();
}