import 'package:dio/dio.dart';
import 'package:v_leauge/network/api/dio_client.dart';
import 'package:v_leauge/network/api/model/club.model.dart';
import 'package:v_leauge/network/api/model/player.model.dart';
import 'package:v_leauge/network/api/model/pagination_model.dart';
import 'package:v_leauge/repositoty/interface/club.interface.dart';

import '../../network/restapi.dart';

class ClubImplement implements Clubrepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<ClubModel>> getClubs() async {
    final respone = await restAPI.get<PaginationModel<ClubModel>>('/api/players') ;
    final data = PaginationModel<ClubModel>.fromJson(respone, PlayerModel.fromJson);
    return data;
  }


}