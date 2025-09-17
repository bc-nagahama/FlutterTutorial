import 'dart:developer';
import 'package:flutter_application_2/data/providers/subject_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_2/data/datasources/subject_datasource.dart';
import 'home_state.dart';
import 'package:flutter_application_2/data/repositories/subject_repository_impl.dart';
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';

final homeProvider = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(
    ref.read(subjectRepositoryProvider)
  ),
);

class HomeViewModel extends StateNotifier<HomeState>{
  HomeViewModel(
    this.subjectRepository
  ) : super(HomeState()){
    initialize();
  }

  final SubjectRepository subjectRepository;
  
  Future<void> incrementCounter() async{
    state = state.copyWith(counter: state.counter + 1);
  }
  
  Future<void> initialize() async{
    final subjectList = await subjectRepository.getSubjects();

    state = state.copyWith(
      subjectName1: subjectList.subjects[0].subjectName,
      subjectName2: subjectList.subjects[1].subjectName,
      unitName1: subjectList.subjects[0].unit.unitName,
      unitName2: subjectList.subjects[1].unit.unitName,
      grade1: subjectList.subjects[0].unit.grade,
      grade2: subjectList.subjects[1].unit.grade,
      lessonName1: subjectList.subjects[0].unit.lesson.lessonName,
      lessonName2: subjectList.subjects[1].unit.lesson.lessonName,
      difficulty1: subjectList.subjects[0].unit.lesson.difficulty,
      difficulty2: subjectList.subjects[1].unit.lesson.difficulty,
    );
  }
}


