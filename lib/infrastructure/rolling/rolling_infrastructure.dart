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
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final rolledTransactionId = '$timeStamp-$rollingAccountId';
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
        '$timeStamp/-/${splitAccount.splittedAccountContactId}';
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
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final rolledTransactionId = '$timeStamp-$rollingAccountId';
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
        '$timeStamp/-/${splitAccount.splittedAccountContactId}';
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
            fromContactId: rollingAccountId));
    List<TransactionModel> transactionList = [];
    if (splitAccount.transactionList != null) {
      transactionList = splitAccount.transactionList!;
    }
    transactionList.add(TransactionModel(
        transactionId: splittedReceivedId, ledgerId: ledgerId));

    await SplittingImplementation.instance.splittingBox.putAt(
        splitIndex,
        SplittedAccountsModel(
            ledgerId: splitAccount.ledgerId,
            primaryAccountContactId: splitAccount.primaryAccountContactId,
            splittedAccountContactId: splitAccount.splittedAccountContactId,
            recievedAmt: splitAccount.recievedAmt + amountRepaying,
            payedAmt: splitAccount.payedAmt,
            balanceAmt: splitAccount.balanceAmt + amountRepaying,
            transactionList: transactionList));
  }

 Future editOrDeleteRollingTransaction(
      {required String rollingAccountId,
      required String transactionId,
      required double? amount,
      required TransactionType? transactionType,
      required DateTime? timeOfTrans,
      required bool isEdit,
      required bool isDelete,
      required File? billImage,
      required String? userTransactionId,
      required String? transactionDetails,
      required String ledgerId}) async {
    final rollingAccountsList = rollingBox.values.toList();
    final allTransactionList =
        TransactionsImplementation.instance.transactionBox.values.toList();
    final transactionIndex =
        allTransactionList.indexWhere((element) => element.id == transactionId);
    if (transactionIndex < 0) {
      return;
    }
    final rollingIndex = rollingAccountsList.indexWhere((element) =>
        element.rollingAccountContactId == rollingAccountId &&
        element.ledgerId == ledgerId);

    if (rollingIndex < 0) {
      return;
    }
    final rollingAccount = rollingAccountsList[rollingIndex];
    final transaction = allTransactionList[transactionIndex];
    double received = 0.0;
    double balance = 0.0;
    double payed = 0.0;
    if (transaction.isGet) {
      if (isEdit) {
        received =
            rollingAccount.recievedRollingAmt - transaction.givenAmt + amount!;
        balance =
            rollingAccount.balanceToPayAmt - transaction.givenAmt + amount;
        payed = rollingAccount.payedBackAmt;
        await TransactionsImplementation.instance.transactionBox.putAt(
            transactionIndex,
            SecondaryTransactionsModel(
                billImage: await convertToUni8List(billImage),
                transactionDetails: transactionDetails,
                transactionId: userTransactionId,
                isExpense: transaction.isExpense,
                isSecondaryPay: transaction.isSecondaryPay,
                primaryAccountId: transaction.primaryAccountId,
                isGive: transaction.isGive,
                isGet: transaction.isGet,
                isAddBalance: transaction.isAddBalance,
                isSplit: transaction.isSplit,
                id: transaction.id,
                transactionType: transactionType!,
                timeOfTrans: timeOfTrans!,
                toContactId: transaction.toContactId,
                payedAmt: 0,
                balanceAmt: amount,
                isPayed: transaction.isPayed,
                givenAmt: amount,
                fromContactId: transaction.fromContactId));
      }
      if (isDelete) {
        received = rollingAccount.recievedRollingAmt - transaction.givenAmt;
        balance = rollingAccount.balanceToPayAmt - transaction.givenAmt;
        payed = rollingAccount.payedBackAmt;
      }

      rollingBox.putAt(
          rollingIndex,
          RollingAccountsModel(
            ledgerId: rollingAccount.ledgerId,
            payBackAccountList: rollingAccount.payBackAccountList,
            rollingAccountContactId: rollingAccount.rollingAccountContactId,
            recievedRollingAmt: received,
            payedBackAmt: payed,
            balanceToPayAmt: balance,
            transactionList: rollingAccount.transactionList,
          ));
    } else if (transaction.isPayed) {
      if (isEdit) {
        received = rollingAccount.recievedRollingAmt;
        balance =
            rollingAccount.balanceToPayAmt + transaction.givenAmt - amount!;
        payed = rollingAccount.payedBackAmt - transaction.givenAmt + amount;
        await TransactionsImplementation.instance.transactionBox.putAt(
            transactionIndex,
            SecondaryTransactionsModel(
                billImage: await convertToUni8List(billImage),
                transactionDetails: transactionDetails,
                transactionId: userTransactionId,
                isExpense: transaction.isExpense,
                isSecondaryPay: transaction.isSecondaryPay,
                primaryAccountId: transaction.primaryAccountId,
                isGive: transaction.isGive,
                isGet: transaction.isGet,
                isAddBalance: transaction.isAddBalance,
                isSplit: transaction.isSplit,
                id: transaction.id,
                transactionType: transactionType!,
                timeOfTrans: timeOfTrans!,
                toContactId: transaction.toContactId,
                payedAmt: amount,
                balanceAmt: amount,
                isPayed: transaction.isPayed,
                givenAmt: amount,
                fromContactId: transaction.fromContactId));
      } else if (isDelete) {
        received = rollingAccount.recievedRollingAmt;
        balance = rollingAccount.balanceToPayAmt + transaction.givenAmt;
        payed = rollingAccount.payedBackAmt - transaction.givenAmt;
      }
      List<PayBackAccountModel> payBackList = rollingAccount.payBackAccountList;
      final payBackIndex = payBackList.indexWhere(
          (element) => element.splittingAccountId == transaction.toContactId);
      if (payBackIndex >= 0) {
        final payBack = payBackList[payBackIndex];
        if (isEdit) {
          payBackList[payBackIndex] = PayBackAccountModel(
              payBackAmount:
                  payBack.payBackAmount - transaction.givenAmt + amount!,
              splittingAccountId: payBack.splittingAccountId,
              splittedPrimaryAccountId: payBack.splittedPrimaryAccountId);
        }
        if (isDelete) {
          payBackList[payBackIndex] = PayBackAccountModel(
              payBackAmount: payBack.payBackAmount - transaction.givenAmt,
              splittingAccountId: payBack.splittingAccountId,
              splittedPrimaryAccountId: payBack.splittedPrimaryAccountId);
        }
      }
      await rollingBox.putAt(
          rollingIndex,
          RollingAccountsModel(
            ledgerId: rollingAccount.ledgerId,
            payBackAccountList: payBackList,
            rollingAccountContactId: rollingAccount.rollingAccountContactId,
            recievedRollingAmt: received,
            payedBackAmt: payed,
            balanceToPayAmt: balance,
            transactionList: rollingAccount.transactionList,
          ));
    }
    if (isDelete) {
      await TransactionsImplementation.instance.transactionBox
          .deleteAt(transactionIndex);
    }

    List<String> parts = transaction.id.split(' - ');

    String timestamp = parts[0];
    final splittedTransactionIndex = allTransactionList.indexWhere((element) =>
        element.id.contains(timestamp) && element.id != transaction.id);
    String splittedAccountId = '';
    String primaryAccountId = '';
    if (splittedTransactionIndex >= 0) {
      if (transaction.isGet) {
        splittedAccountId =
            allTransactionList[splittedTransactionIndex].fromContactId;
      } else {
        splittedAccountId =
            allTransactionList[splittedTransactionIndex].toContactId;
      }
      primaryAccountId =
          allTransactionList[splittedTransactionIndex].primaryAccountId;
    }

 await   SplittingImplementation.instance.editOrDeleteSplittingTrasaction(
      splittedAccountId: splittedAccountId,
      transactionId: transactionId,
      primaryAccountId: primaryAccountId,
      amountSplitted: amount,
      transactionType: transactionType,
      timeOfTrans: timeOfTrans,
      ledgerId: ledgerId,
      isEdit: isEdit,
      isDelete: isDelete,
      billImage: billImage,
      userTransactionId: userTransactionId,
      transactionDetails: transactionDetails,
    );
  }
}
