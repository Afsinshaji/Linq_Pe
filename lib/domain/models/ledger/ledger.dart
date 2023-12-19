import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/ledger/pay_back_ledger.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

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
  @HiveField(4)
  final double? rolledOutBalance;
    @HiveField(5)
  final double? recievedRollingAmt;
  @HiveField(6)
  final double? payedBackAmt;
  @HiveField(7)
  final double? balanceToPayAmt;
  @HiveField(8)
  final List<TransactionModel>? transactionList;
  @HiveField(9)
  final List<PayBackLedgerModel>? payBackLedgerList;
  LedgerModel( 
      {required this.ledgerName,
      required this.ledgerId,
      this.totalBlanceAmount,
      this.totalPayedAmount,
      this.rolledOutBalance, this.recievedRollingAmt, this.payedBackAmt, 
      this.balanceToPayAmt, this.transactionList, this.payBackLedgerList,
      
      });
}

class LedgerBox {
  static Box<LedgerModel>? _getbox;
  static Box<LedgerModel> getInstance() {
    return _getbox ??= Hive.box('LedgerBox');
  }
}
