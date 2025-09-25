import 'package:flutter_application_2/domain/entities/subjects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState{
  factory HomeState({
    @Default(0) int counter,

    @Default(Subject()) Subject subject1,
    @Default(Subject()) Subject subject2,
  }) = _HomeState;
}
