import 'package:v_leauge/network/api/model/new.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/network/restapi.dart';
import 'package:v_leauge/repositoty/interface/new.interface.dart';

class NewImplement extends INewRepository{
  RestAPI restAPI =  RestAPI();
  @override
  Future<PaginationModel<NewsModel>> getNews() async {
    final respone = await restAPI.get<PaginationModel<NewsModel>>('/api/news');
    final data = PaginationModel<NewsModel>.fromJson(respone, NewsModel.fromJson);
    return data;
  }

}