import 'package:v_leauge/network/api/model/matchs.model.dart';

import '../../network/api/model/pagination_model.dart';

abstract class Matchrepository{
  Future<PaginationModel<MatchsModel>> getMatchs(String tournamentID, String roundID);
}