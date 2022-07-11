import 'package:v_leauge/network/api/model/new.model.dart';

import '../../network/api/model/pagination_model.dart';

abstract class INewRepository{
  Future<PaginationModel<NewModel>> getNews();
}