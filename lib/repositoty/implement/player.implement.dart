import 'package:dio/dio.dart';
import 'package:v_leauge/network/api/dio_client.dart';
import 'package:v_leauge/network/api/model/player.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/repositoty/interface/player.interface.dart';

import '../../network/restapi.dart';

class PlayerImplement implements IPlayerrepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<PlayerModel>> getPlayers() async {
    final respone = await restAPI.get<PaginationModel<PlayerModel>>('/api/players') ;
    final data = PaginationModel.fromJson(respone, PlayerModel.fromJson) as PaginationModel<PlayerModel>;
    return data;
  }

}