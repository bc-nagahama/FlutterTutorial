import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_2/domain/entities/login.dart';
import 'package:flutter_application_2/domain/enums/login_status.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed 
abstract class LoginResponse with _$LoginResponse{
  const factory LoginResponse({
    @JsonKey(name: 'result') @Default(LoginResult()) LoginResult result,
    @JsonKey(name: 'loginStatus') @Default('') String loginStatus,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
    _$LoginResponseFromJson(json);
}

@freezed 
abstract class LoginResult with _$LoginResult {
  const factory LoginResult({
    @JsonKey(name: 'processingTime') @Default('') String processingTime,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
    _$LoginResultFromJson(json);
}



extension LoginResponseExtension on LoginResponse{
  Login toEntity() {
    final loginStatus = LoginStatus.values.firstWhere(
      (auth) => auth.status == this.loginStatus,
      orElse: () => LoginStatus.ng,
    );

    return Login(
      processingTime: result.processingTime,
      loginStatus: loginStatus,
    );
  }
}