import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_2/domain/entities/nickname.dart';

part 'nickname_response.freezed.dart';
part 'nickname_response.g.dart';

@freezed 
abstract class NicknameResponse with _$NicknameResponse{
  const factory NicknameResponse({
    @JsonKey(name: 'nickname') @Default('') String nickname,
  }) = _NicknameResponse;

  factory NicknameResponse.fromJson(Map<String, dynamic> json) =>
    _$NicknameResponseFromJson(json);
}

extension NicknameResponseExtension on NicknameResponse{
    Nickname toEntity() => Nickname(
        nickname: nickname,
    );
}