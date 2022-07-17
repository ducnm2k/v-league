import 'package:v_leauge/repositoty/interface/news.id.interface.dart';

import '../../network/api/model/news.id.model.dart';
import '../../network/api/model/pagination_model.dart';
import '../../network/restapi.dart';

class NewsIDImplement extends INewsIDRepository{
  RestAPI restAPI =  RestAPI();
  @override
  Future<PaginationModel<NewsIDModel>> getNewsDetails() async {
    final respone = await restAPI.get<PaginationModel<NewsIDModel>>('/api/news');
    final data = PaginationModel<NewsIDModel>.fromJson(respone, NewsIDModel.fromJson);
    return data;
  }
}