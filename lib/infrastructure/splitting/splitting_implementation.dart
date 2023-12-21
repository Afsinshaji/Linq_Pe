import 'dart:io';

import 'package:hive/hive.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/splitted/splitted_accounts.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';
import 'package:linq_pe/domain/repositories/splitting/splitting.dart';
import 'package:linq_pe/infrastructure/ledger/ledger_implementation.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

class SplittingImplementation extends SplittingRepository {
  // creating a singleton
  SplittingImplementation.internal();
  static SplittingImplementation instance = SplittingImplementation.internal();
  SplittingImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  late Box<SplittedAccountsModel> splittingBox;
  opensplittingBox() async {
    splittingBox = await Hive.openBox("splittingBox");
  }

  @override
  addSplittingTransaction(
      {required String splittedAccountId,
      required String primaryAccountId,
      required double amountSplitted,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      required String ledgerId,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails}) async {
    final splittedAccountsList = splittingBox.values.toList();
    final splittedIndex = splittedAccountsList.indexWhere((element) =>
        element.primaryAccountContactId == primaryAccountId &&
        element.splittedAccountContactId == splittedAccountId &&
        element.ledgerId == ledgerId);
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    double balanceAmount = 0.0;
    double payedAmount = 0.0;
    double receivedAmount = 0.0;
    List<TransactionModel> transactionList = [];
    if (splittedIndex < 0) {
      balanceAmount = amountSplitted;
      payedAmount = 0.0;
      receivedAmount = amountSplitted;
      transactionList
          .add(TransactionModel(transactionId: id, ledgerId: ledgerId));

      await splittingBox.add(SplittedAccountsModel(
          ledgerId: ledgerId,
          primaryAccountContactId: primaryAccountId,
          splittedAccountContactId: splittedAccountId,
          recievedAmt: receivedAmount,
          payedAmt: payedAmount,
          balanceAmt: balanceAmount,
          transactionList: transactionList));
    } else {
      balanceAmount =
          amountSplitted + splittedAccountsList[splittedIndex].balanceAmt;
      receivedAmount =
          amountSplitted + splittedAccountsList[splittedIndex].recievedAmt;
      payedAmount = splittedAccountsList[splittedIndex].payedAmt;
      if (splittedAccountsList[splittedIndex].transactionList != null) {
        transactionList = splittedAccountsList[splittedIndex].transactionList!;
      }
      transactionList
          .add(TransactionModel(transactionId: id, ledgerId: ledgerId));

      await splittingBox.putAt(
          splittedIndex,
          SplittedAccountsModel(
            ledgerId: ledgerId,
            primaryAccountContactId: primaryAccountId,
            splittedAccountContactId: splittedAccountId,
            recievedAmt: receivedAmount,
            payedAmt: payedAmount,
            balanceAmt: balanceAmount,
            transactionList: transactionList,
          ));
    }
    await LedgerImplementation.instance.addLedgerAmounts(
        blanceAmt: amountSplitted, payedAmt: 0.0, ledgerId: ledgerId);

    await TransactionsImplementation.instance.transactionBox.add(
        SecondaryTransactionsModel(
            billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: userTransactionId,
            isExpense: false,
            isSecondaryPay: false,
            primaryAccountId: primaryAccountId,
            isGive: false,
            isGet: false,
            isAddBalance: false,
            isSplit: true,
            id: id,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: splittedAccountId,
            payedAmt: payedAmount,
            balanceAmt: balanceAmount,
            isPayed: false,
            givenAmt: amountSplitted,
            fromContactId: 'You'));
  }

  @override
  List<SplittedAccountsModel> getSplittedAccountList(
      {required String ledgerId}) {
    final listOfSplittedAccountsList = splittingBox.values
        .toList()
        .where((element) => element.ledgerId == ledgerId)
        .toList();
    return listOfSplittedAccountsList;
  }

  Future editOrDeleteSplittingTrasaction(
      {required String splittedAccountId,
      required String transactionId,
      required String primaryAccountId,
      required double? amountSplitted,
      required TransactionType? transactionType,
      required DateTime? timeOfTrans,
      required String ledgerId,
      required bool isEdit,
      required bool isDelete,
      required File? billImage,
      required String? userTransactionId,
      required String? transactionDetails}) async {
    final splittedAccountsList = splittingBox.values.toList();
    final splittedIndex = splittedAccountsList.indexWhere((element) =>
        element.primaryAccountContactId == primaryAccountId &&
        element.splittedAccountContactId == splittedAccountId &&
        element.ledgerId == ledgerId);
    if (splittedIndex < 0) {
      return;
    }
    final allTransactionList =
        TransactionsImplementation.instance.transactionBox.values.toList();
    final transactionIndex =
        allTransactionList.indexWhere((element) => element.id == transactionId);
    if (transactionIndex < 0) {
      return;
    }
    double received = 0.0;
    double balance = 0.0;
    double payed = 0.0;
    final splittedAccount = splittedAccountsList[splittedIndex];
    final transaction = allTransactionList[transactionIndex];
    if (transaction.isSplit) {
      if (isEdit) {
        received =
            splittedAccount.recievedAmt - transaction.givenAmt + amountSplitted!;
        balance =
            splittedAccount.balanceAmt - transaction.givenAmt + amountSplitted;
        payed = splittedAccount.payedAmt;
           await LedgerImplementation.instance.addLedgerAmounts(
        blanceAmt: amountSplitted-transaction.givenAmt, payedAmt: 0.0, ledgerId: ledgerId);
      }
      if (isDelete) {
        received = splittedAccount.recievedAmt - transaction.givenAmt;
        balance = splittedAccount.balanceAmt - transaction.givenAmt;
        payed = splittedAccount.payedAmt;
           await LedgerImplementation.instance.addLedgerAmounts(
        blanceAmt:-transaction.givenAmt, payedAmt: 0.0, ledgerId: ledgerId);
      }
    } else if (transaction.isPayed) {
      if (isEdit) {
        received = splittedAccount.recievedAmt;
        balance =
            splittedAccount.balanceAmt + transaction.givenAmt - amountSplitted!;
        payed =
            splittedAccount.payedAmt - transaction.givenAmt + amountSplitted;
               await LedgerImplementation.instance.addLedgerAmounts(
        blanceAmt:transaction.givenAmt- amountSplitted, 
        payedAmt: -transaction.givenAmt+amountSplitted, ledgerId: ledgerId);
          
      }
      if (isDelete) {
        received = splittedAccount.recievedAmt;
        balance = splittedAccount.balanceAmt + transaction.givenAmt;
        payed = splittedAccount.payedAmt - transaction.givenAmt;
           await LedgerImplementation.instance.addLedgerAmounts(
        blanceAmt: transaction.givenAmt, payedAmt:  -transaction.givenAmt, ledgerId: ledgerId);
      }
    await  TransactionsImplementation.instance.editOrDeleteExpenseTransaction(
          transactionDetails: transactionDetails,
          amount: amountSplitted,
          transactionType: transactionType,
          timeOfTrans: timeOfTrans,
     
          expenseContactId: transaction.toContactId,
       
          ledgerId: ledgerId,
          previousAmount: transaction.givenAmt,
          expenseFromId: splittedAccount.splittedAccountContactId,
          isEdit: isEdit,
          isDelete: isDelete,
          billImage: billImage,
          userTransactionId: userTransactionId);
    }
    await splittingBox.putAt(
        splittedIndex,
        SplittedAccountsModel(
          ledgerId: splittedAccount.ledgerId,
          primaryAccountContactId: splittedAccount.primaryAccountContactId,
          splittedAccountContactId: splittedAccount.splittedAccountContactId,
          recievedAmt: received,
          payedAmt: payed,
          balanceAmt: balance,
          transactionList: splittedAccount.transactionList,
        ));
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
            payedAmt: amountSplitted!,
            balanceAmt: amountSplitted,
            isPayed: transaction.isPayed,
            givenAmt: amountSplitted,
            fromContactId: transaction.fromContactId));
           
  }
}
