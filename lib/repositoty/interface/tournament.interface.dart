import '../../network/api/model/pagination_model.dart';
import '../../network/api/model/tournament.model.dart';

abstract class ITournamentrepository{
  Future<PaginationModel<TournamentsModel>> getTournaments();
}