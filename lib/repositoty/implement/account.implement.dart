import 'package:v_leauge/network/api/model/account.model.dart';
import 'package:v_leauge/repositoty/interface/account.interface.dart';

import '../../network/api/model/pagination_model.dart';
import '../../network/restapi.dart';

class AccountImplement implements AccountRepository{
  RestAPI restAPI = RestAPI();
  @override
  Future<PaginationModel<AccountModel>> getAccount() async {
    final respone = await restAPI.get<PaginationModel<AccountModel>>('/api/accounts') ;
    final data = PaginationModel<AccountModel>.fromJson(respone, AccountModel.fromJson);
    return data;
  }
}