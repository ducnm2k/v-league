import 'package:v_leauge/network/api/model/matchs.model.dart';
import 'package:v_leauge/repositoty/interface/match.interface.dart';

import '../../network/api/model/pagination_model.dart';
import '../../network/restapi.dart';

class MatchImplement implements Matchrepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<MatchsModel>> getMatchs(String tournamentID, String roundID) async {
    final respone = await restAPI.get<PaginationModel<MatchsModel>>('/api/matches?TournamentID=10&RoundID=4');
    final data = PaginationModel<MatchsModel>.fromJson(respone, MatchsModel.fromJson);
    return data;
  }


}