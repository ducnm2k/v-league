
import 'package:v_leauge/network/api/model/club.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/repositoty/interface/club.interface.dart';

import '../../network/restapi.dart';

class ClubImplement implements Clubrepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<ClubModel>> getClubs() async {
    final respone = await restAPI.get<PaginationModel<ClubModel>>('/api/clubs') ;
    final data = PaginationModel<ClubModel>.fromJson(respone, ClubModel.fromJson);
    return data;
  }


}