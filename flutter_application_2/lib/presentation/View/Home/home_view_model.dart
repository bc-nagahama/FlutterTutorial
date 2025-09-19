import 'package:flutter_application_2/data/providers/subject_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_state.dart';
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


  ///
  ///初期化処理
  ///
  Future<void> initialize() async{
    //抽象を呼び出していて具体（SubjectRepositoryImpl）は知らない
    final subjectsEntity = await subjectRepository.getSubjects(); 

    state = state.copyWith(
      subjectName1: subjectsEntity.subjects[0].subjectName,
      subjectName2: subjectsEntity.subjects[1].subjectName,
      unitName2: subjectsEntity.subjects[1].unit.unitName,
      grade1: subjectsEntity.subjects[0].unit.grade,
      unitName1: subjectsEntity.subjects[0].unit.unitName,
      grade2: subjectsEntity.subjects[1].unit.grade,
      lessonName1: subjectsEntity.subjects[0].unit.lesson.lessonName,
      lessonName2: subjectsEntity.subjects[1].unit.lesson.lessonName,
      difficulty1: subjectsEntity.subjects[0].unit.lesson.difficulty,
      difficulty2: subjectsEntity.subjects[1].unit.lesson.difficulty,
    );
  }


  ///
  ///XPの増加処理
  ///
  Future<void> incrementCounter() async{
    state = state.copyWith(counter: state.counter + 1);
  }
  
}


