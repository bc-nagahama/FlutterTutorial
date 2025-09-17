import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_2/data/datasources/subject_datasource.dart';
import 'package:flutter_application_2/data/dtos/subjects_response.dart';
import 'home_state.dart';

//dioのprovider
final dioProvider = Provider((ref) => Dio());

//datasourceのprovider
final subjectDatasourceProvider = Provider<SubjectDatasource>((ref) {
  final dio = ref.watch(dioProvider);
  return SubjectDatasource(dio);
});

//subjectsのprovider
final subjectsProvider = FutureProvider<SubjectsResponse>((ref) async{
  final datasource = ref.watch(subjectDatasourceProvider);
  final response = await datasource.getSubjects();

  //console.出力
  for(var s in response.subjects){
    print('科目：${s.subjectName}, 単元：${s.unit?.unitName}, レッスン：${s.unit?.lesson?.lessonName}');
  }

  return response;
});



class HomeViewModel extends StateNotifier<HomeState>{
  HomeViewModel() : super(HomeState());
  
  void incrementCounter() {
    state = state.copyWith(counter: state.counter + 1);
  }
}

final homeProvider = 
  StateNotifierProvider<HomeViewModel, HomeState>((ref) {
   return HomeViewModel();
});