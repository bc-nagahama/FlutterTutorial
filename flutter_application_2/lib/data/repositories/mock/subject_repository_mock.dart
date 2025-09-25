import 'package:flutter_application_2/data/dtos/subjects_response.dart';
import 'package:flutter_application_2/domain/entities/subjects.dart' hide Subject, Unit, Lesson;
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';

class SubjectRepositoryMock implements SubjectRepository{
  SubjectRepositoryMock();

  @override
  Future<Subjects> getSubjects() async{
    final mockResponse = SubjectsResponse(
      subjects: [
        Subject(
          subjectName: '数学',
          unit: Unit(
            unitName: '微分積分',
            grade: '中2',
            lesson: Lesson(
              lessonName: '微分積分の解き方',
              difficulty: 2,
            ),
          ),
        ),
        Subject(
          subjectName: '英語',
          unit: Unit(
            unitName: '現在完了形',
            grade: '中3',
            lesson: Lesson(
              lessonName: '現在完了形の使い方',
              difficulty: 3,
            ),
          ),
        )
      ],
    );

    return Future.value(mockResponse.toEntity());
  }
}