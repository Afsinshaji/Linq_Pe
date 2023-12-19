import 'dart:io';

import 'package:hive/hive.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/rolling/pay_back_account.dart';
import 'package:linq_pe/domain/models/rolling/rolling.dart';
import 'package:linq_pe/domain/models/splitted/splitted_accounts.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';
import 'package:linq_pe/domain/repositories/rolling/rolling_repository.dart';
import 'package:linq_pe/infrastructure/splitting/splitting_implementation.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

class RollingImplementation extends RollingRepository {
  // creating a singleton
  RollingImplementation.internal();
  static RollingImplementation instance = RollingImplementation.internal();
  RollingImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  late Box<RollingAccountsModel> rollingBox;
  openRollingBox() async {
    rollingBox = await Hive.openBox("rollingBox");
  }

  @override
  Future<void> addRollingTransaction(
      {required String rollingAccountId,
      required String splittingAccountId,
      required String splittingPrimaryAccountId,
      required double amountRolled,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails,
      required String ledgerId}) async {
    final rollingAccountsList = rollingBox.values.toList();
    final rollingIndex = rollingAccountsList.indexWhere((element) =>
        element.rollingAccountContactId == rollingAccountId &&
        element.ledgerId == ledgerId);
    final splittedList =
        SplittingImplementation.instance.splittingBox.values.toList();
    final splitIndex = splittedList.indexWhere((element) =>
        element.primaryAccountContactId == splittingPrimaryAccountId &&
        element.splittedAccountContactId == splittingAccountId &&
        element.ledgerId == ledgerId);
    if (splitIndex < 0) {
      return;
    }
    final splitAccount = splittedList[splitIndex];
    final rolledTransactionId =
        '${DateTime.now().millisecondsSinceEpoch.toString()}--$rollingAccountId';
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
              billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: splittingPrimaryAccountId,
            isGive: false,
            isGet: true,
            isAddBalance: false,
            isSplit: false,
            id: rolledTransactionId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: rollingAccountId,
            payedAmt: 0,
            balanceAmt: amountRolled,
          
            isPayed: false,
            givenAmt: amountRolled,
            fromContactId: splittingAccountId));

    if (rollingIndex < 0) {
      await rollingBox.add(RollingAccountsModel(
          ledgerId: ledgerId,
          payBackAccountList: [
            PayBackAccountModel(
                payBackAmount: amountRolled,
                splittingAccountId: splittingAccountId,
                splittedPrimaryAccountId: splittingPrimaryAccountId)
          ],
          rollingAccountContactId: rollingAccountId,
          recievedRollingAmt: amountRolled,
          payedBackAmt: 0,
          balanceToPayAmt: amountRolled,
          transactionList: [
            TransactionModel(
                transactionId: rolledTransactionId, ledgerId: ledgerId)
          ]));
    } else {
      final rollingAccount = rollingAccountsList[rollingIndex];
      List<PayBackAccountModel> paybackList = rollingAccount.payBackAccountList;
      List<TransactionModel> rollingtransactionList = [];
      if (rollingAccount.transactionList != null) {
        rollingtransactionList = rollingAccount.transactionList!;
      }
      rollingtransactionList.add(TransactionModel(
          transactionId: rolledTransactionId, ledgerId: ledgerId));

      final payBackIndex = paybackList.indexWhere((element) =>
          element.splittedPrimaryAccountId == splittingPrimaryAccountId &&
          element.splittingAccountId == splittingAccountId);
      if (payBackIndex < 0) {
        paybackList.add(PayBackAccountModel(
            payBackAmount: amountRolled,
            splittingAccountId: splittingAccountId,
            splittedPrimaryAccountId: splittingPrimaryAccountId));
      } else {
        final payBack = paybackList[payBackIndex];
        paybackList[payBackIndex] = PayBackAccountModel(
            payBackAmount: payBack.payBackAmount + amountRolled,
            splittingAccountId: payBack.splittingAccountId,
            splittedPrimaryAccountId: payBack.splittedPrimaryAccountId);
      }

      await rollingBox.putAt(
          rollingIndex,
          RollingAccountsModel(
            ledgerId: rollingAccount.ledgerId,
            payBackAccountList: paybackList,
            rollingAccountContactId: rollingAccount.rollingAccountContactId,
            recievedRollingAmt:
                rollingAccount.recievedRollingAmt + amountRolled,
            payedBackAmt: rollingAccount.payedBackAmt,
            balanceToPayAmt: rollingAccount.balanceToPayAmt + amountRolled,
            transactionList: rollingtransactionList,
          ));
    }

    final splittedPaymentId =
        '${DateTime.now().millisecondsSinceEpoch.toString()}-${splitAccount.splittedAccountContactId}';
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
              billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: splittingPrimaryAccountId,
            isGive: false,
            isGet: false,
            isAddBalance: false,
            isSplit: false,
            id: splittedPaymentId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: rollingAccountId,
            payedAmt: amountRolled,
            balanceAmt: splitAccount.balanceAmt - amountRolled,
            isPayed: true,
            givenAmt: amountRolled,
            fromContactId: splittingAccountId));
    List<TransactionModel> transactionList = [];
    if (splitAccount.transactionList != null) {
      transactionList = splitAccount.transactionList!;
    }
    transactionList.add(
        TransactionModel(transactionId: splittedPaymentId, ledgerId: ledgerId));

    await SplittingImplementation.instance.splittingBox.putAt(
        splitIndex,
        SplittedAccountsModel(
            ledgerId: splitAccount.ledgerId,
            primaryAccountContactId: splitAccount.primaryAccountContactId,
            splittedAccountContactId: splitAccount.splittedAccountContactId,
            recievedAmt: splitAccount.recievedAmt,
            payedAmt: splitAccount.payedAmt + amountRolled,
            balanceAmt: splitAccount.balanceAmt - amountRolled,
            transactionList: transactionList));
  }

  @override
  List<RollingAccountsModel> getRollingAccountList({required String ledgerId}) {
    return rollingBox.values
        .toList()
        .where((element) => element.ledgerId == ledgerId)
        .toList();
  }
@override
  Future<void> rollingRepayment(
      {required String rollingAccountId,
      required String splittingAccountId,
      required String splittingPrimaryAccountId,
      required double amountRepaying,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails,
      required String ledgerId}) async {
    final rollingAccountsList = rollingBox.values.toList();
    final rollingIndex = rollingAccountsList.indexWhere((element) =>
        element.rollingAccountContactId == rollingAccountId &&
        element.ledgerId == ledgerId);
    final splittedList =
        SplittingImplementation.instance.splittingBox.values.toList();
    final splitIndex = splittedList.indexWhere((element) =>
        element.primaryAccountContactId == splittingPrimaryAccountId &&
        element.splittedAccountContactId == splittingAccountId &&
        element.ledgerId == ledgerId);
    if (splitIndex < 0) {
      return;
    }
    final splitAccount = splittedList[splitIndex];
    final rolledTransactionId =
        '${DateTime.now().millisecondsSinceEpoch.toString()}--$rollingAccountId';
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
              billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: splittingPrimaryAccountId,
            isGive: false,
            isGet: true,
            isAddBalance: false,
            isSplit: false,
            id: rolledTransactionId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: splittingAccountId,
            payedAmt: 0,
            balanceAmt: amountRepaying,
  
            isPayed: true,
            givenAmt: amountRepaying,
            fromContactId: rollingAccountId));

    if (rollingIndex < 0) {
      return;
    } else {
      final rollingAccount = rollingAccountsList[rollingIndex];
      List<PayBackAccountModel> paybackList = rollingAccount.payBackAccountList;
      List<TransactionModel> rollingtransactionList = [];
      if (rollingAccount.transactionList != null) {
        rollingtransactionList = rollingAccount.transactionList!;
      }
      rollingtransactionList.add(TransactionModel(
          transactionId: rolledTransactionId, ledgerId: ledgerId));

      final payBackIndex = paybackList.indexWhere((element) =>
          element.splittedPrimaryAccountId == splittingPrimaryAccountId &&
          element.splittingAccountId == splittingAccountId);
      if (payBackIndex < 0) {
        return;
      } else {
        final payBack = paybackList[payBackIndex];
        if (payBack.payBackAmount == amountRepaying) {
          paybackList.removeAt(payBackIndex);
        } else {
          paybackList[payBackIndex] = PayBackAccountModel(
              payBackAmount: payBack.payBackAmount - amountRepaying,
              splittingAccountId: payBack.splittingAccountId,
              splittedPrimaryAccountId: payBack.splittedPrimaryAccountId);
        }
      }
      await rollingBox.putAt(
          rollingIndex,
          RollingAccountsModel(
            ledgerId: rollingAccount.ledgerId,
            payBackAccountList: paybackList,
            rollingAccountContactId: rollingAccount.rollingAccountContactId,
            recievedRollingAmt: rollingAccount.recievedRollingAmt,
            payedBackAmt: rollingAccount.payedBackAmt + amountRepaying,
            balanceToPayAmt: rollingAccount.balanceToPayAmt - amountRepaying,
            transactionList: rollingtransactionList,
          ));
    }

    final splittedReceivedId =
        '${DateTime.now().millisecondsSinceEpoch.toString()}-${splitAccount.splittedAccountContactId}';
    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
              billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: splittingPrimaryAccountId,
            isGive: false,
            isGet: true,
            isAddBalance: false,
            isSplit: false,
            id: splittedReceivedId,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: splittingAccountId,
            payedAmt: amountRepaying,
            balanceAmt: splitAccount.balanceAmt + amountRepaying,
            isPayed: false,
            givenAmt: amountRepaying,
            fromContactId:rollingAccountId ));
    List<TransactionModel> transactionList = [];
    if (splitAccount.transactionList != null) {
      transactionList = splitAccount.transactionList!;
    }
    transactionList.add(
        TransactionModel(transactionId: splittedReceivedId, ledgerId: ledgerId));

    await SplittingImplementation.instance.splittingBox.putAt(
        splitIndex,
        SplittedAccountsModel(
            ledgerId: splitAccount.ledgerId,
            primaryAccountContactId: splitAccount.primaryAccountContactId,
            splittedAccountContactId: splitAccount.splittedAccountContactId,
            recievedAmt: splitAccount.recievedAmt+amountRepaying,
            payedAmt: splitAccount.payedAmt,
            balanceAmt: splitAccount.balanceAmt + amountRepaying,
            transactionList: transactionList));
  }
}
