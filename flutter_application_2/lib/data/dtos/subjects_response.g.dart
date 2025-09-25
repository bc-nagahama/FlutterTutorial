// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectsResponse _$SubjectsResponseFromJson(Map<String, dynamic> json) =>
    _SubjectsResponse(
      subjects:
          (json['subjects'] as List<dynamic>?)
              ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SubjectsResponseToJson(_SubjectsResponse instance) =>
    <String, dynamic>{'subjects': instance.subjects};

_Subject _$SubjectFromJson(Map<String, dynamic> json) => _Subject(
  subjectName: json['subjectName'] as String? ?? '',
  unit: json['unit'] == null
      ? const Unit()
      : Unit.fromJson(json['unit'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubjectToJson(_Subject instance) => <String, dynamic>{
  'subjectName': instance.subjectName,
  'unit': instance.unit,
};

_Unit _$UnitFromJson(Map<String, dynamic> json) => _Unit(
  unitName: json['unitName'] as String? ?? '',
  grade: json['grade'] as String? ?? '',
  lesson: json['lesson'] == null
      ? const Lesson()
      : Lesson.fromJson(json['lesson'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UnitToJson(_Unit instance) => <String, dynamic>{
  'unitName': instance.unitName,
  'grade': instance.grade,
  'lesson': instance.lesson,
};

_Lesson _$LessonFromJson(Map<String, dynamic> json) => _Lesson(
  lessonName: json['lessonName'] as String? ?? '',
  difficulty: (json['difficulty'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$LessonToJson(_Lesson instance) => <String, dynamic>{
  'lessonName': instance.lessonName,
  'difficulty': instance.difficulty,
};
