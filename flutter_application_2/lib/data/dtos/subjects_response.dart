import 'package:flutter_application_2/domain/entities/subjects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_response.freezed.dart';
part 'subjects_response.g.dart';

@freezed
abstract class SubjectsResponse with _$SubjectsResponse{
   const factory SubjectsResponse({
    @JsonKey(name :'subjects') @Default([]) List<Subject> subjects,
  }) = _SubjectsResponse;

  factory SubjectsResponse.fromJson(Map<String, dynamic> json) => 
  _$SubjectsResponseFromJson(json);
}

@freezed
abstract class Subject with _$Subject {
  const factory Subject({
    @JsonKey(name: 'subjectName') @Default('') String subjectName,
    @JsonKey(name: 'unit') @Default(Unit()) Unit unit,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
   _$SubjectFromJson(json);
}

@freezed 
abstract class Unit with _$Unit {
  const factory Unit({
    @JsonKey(name: 'unitName') @Default('') String unitName,
    @JsonKey(name: 'grade') @Default('') String grade,
    @JsonKey(name: 'lesson') @Default(Lesson()) Lesson lesson,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) =>
   _$UnitFromJson(json);
}

@freezed 
abstract class Lesson with _$Lesson{
  const factory Lesson({
    @JsonKey(name: 'lessonName') @Default('') String lessonName,
    @JsonKey(name: 'difficulty') @Default(0) int difficulty,
  }) =_Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) =>
   _$LessonFromJson(json);
}

extension SubjectExtension on Subject{
  Subject toEntity() =>
    Subject(
      subjectName: subjectName, 
      unit: unit.map((e) => e.toEntity()),
    );
}

extension UnitExtension on Unit{
  Unit toEntity() => Unit(
    unitName: unitName,
    grade: grade,
    lesson: lesson.map((e) => e.toEntity()),
  );
}

extension LessonExtension on Lesson{
  Lesson toEntity() => Lesson(
    lessonName: lessonName,
    difficulty: difficulty,
  );
}