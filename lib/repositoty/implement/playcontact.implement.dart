import 'package:v_leauge/network/api/model/playercontact.model.dart';
import 'package:v_leauge/repositoty/interface/playcontact.interface.dart';

import '../../network/api/model/pagination_model.dart';
import '../../network/restapi.dart';

class NewImplement extends IPlayerContactRepository{
  RestAPI restAPI =  RestAPI();
  @override
  Future<PaginationModel<PlayerContactModel>> getPlayerContactModel() async {
    final respone = await restAPI.get<PaginationModel<PlayerContactModel>>('/api/player-contracts?Include=player%2C%20club');
    final data = PaginationModel<PlayerContactModel>.fromJson(respone, PlayerContactModel.fromJson);
    return data;
  }

}