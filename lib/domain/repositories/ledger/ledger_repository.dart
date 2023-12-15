import 'package:linq_pe/domain/models/ledger/ledger.dart';

abstract class LedgerRepository {
  Future<void> addLedger({required String ledgerName});

  List<LedgerModel> getLedgerList();
  Future<void> deleteLedger({required String ledgerId});
  Future<void> addLedgerAmounts(
      {required double blanceAmt,
      required double payedAmt,
      required String ledgerId});
}
