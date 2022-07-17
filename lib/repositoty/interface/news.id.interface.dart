import 'package:v_leauge/network/api/model/news.id.model.dart';

import '../../network/api/model/pagination_model.dart';

abstract class INewsIDRepository{
  Future<PaginationModel<NewsIDModel>> getNewsDetails();
}