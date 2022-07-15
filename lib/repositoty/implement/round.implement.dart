import 'package:v_leauge/network/api/model/pagination_model.dart';

import 'package:v_leauge/network/api/model/round.model.dart';

import '../../network/restapi.dart';
import '../interface/round.interface.dart';

class RoundImplement implements IRoundrepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<RoundModel>> getRound() async {
    final respone = await restAPI.get<PaginationModel<RoundModel>>('/api/rounds') ;
    final data = PaginationModel<RoundModel>.fromJson(respone, RoundModel.fromJson);
    return data;
  }

  @override
  Future<PaginationModel<RoundModel>> getRoundWithID(String id) async {
    final respone = await restAPI.get<PaginationModel<RoundModel>>('rounds?TournamentID=' + id) ;
    final data = PaginationModel<RoundModel>.fromJson(respone, RoundModel.fromJson);
    return data;
  }
}