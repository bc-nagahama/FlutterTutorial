import 'package:flutter_application_2/data/providers/subject_repository_provider.dart';
import 'package:flutter_application_2/data/providers/nickname_repository_provider.dart';
import 'package:flutter_application_2/domain/repositories/nickname_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_2/presentation/view/home/home_state.dart';
import 'package:flutter_application_2/domain/repositories/subject_repository.dart';
import 'package:flutter_application_2/data/repositories/mock/subject_repository_mock.dart';

// ///
// ///mock用
// ///
// final mockHomeProvider = StateNotifierProvider<HomeViewModel, HomeState>(
//   (ref) => HomeViewModel(
//     SubjectRepositoryMock(),
//   ),
// );

final homeProvider = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(
    ref.read(subjectRepositoryProvider),
    ref.read(nicknameRepositoryProvider),
  ),
);


class HomeViewModel extends StateNotifier<HomeState>{
  HomeViewModel(
    this.subjectRepository,
    this.nicknameRepository,
  ) : super(HomeState()){
    initialize();
  }

  final SubjectRepository subjectRepository;
  final NicknameRepository nicknameRepository;


  ///
  ///初期化処理
  ///
  Future<void> initialize() async{

    final subjectsEntity = await subjectRepository.getSubjects(); 
    final nicknameEntity = await nicknameRepository.getNickname();

    state = state.copyWith(
      subject1: subjectsEntity.subjects[0],
      subject2: subjectsEntity.subjects[1],
      nickname: nicknameEntity.nickname,
    );
    
  }


  ///
  ///XPの増加処理
  ///
  Future<void> incrementCounter() async{
    state = state.copyWith(counter: state.counter + 1);
  }
  
}


