import 'package:hive/hive.dart';

part 'pay_back_ledger.g.dart';

@HiveType(typeId: 11)
class PayBackLedgerModel {
  @HiveField(0)
  final String ledgerId;



  @HiveField(1)
  final double payBackAmount;

  PayBackLedgerModel({
    required this.ledgerId,
    required this.payBackAmount,
  
  });
}

class PayBackLedgerBox {
  static Box<PayBackLedgerModel>? _getbox;
  static Box<PayBackLedgerModel> getInstance() {
    return _getbox ??= Hive.box('PayBackLedgerBox');
  }
}
