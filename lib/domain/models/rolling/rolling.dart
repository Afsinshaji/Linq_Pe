import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/rolling/pay_back_account.dart';

import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

part 'rolling.g.dart';

@HiveType(typeId: 9)
class RollingAccountsModel {
  @HiveField(0)
  final String rollingAccountContactId;
  @HiveField(1)
  final double recievedRollingAmt;
  @HiveField(2)
  final double payedBackAmt;
  @HiveField(3)
  final double balanceToPayAmt;
  @HiveField(4)
  final List<TransactionModel>? transactionList;
  @HiveField(5)
  final List<PayBackAccountModel> payBackAccountList;
   @HiveField(6)
  final String ledgerId;

  RollingAccountsModel({
      required this.ledgerId,
    required this.payBackAccountList,
    required this.rollingAccountContactId,
    required this.recievedRollingAmt,
    required this.payedBackAmt,
    required this.balanceToPayAmt,
    this.transactionList,
  });
}

class RollingAccountsBox {
  static Box<RollingAccountsModel>? _getbox;
  static Box<RollingAccountsModel> getInstance() {
    return _getbox ??= Hive.box('RollingAccountsBox');
  }
}
