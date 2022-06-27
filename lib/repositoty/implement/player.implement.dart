import 'package:v_leauge/network/api/model/player.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/repositoty/interface/player.interface.dart';

import '../../network/restapi.dart';

class PlayerImplement implements IPlayerrepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<PlayerModel>> getPlayers() async {
    final respone = await restAPI.get<PaginationModel<PlayerModel>>('/api/players') ;
    final data = PaginationModel<PlayerModel>.fromJson(respone, PlayerModel.fromJson);
    return data;
  }
}