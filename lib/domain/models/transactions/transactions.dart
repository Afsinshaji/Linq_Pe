import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';

part 'transactions.g.dart';

@HiveType(typeId: 3)
class TransactionsModel {
  @HiveField(0)
  final String contactId;
  @HiveField(1)
  final int recievedAmt;
  @HiveField(2)
  final int payedAmt;
  @HiveField(3)
  final int balanceAmt;
  @HiveField(4)
  final List<SecondaryTransactionsModel>? secondaryTransaction;

  TransactionsModel({
    required this.contactId,
    required this.recievedAmt,
    required this.payedAmt,
    required this.balanceAmt,
    this.secondaryTransaction,
  });
}

class TransactionsBox {
  static Box<TransactionsModel>? _getbox;
  static Box<TransactionsModel> getInstance() {
    return _getbox ??= Hive.box('TransactionsBox');
  }
}
