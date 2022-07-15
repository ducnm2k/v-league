import '../../network/api/model/pagination_model.dart';
import '../../network/api/model/round.model.dart';

abstract class IRoundrepository{
  Future<PaginationModel<RoundModel>> getRound();
  Future<PaginationModel<RoundModel>> getRoundWithID(String id);
}