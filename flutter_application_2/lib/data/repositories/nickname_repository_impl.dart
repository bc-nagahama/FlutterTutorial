import 'package:flutter_application_2/data/datasources/api/nickname_datasource.dart';
import 'package:flutter_application_2/data/dtos/nickname_response.dart';
import 'package:flutter_application_2/domain/entities/nickname.dart';
import 'package:flutter_application_2/domain/repositories/nickname_repository.dart';

class NicknameRepositoryImpl implements NicknameRepository{

  NicknameRepositoryImpl(this.nicknameDatasource);
  final NicknameDatasource nicknameDatasource;

  @override
  Future<Nickname> getNickname() async{

    final response = await nicknameDatasource.getNickname();
    return response.toEntity();

  }
}