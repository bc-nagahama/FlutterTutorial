// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectsResponse _$SubjectsResponseFromJson(Map<String, dynamic> json) =>
    _SubjectsResponse(
      subjects:
          (json['subjects'] as List<dynamic>?)
              ?.map((e) => SubjectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SubjectsResponseToJson(_SubjectsResponse instance) =>
    <String, dynamic>{'subjects': instance.subjects};

_SubjectDto _$SubjectDtoFromJson(Map<String, dynamic> json) => _SubjectDto(
  subjectName: json['subjectName'] as String? ?? '',
  unit: json['unit'] == null
      ? null
      : UnitDto.fromJson(json['unit'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubjectDtoToJson(_SubjectDto instance) =>
    <String, dynamic>{
      'subjectName': instance.subjectName,
      'unit': instance.unit,
    };

_UnitDto _$UnitDtoFromJson(Map<String, dynamic> json) => _UnitDto(
  unitName: json['unitName'] as String? ?? '',
  grade: json['grade'] as String? ?? '',
  lesson: json['lesson'] == null
      ? null
      : LessonDto.fromJson(json['lesson'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UnitDtoToJson(_UnitDto instance) => <String, dynamic>{
  'unitName': instance.unitName,
  'grade': instance.grade,
  'lesson': instance.lesson,
};

_LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) => _LessonDto(
  lessonName: json['lessonName'] as String? ?? '',
  difficulty: (json['difficulty'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$LessonDtoToJson(_LessonDto instance) =>
    <String, dynamic>{
      'lessonName': instance.lessonName,
      'difficulty': instance.difficulty,
    };
