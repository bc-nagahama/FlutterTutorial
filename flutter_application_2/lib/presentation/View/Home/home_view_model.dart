import 'package:flutter_application_2/data/providers/subject_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_2/presentation/view/home/home_state.dart';
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';
import 'package:flutter_application_2/data/repositories/mock/subject_repository_mock.dart';

final homeProvider = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(
    ref.read(subjectRepositoryProvider)
  ),
);

///
///mock用
///
final mockHomeProvider = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(
    SubjectRepositoryMock(),
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
      subject1: subjectsEntity.subjects[0],
      subject2: subjectsEntity.subjects[1],
    );

    
  }


  ///
  ///XPの増加処理
  ///
  Future<void> incrementCounter() async{
    state = state.copyWith(counter: state.counter + 1);
  }
  
}


