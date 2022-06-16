import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/network/api/model/player.model.dart';

abstract class IPlayerrepository{
  Future<PaginationModel<PlayerModel>> getPlayers();
}