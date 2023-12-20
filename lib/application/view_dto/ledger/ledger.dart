import 'dart:developer';

import 'package:linq_pe/application/view_dto/ledger/pay_back_ledger.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/ledger/ledger.dart';

class LedgerDTO {
  final String ledgerName;

  final String ledgerId;

  final double? totalBlanceAmount;

  final double? totalPayedAmount;

  final double? rolledOutBalance;

  final double? recievedRollingAmt;

  final double? payedBackAmt;

  final double? balanceToPayAmt;

  final List<NestedSecondaryTransactionsDTO>? transactionList;

  final List<PayBackLedgerDTO>? payBackLedgerList;

  LedgerDTO(
      {this.balanceToPayAmt,
      this.payBackLedgerList,
      this.payedBackAmt,
      this.recievedRollingAmt,
      this.rolledOutBalance,
      this.transactionList,
      required this.ledgerName,
      required this.ledgerId,
      this.totalBlanceAmount,
      this.totalPayedAmount});
}

Future<List<LedgerDTO>> convertLedgerModelToDTO(
    List<LedgerModel> ledgerModelList) async {
  List<LedgerDTO> ledgerDTOList = [];
  for (var ledger in ledgerModelList) {
    log('ledger${ledger.rolledOutBalance.toString()}');
    ledgerDTOList.add(LedgerDTO(
        balanceToPayAmt: ledger.balanceToPayAmt,
        payBackLedgerList:
            convertPayBackLedgerModelToDTO(ledger.payBackLedgerList),
        payedBackAmt: ledger.payedBackAmt,
        recievedRollingAmt: ledger.recievedRollingAmt,
        rolledOutBalance: ledger.rolledOutBalance,
        transactionList:
            await convertTransactionidListToSeconadryTransactionDTOList(
                ledger.transactionList),
        ledgerName: ledger.ledgerName,
        ledgerId: ledger.ledgerId,
        totalBlanceAmount: ledger.totalBlanceAmount,
        totalPayedAmount: ledger.totalPayedAmount));
  }
  return ledgerDTOList;
}
