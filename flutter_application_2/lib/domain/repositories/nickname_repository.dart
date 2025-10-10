import 'package:flutter_application_2/data/dtos/nickname_response.dart';
import 'package:flutter_application_2/domain/entities/nickname.dart';

abstract class NicknameRepository {
  Future<Nickname> getNickname();
}