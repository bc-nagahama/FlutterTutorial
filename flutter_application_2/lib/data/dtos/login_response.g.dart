// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      result: json['result'] == null
          ? const LoginResult()
          : LoginResult.fromJson(json['result'] as Map<String, dynamic>),
      loginStatus: json['loginStatus'] as String? ?? '',
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'loginStatus': instance.loginStatus,
    };

_LoginResult _$LoginResultFromJson(Map<String, dynamic> json) =>
    _LoginResult(processingTime: json['processingTime'] as String? ?? '');

Map<String, dynamic> _$LoginResultToJson(_LoginResult instance) =>
    <String, dynamic>{'processingTime': instance.processingTime};
