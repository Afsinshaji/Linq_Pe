

import 'package:hive/hive.dart';

part 'secondary_transactions.g.dart';

@HiveType(typeId: 2)
class SecondaryTransactionsModel {
  @HiveField(0)
  final String toContactId;
  @HiveField(1)
  final int givenAmt;
  @HiveField(2)
  final bool isPayed;
  @HiveField(3)
  final int balanceAmt;
  @HiveField(4)
  final int payedAmt;
  @HiveField(5)
  final List<SecondaryTransactionsModel>? secondaryTransaction;
  @HiveField(6)
  final String fromContactId;

  SecondaryTransactionsModel( {
    required this.toContactId,
    required this.payedAmt,
    required this.balanceAmt,
    required this.isPayed,
    required this.givenAmt,
    this.secondaryTransaction, 
   required this.fromContactId,
  });
}

class SecondaryTransactionsBox {
  static Box<SecondaryTransactionsModel>? _getbox;
  static Box<SecondaryTransactionsModel> getInstance() {
    return _getbox ??= Hive.box('SecondaryTransactionsBox');
  }
}
