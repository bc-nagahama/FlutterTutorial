import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_key_response.freezed.dart';
part 'auth_key_response.g.dart';

@freezed
abstract class AuthKeyResponse with _$AuthKeyResponse {
  const factory AuthKeyResponse({
    @JsonKey(name: 'key') @Default('') String key,
  }) = _AuthKeyResponse;

  factory AuthKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthKeyResponseFromJson(json);
}