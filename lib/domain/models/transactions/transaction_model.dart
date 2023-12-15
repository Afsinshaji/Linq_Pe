import 'package:hive/hive.dart';

part 'transaction_model.g.dart';

@HiveType(typeId: 5)
class TransactionModel {
  @HiveField(0)
  final String transactionId;
   @HiveField(1)
  final List<TransactionModel>? transactionsList;
    @HiveField(2)
  final String ledgerId;

  TransactionModel({required this.transactionId,  this.transactionsList,required  this.ledgerId});
}

class TransactionBox {
  static Box<TransactionModel>? _getbox;
  static Box<TransactionModel> getInstance() {
    return _getbox ??= Hive.box('TransactionBox');
  }
}
