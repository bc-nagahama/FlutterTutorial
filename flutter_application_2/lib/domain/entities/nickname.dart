import 'package:freezed_annotation/freezed_annotation.dart';

part 'nickname.freezed.dart';

@freezed 
abstract class Nickname  with _$Nickname{
  const factory Nickname({
    @Default('') String nickname,
  }) = _Nickname;
}