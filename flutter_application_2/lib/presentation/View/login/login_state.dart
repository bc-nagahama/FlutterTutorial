import 'package:flutter_application_2/domain/entities/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState{
  factory LoginState({
    @Default('') String loginId,
    @Default('') String password,
  }) = _LoginState;
}