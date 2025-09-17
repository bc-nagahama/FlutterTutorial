import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects.freezed.dart';
part 'subjects.g.dart';

@freezed 
abstract class Subjects with _$Subjects{
  const factory Subjects({
    @Default([]) List<Subject> subjects,
  }) = _Subjects;

  factory Subjects.fromJson(Map<String, dynamic> json) =>
   _$SubjectsFromJson(json);
}

@freezed 
abstract class Subject with _$Subject{
  const factory Subject({
    @Default('') String subjectName,
    @Default(Unit()) Unit unit,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
   _$SubjectFromJson(json);
}

@freezed 
abstract class Unit with _$Unit {
  const factory Unit({
    @Default('') String unitName,
    @Default('') String grade,
    @Default(Lesson()) Lesson lesson,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) =>
   _$UnitFromJson(json);
}

@freezed 
abstract class Lesson with _$Lesson{
  const factory Lesson({
    @Default('') String lessonName,
    @Default(0) int difficulty,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) =>
   _$LessonFromJson(json);
}