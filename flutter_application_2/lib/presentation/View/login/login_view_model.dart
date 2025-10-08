import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_2/presentation/view/login/login_state.dart';
import 'package:flutter_application_2/domain/repositories/login_repository.dart';
import 'package:flutter_application_2/data/providers/login_repository_provider.dart';

final loginViewModelProvider = StateNotifierProvider<LoginViewModel, LoginState>(
  (ref) => LoginViewModel(
    ref.read(loginRepositoryProvider),
  ),
);


class LoginViewModel extends StateNotifier<LoginState>{

  final LoginRepository loginRepository;

  LoginViewModel(this.loginRepository) : super(LoginState());

  ///
  ///ログインIDを更新
  ///
  void setLoginId(String loginId) {
    state = state.copyWith(loginId: loginId);
  }

  ///
  ///パスワードを更新
  ///
  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  ///
  ///ログイン処理
  ///
  Future<void> login({required String authGroup}) async{
    await loginRepository.getLogin(
      loginId: state.loginId, 
      password: state.password, 
      authGroup: authGroup,
    );
  }

  
}