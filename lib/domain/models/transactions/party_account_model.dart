import 'package:hive/hive.dart';

import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

part 'party_account_model.g.dart';

@HiveType(typeId: 4)
class PartyAccountsModel {
  @HiveField(0)
  final String contactId;
  @HiveField(1)
  final double recievedAmt;
  @HiveField(2)
  final double payedAmt;
  @HiveField(3)
  final double balanceAmt;
  @HiveField(4)
  final List<TransactionModel>? transactionList;

  PartyAccountsModel({
    required this.contactId,
    required this.recievedAmt,
    required this.payedAmt,
    required this.balanceAmt,
    this.transactionList,
  });
}

class PartyAccountsBox {
  static Box<PartyAccountsModel>? _getbox;
  static Box<PartyAccountsModel> getInstance() {
    return _getbox ??= Hive.box('PartyAccountsBox');
  }
}
