import 'dart:io';

import 'package:hive/hive.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/ledger/ledger.dart';
import 'package:linq_pe/domain/models/ledger/pay_back_ledger.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';
import 'package:linq_pe/domain/repositories/ledger/ledger_repository.dart';
import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

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
            totalBlanceAmount: (ledger.totalBlanceAmount == null
                    ? 0.0
                    : ledger.totalBlanceAmount!) +
                blanceAmt,
            totalPayedAmount: (ledger.totalPayedAmount == null
                    ? 0.0
                    : ledger.totalPayedAmount!) +
                payedAmt,
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
@override
  Future<void> addLedgerRollingTransaction({
    required String rolledToLedgerId,
    required String rolledFromLedgerId,
    required double amountRolled,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? userTransactionId,
    String? transactionDetails,
  }) async {
    final ledgerList = ledgerBox.values.toList();
    final ledgerFromIndex = ledgerList
        .indexWhere((element) => element.ledgerId == rolledFromLedgerId);
    final ledgerToIndex = ledgerList
        .indexWhere((element) => element.ledgerId == rolledToLedgerId);
    if (ledgerFromIndex < 0 ||
        ledgerToIndex < 0 ||
        ledgerList[ledgerFromIndex].totalBlanceAmount == null ||
        ledgerList[ledgerFromIndex].totalBlanceAmount! <= 0 ||
        ledgerList[ledgerFromIndex].totalBlanceAmount! < amountRolled) {
      return;
    }

    final rollPayId = DateTime.now().millisecondsSinceEpoch.toString();
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: rolledFromLedgerId,
            isGive: false,
            isGet: false,
            isAddBalance: false,
            billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isSplit: false,
            id: rollPayId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: rolledToLedgerId,
            payedAmt: amountRolled,
            balanceAmt: amountRolled,
            isPayed: true,
            givenAmt: amountRolled,
            fromContactId: rolledFromLedgerId));

    List<TransactionModel> transactionFromList = [];
    if (ledgerList[ledgerFromIndex].transactionList != null) {
      transactionFromList = ledgerList[ledgerFromIndex].transactionList!;
    }
    transactionFromList.add(TransactionModel(
        transactionId: rollPayId, ledgerId: rolledFromLedgerId));

    await ledgerBox.putAt(
        ledgerFromIndex,
        LedgerModel(
          ledgerName: ledgerList[ledgerFromIndex].ledgerName,
          ledgerId: ledgerList[ledgerFromIndex].ledgerId,
          balanceToPayAmt: ledgerList[ledgerFromIndex].balanceToPayAmt,
          totalBlanceAmount: ledgerList[ledgerFromIndex].totalBlanceAmount,
          payBackLedgerList: ledgerList[ledgerFromIndex].payBackLedgerList,
          payedBackAmt: ledgerList[ledgerFromIndex].payedBackAmt,
          recievedRollingAmt: ledgerList[ledgerFromIndex].recievedRollingAmt,
          rolledOutBalance:
              ledgerList[ledgerFromIndex].rolledOutBalance! - amountRolled,
          totalPayedAmount: ledgerList[ledgerFromIndex].totalPayedAmount,
          transactionList: transactionFromList,
        ));

    List<PayBackLedgerModel> payBackLedgerList = [];
    if (ledgerList[ledgerToIndex].payBackLedgerList != null) {
      payBackLedgerList = ledgerList[ledgerToIndex].payBackLedgerList!;
    }

    final ledgerIndex = payBackLedgerList
        .indexWhere((element) => element.ledgerId == rolledFromLedgerId);
    if (ledgerIndex < 0) {
      payBackLedgerList.add(PayBackLedgerModel(
          ledgerId: rolledFromLedgerId, payBackAmount: amountRolled));
    } else {
      final payBack = payBackLedgerList[ledgerIndex];
      payBackLedgerList[ledgerIndex] = PayBackLedgerModel(
          ledgerId: payBack.ledgerId,
          payBackAmount: payBack.payBackAmount + amountRolled);
    }

    final rollGetId =
        "${DateTime.now().millisecondsSinceEpoch.toString()}-$rolledToLedgerId";
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: rolledToLedgerId,
            isGive: false,
            isGet: true,
            isAddBalance: false,
            isSplit: false,
            billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            id: rollPayId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: rolledToLedgerId,
            payedAmt: amountRolled,
            balanceAmt: amountRolled,
            isPayed: false,
            givenAmt: amountRolled,
            fromContactId: rolledFromLedgerId));

    List<TransactionModel> transactionToList = [];
    if (ledgerList[ledgerToIndex].transactionList != null) {
      transactionToList = ledgerList[ledgerToIndex].transactionList!;
    }
    transactionToList.add(
        TransactionModel(transactionId: rollGetId, ledgerId: rolledToLedgerId));

    await ledgerBox.putAt(
        ledgerToIndex,
        LedgerModel(
          ledgerName: ledgerList[ledgerToIndex].ledgerName,
          ledgerId: ledgerList[ledgerToIndex].ledgerId,
          balanceToPayAmt: ledgerList[ledgerToIndex].balanceToPayAmt == null
              ? 0.0
              : ledgerList[ledgerToIndex].balanceToPayAmt! + amountRolled,
          totalBlanceAmount: ledgerList[ledgerToIndex].totalBlanceAmount,
          payBackLedgerList: payBackLedgerList,
          payedBackAmt: ledgerList[ledgerToIndex].payedBackAmt,
          recievedRollingAmt: ledgerList[ledgerToIndex].recievedRollingAmt ==
                  null
              ? 0.0
              : ledgerList[ledgerToIndex].recievedRollingAmt! + amountRolled,
          rolledOutBalance:
              ledgerList[ledgerToIndex].rolledOutBalance! + amountRolled,
          totalPayedAmount: ledgerList[ledgerToIndex].totalPayedAmount,
          transactionList: transactionToList,
        ));
  }
  
@override
  Future<void> ledgerRollingRepayment({
    required String rollPayToLedgerId,
    required String rollPayFromLedgerId,
    required double amountPaying,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? userTransactionId,
    String? transactionDetails,
  }) async {
    final ledgerList = ledgerBox.values.toList();
    final ledgerFromIndex = ledgerList
        .indexWhere((element) => element.ledgerId == rollPayFromLedgerId);
    final ledgerToIndex = ledgerList
        .indexWhere((element) => element.ledgerId == rollPayToLedgerId);
    if (ledgerFromIndex < 0 ||
        ledgerToIndex < 0 ||
        ledgerList[ledgerFromIndex].rolledOutBalance == null ||
        ledgerList[ledgerFromIndex].rolledOutBalance! <= 0 ||
        ledgerList[ledgerFromIndex].rolledOutBalance! < amountPaying) {
      return;
    }

    final rollPayId = DateTime.now().millisecondsSinceEpoch.toString();
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: rollPayFromLedgerId,
            isGive: false,
            isGet: false,
            isAddBalance: false,
            billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isSplit: false,
            id: rollPayId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: rollPayToLedgerId,
            payedAmt: amountPaying,
            balanceAmt: amountPaying,
            isPayed: true,
            givenAmt: amountPaying,
            fromContactId: rollPayFromLedgerId));

    List<TransactionModel> transactionFromList = [];
    if (ledgerList[ledgerFromIndex].transactionList != null) {
      transactionFromList = ledgerList[ledgerFromIndex].transactionList!;
    }
    transactionFromList.add(TransactionModel(
        transactionId: rollPayId, ledgerId: rollPayFromLedgerId));
    List<PayBackLedgerModel> payBackLedgerList = [];
    if (ledgerList[ledgerFromIndex].payBackLedgerList != null) {
      final payBackIndex = ledgerList[ledgerFromIndex]
          .payBackLedgerList!
          .indexWhere((element) => element.ledgerId == rollPayToLedgerId);
      payBackLedgerList = ledgerList[ledgerFromIndex].payBackLedgerList!;
      if (payBackIndex >= 0) {
        final payBack = payBackLedgerList[payBackIndex];
        if (payBack.payBackAmount == amountPaying) {
          payBackLedgerList.removeAt(payBackIndex);
        } else {
          payBackLedgerList[payBackIndex] = PayBackLedgerModel(
              ledgerId: payBack.ledgerId,
              payBackAmount: payBack.payBackAmount - amountPaying);
        }
      }
    }

    await ledgerBox.putAt(
        ledgerFromIndex,
        LedgerModel(
          ledgerName: ledgerList[ledgerFromIndex].ledgerName,
          ledgerId: ledgerList[ledgerFromIndex].ledgerId,
          balanceToPayAmt: (ledgerList[ledgerFromIndex].balanceToPayAmt == null
                  ? 0.0
                  : ledgerList[ledgerFromIndex].balanceToPayAmt!) -
              amountPaying,
          totalBlanceAmount: ledgerList[ledgerFromIndex].totalBlanceAmount,
          payBackLedgerList: payBackLedgerList,
          payedBackAmt: (ledgerList[ledgerFromIndex].payedBackAmt == null
                  ? 0.0
                  : ledgerList[ledgerFromIndex].payedBackAmt!) +
              amountPaying,
          recievedRollingAmt: ledgerList[ledgerFromIndex].recievedRollingAmt,
          rolledOutBalance:
              ledgerList[ledgerFromIndex].rolledOutBalance! - amountPaying,
          totalPayedAmount: ledgerList[ledgerFromIndex].totalPayedAmount,
          transactionList: transactionFromList,
        ));

    List<PayBackLedgerModel> payBackToLedgerList = [];
    if (ledgerList[ledgerToIndex].payBackLedgerList != null) {
      payBackToLedgerList = ledgerList[ledgerToIndex].payBackLedgerList!;
    }

    final rollGetId =
        "${DateTime.now().millisecondsSinceEpoch.toString()}-$rollPayToLedgerId";
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: rollPayToLedgerId,
            isGive: false,
            isGet: true,
            isAddBalance: false,
            isSplit: false,
            billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            id: rollPayId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: rollPayToLedgerId,
            payedAmt: amountPaying,
            balanceAmt: amountPaying,
            isPayed: false,
            givenAmt: amountPaying,
            fromContactId: rollPayFromLedgerId));

    List<TransactionModel> transactionToList = [];
    if (ledgerList[ledgerToIndex].transactionList != null) {
      transactionToList = ledgerList[ledgerToIndex].transactionList!;
    }
    transactionToList.add(TransactionModel(
        transactionId: rollGetId, ledgerId: rollPayToLedgerId));

    await ledgerBox.putAt(
        ledgerToIndex,
        LedgerModel(
          ledgerName: ledgerList[ledgerToIndex].ledgerName,
          ledgerId: ledgerList[ledgerToIndex].ledgerId,
          balanceToPayAmt: ledgerList[ledgerToIndex].balanceToPayAmt,
          totalBlanceAmount: ledgerList[ledgerToIndex].totalBlanceAmount,
          payBackLedgerList: payBackToLedgerList,
          payedBackAmt: ledgerList[ledgerToIndex].payedBackAmt,
          recievedRollingAmt: ledgerList[ledgerToIndex].recievedRollingAmt ==
                  null
              ? 0.0
              : ledgerList[ledgerToIndex].recievedRollingAmt! + amountPaying,
          rolledOutBalance:
              ledgerList[ledgerToIndex].rolledOutBalance! + amountPaying,
          totalPayedAmount: ledgerList[ledgerToIndex].totalPayedAmount,
          transactionList: transactionToList,
        ));
  }
}
