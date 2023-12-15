import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/ledger/ledger.dart';
import 'package:linq_pe/domain/repositories/ledger/ledger_repository.dart';
import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';

class LedgerImplementation extends LedgerRepository {
// creating a singleton
  LedgerImplementation.internal();
  static LedgerImplementation instance = LedgerImplementation.internal();
  LedgerImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  late Box<LedgerModel> ledgerBox;
  openLedgerBox() async {
    ledgerBox = await Hive.openBox("ledgerBox");
  }

  @override
  Future<void> addLedger({required String ledgerName}) async {
    final ledgerId = DateTime.now().millisecondsSinceEpoch.toString();
    await ledgerBox
        .add(LedgerModel(ledgerName: ledgerName, ledgerId: ledgerId));
     ContactsImplementation.instance.addContactList(ledgerId: ledgerId);
  }

  @override
  Future<void> addLedgerAmounts(
      {required double blanceAmt,
      required double payedAmt,
      required String ledgerId}) async {
    final ledgerList = ledgerBox.values.toList();
    final ledgerIndex =
        ledgerList.indexWhere((element) => element.ledgerId == ledgerId);
    if (ledgerIndex >= 0) {
      final ledger = ledgerList[ledgerIndex];
      await ledgerBox.putAt(
          ledgerIndex,
          LedgerModel(
            ledgerName: ledger.ledgerName,
            ledgerId: ledger.ledgerId,
            totalBlanceAmount: blanceAmt,
            totalPayedAmount: payedAmt,
          ));
    }
  }

  @override
  Future<void> deleteLedger({required String ledgerId}) async {
    final ledgerList = ledgerBox.values.toList();
    final ledgerIndex =
        ledgerList.indexWhere((element) => element.ledgerId == ledgerId);
    if (ledgerIndex >= 0) {
      await ledgerBox.deleteAt(ledgerIndex);
    }
  }

  @override
  List<LedgerModel> getLedgerList() {
    return ledgerBox.values.toList();
  }
}
