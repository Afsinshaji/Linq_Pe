import 'dart:io';

import 'package:linq_pe/domain/models/ledger/ledger.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';

abstract class LedgerRepository {
  Future<void> addLedger({required String ledgerName});

  List<LedgerModel> getLedgerList();
  Future<void> deleteLedger({required String ledgerId});
  Future<void> addLedgerAmounts(
      {required double blanceAmt,
      required double payedAmt,
      required String ledgerId});
  Future<void> addLedgerRollingTransaction({
    required String rolledToLedgerId,
    required String rolledFromLedgerId,
    required double amountRolled,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? userTransactionId,
    String? transactionDetails,
  });

  Future<void> ledgerRollingRepayment({
    required String rollPayToLedgerId,
    required String rollPayFromLedgerId,
    required double amountPaying,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? userTransactionId,
    String? transactionDetails,
  });
}
