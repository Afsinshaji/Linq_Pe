import 'dart:typed_data';

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
  final String fromContactId;
  @HiveField(6)
  final DateTime timeOfTrans;
  @HiveField(7)
  final TransactionType transactionType;
  @HiveField(8)
  final Uint8List? billImage;
  @HiveField(9)
  final String? transactionId;
  @HiveField(10)
  final String? transactionDetails;
  @HiveField(11)
  final String id;
  @HiveField(12)
  final bool isSplit;
  @HiveField(13)
  final bool isAddBalance;
  @HiveField(14)
  final bool isGet;
  @HiveField(15)
  final bool isGive;
  @HiveField(16)
  final String primaryAccountId;
  @HiveField(17)
  final bool isSecondaryPay;
  SecondaryTransactionsModel({
    required this.isSecondaryPay,
    required this.primaryAccountId,
    required this.isGive,
    required this.isGet,
    required this.isAddBalance,
    required this.isSplit,
    required this.id,
    this.transactionDetails,
    this.transactionId,
    required this.transactionType,
    required this.timeOfTrans,
    required this.toContactId,
    required this.payedAmt,
    required this.balanceAmt,
    required this.isPayed,
    required this.givenAmt,
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
