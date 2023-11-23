import 'dart:io';

import 'package:hive/hive.dart';


part 'secondary_transactions.g.dart';

@HiveType(typeId: 2)
class SecondaryTransactionsModel {
  @HiveField(0)
  final String toContactId;
  @HiveField(1)
  final double givenAmt;
  @HiveField(2)
  final bool isPayed;
  @HiveField(3)
  final double balanceAmt;
  @HiveField(4)
  final double payedAmt;
  @HiveField(5)
  final List<SecondaryTransactionsModel>? secondaryTransaction;
  @HiveField(6)
  final String fromContactId;
  @HiveField(7)
  final DateTime timeOfTrans;
  @HiveField(8)
  final TransactionType transactionType;
  @HiveField(9)
  final File? billImage;
  @HiveField(10)
  final String? transactionId;
  @HiveField(11)
 final String? transactionDetails;
  SecondaryTransactionsModel({
    this.transactionDetails,
     this.transactionId,
    required this.transactionType,
    required this.timeOfTrans,
    required this.toContactId,
    required this.payedAmt,
    required this.balanceAmt,
    required this.isPayed,
    required this.givenAmt,
    this.secondaryTransaction,
    required this.fromContactId,
    this.billImage,
  });
}
@HiveType(typeId: 3)
enum TransactionType {
  @HiveField(0)
    cash,
  @HiveField(1)
   bank,
  @HiveField(2)
  wallet
}

class SecondaryTransactionsBox {
  static Box<SecondaryTransactionsModel>? _getbox;
  static Box<SecondaryTransactionsModel> getInstance() {
    return _getbox ??= Hive.box('SecondaryTransactionsBox');
  }
}
