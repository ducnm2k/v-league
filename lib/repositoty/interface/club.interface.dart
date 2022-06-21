import 'package:v_leauge/network/api/model/club.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';

abstract class Clubrepository{
  Future<PaginationModel<ClubModel>> getClubs();
}