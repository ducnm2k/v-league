import 'package:v_leauge/network/api/model/new.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/network/restapi.dart';
import 'package:v_leauge/repositoty/interface/new.interface.dart';

class NewImplement extends INewRepository{
  RestAPI restAPI =  RestAPI();
  @override
  Future<PaginationModel<NewModel>> getNews() async {
    final respone = await restAPI.get<PaginationModel<NewModel>>('/api/news?Include=author');
    final data = PaginationModel<NewModel>.fromJson(respone, NewModel.fromJson);
    return data;
  }

}