import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_state.dart';

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