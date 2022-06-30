import 'package:v_leauge/network/api/model/account.model.dart';

import '../../network/api/model/pagination_model.dart';

abstract class IAccountRepository{
  Future<PaginationModel<AccountModel>> getAccount();
}