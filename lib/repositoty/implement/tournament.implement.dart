import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/network/api/model/tournament.model.dart';
import 'package:v_leauge/repositoty/interface/tournament.interface.dart';

import '../../network/restapi.dart';

class TournamentsImplement implements ITournamentrepository{
  RestAPI restAPI = RestAPI();

  @override
  Future<PaginationModel<TournamentsModel>> getTournaments() async {
    final respone = await restAPI.get<PaginationModel<TournamentsModel>>('/api/tournaments') ;
    final data = PaginationModel<TournamentsModel>.fromJson(respone, TournamentsModel.fromJson);
    return data;
  }
}