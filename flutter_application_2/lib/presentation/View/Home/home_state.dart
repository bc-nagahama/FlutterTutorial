import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState{
  factory HomeState({
    @Default(0) int counter,

    @Default('') String subjectName1,
    @Default('') String subjectName2,

    @Default('') String unitName1,
    @Default('') String unitName2,

    @Default('') String grade1,
    @Default('') String grade2,

    @Default('') String lessonName1,
    @Default('') String lessonName2,

    @Default(0) int difficulty1,
    @Default(0) int difficulty2,
  }) = _HomeState;
}
