import 'package:flutter_application_2/domain/entities/subjects_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_response.freezed.dart';
part 'subjects_response.g.dart';

@freezed
abstract class SubjectsResponse with _$SubjectsResponse{
   const factory SubjectsResponse({
    @JsonKey(name :'subjects') @Default([]) List<SubjectDto> subjects,
  }) = _SubjectsResponse;

  factory SubjectsResponse.fromJson(Map<String, dynamic> json) => 
  _$SubjectsResponseFromJson(json);
}

@freezed
abstract class SubjectDto with _$SubjectDto {
  const factory SubjectDto({
    @JsonKey(name: 'subjectName') @Default('') String subjectName,
    @JsonKey(name: 'unit') UnitDto? unit,
  }) = _SubjectDto;

  factory SubjectDto.fromJson(Map<String, dynamic> json) =>
   _$SubjectDtoFromJson(json);
}

@freezed 
abstract class UnitDto with _$UnitDto {
  const factory UnitDto({
    @JsonKey(name: 'unitName') @Default('') String unitName,
    @JsonKey(name: 'grade') @Default('') String grade,
    @JsonKey(name: 'lesson') LessonDto? lesson,
  }) = _UnitDto;

  factory UnitDto.fromJson(Map<String, dynamic> json) =>
   _$UnitDtoFromJson(json);
}

@freezed 
abstract class LessonDto with _$LessonDto{
  const factory LessonDto({
    @JsonKey(name: 'lessonName') @Default('') String lessonName,
    @JsonKey(name: 'difficulty') @Default(0) int difficulty,
  }) =_LessonDto;

  factory LessonDto.fromJson(Map<String, dynamic> json) =>
   _$LessonDtoFromJson(json);
}