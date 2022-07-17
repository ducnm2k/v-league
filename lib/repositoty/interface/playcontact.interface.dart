import 'package:v_leauge/network/api/model/playercontact.model.dart';

import '../../network/api/model/pagination_model.dart';

abstract class IPlayerContactRepository{
  Future<PaginationModel<PlayerContactModel>> getPlayerContactModel();
}