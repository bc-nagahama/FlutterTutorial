import 'package:flutter_application_2/domain/enums/login_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

@freezed 
abstract class Login with _$Login{
  const factory Login({
    @Default('') String processingTime,
    @Default(LoginStatus.ng) LoginStatus loginStatus,
  }) = _Login;
}