import 'package:hive/hive.dart';

import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

part 'splitted_accounts.g.dart';

@HiveType(typeId: 7)
class SplittedAccountsModel {
  @HiveField(0)
  final String splittedAccountContactId;
  @HiveField(1)
  final double recievedAmt;
  @HiveField(2)
  final double payedAmt;
  @HiveField(3)
  final double balanceAmt;
  @HiveField(4)
  final List<TransactionModel>? transactionList;
  @HiveField(5)
  final String primaryAccountContactId;
    @HiveField(6)
  final String ledgerId;

  SplittedAccountsModel({
      required this.ledgerId,
    required this.primaryAccountContactId,
    required this.splittedAccountContactId,
    required this.recievedAmt,
    required this.payedAmt,
    required this.balanceAmt,
    this.transactionList,
  });
}

class SplittedAccountsBox {
  static Box<SplittedAccountsModel>? _getbox;
  static Box<SplittedAccountsModel> getInstance() {
    return _getbox ??= Hive.box('SplittedAccountsBox');
  }
}
