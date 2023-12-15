import 'package:hive/hive.dart';

part 'ledger.g.dart';

@HiveType(typeId: 8)
class LedgerModel {
  @HiveField(0)
  final String ledgerName;
  @HiveField(1)
  final String ledgerId;
   @HiveField(2)
  final double? totalBlanceAmount;
  @HiveField(3)
  final double? totalPayedAmount;

  LedgerModel({required this.ledgerName, required this.ledgerId, this.totalBlanceAmount,
  this.totalPayedAmount});
}

class LedgerBox {
  static Box<LedgerModel>? _getbox;
  static Box<LedgerModel> getInstance() {
    return _getbox ??= Hive.box('LedgerBox');
  }
}
