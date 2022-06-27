import 'package:v_leauge/network/api/model/account.model.dart';

import '../../network/api/model/pagination_model.dart';

abstract class AccountRepository{
  Future<PaginationModel<AccountModel>> getAccount();
}