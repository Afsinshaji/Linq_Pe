import 'dart:developer';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/party/Expense_account/expense_account.dart';
import 'package:linq_pe/domain/models/splitted/splitted_accounts.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/party_account_model.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';
import 'package:linq_pe/domain/repositories/transactions/transactions_repository.dart';
import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';
import 'package:linq_pe/infrastructure/party/party_implementation.dart';
import 'package:linq_pe/infrastructure/splitting/splitting_implementation.dart';

class TransactionsImplementation extends TransactionsRepository {
  // creating a singleton
  TransactionsImplementation.internal();
  static TransactionsImplementation instance =
      TransactionsImplementation.internal();
  TransactionsImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  ///

  late Box<PartyAccountsModel> partyAccountsBox;
  openPartyAccountsBox() async {
    partyAccountsBox = await Hive.openBox("partyAccountsBox");
  }

  late Box<SecondaryTransactionsModel> transactionBox;
  openTransactionBox() async {
    transactionBox = await Hive.openBox("transactionBox");
  }

  late Box<ExpenseAccountModel> expenseBox;
  openExpenseBox() async {
    expenseBox = await Hive.openBox("expenseBox");
  }

  Future<void> deletePartyAccount({required String contactId, required String ledgerId}) async {
    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == contactId&& element.ledgerId==ledgerId);
    if (transactedAccountIndex >= 0) {
      await partyAccountsBox.deleteAt(transactedAccountIndex);
    }
  }

  @override
  Future<void> splittedPayment(
      {required String fromContactId,
      required String toContactId,
      required double amount,
      required String primaryContactId,
      required TransactionType transactionType,
        required String ledgerId,
      required DateTime timeOfTrans,
      
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    final splittingAccountsList =
        SplittingImplementation.instance.splittingBox.values.toList();
    final splittedAccountIndex = splittingAccountsList.indexWhere((element) =>
    element.ledgerId==ledgerId&&
        element.splittedAccountContactId == fromContactId &&
        element.primaryAccountContactId == primaryContactId);
    final contactsList =
        ContactsImplementation.instance.contactsBox.values.toList();
    final contactIndex = contactsList
        .indexWhere((element) => element.contactId == primaryContactId&&
        element.ledgerId==ledgerId);
    // final contact = contactsList[contactIndex];
    // final partyList = partyAccountsBox.values.toList();
    // final partyIndex = partyList
    //     .indexWhere((element) => element.contactId == primaryContactId);
    // if (partyIndex >= 0) {
    //   final party = partyList[partyIndex];
    //   await partyAccountsBox.putAt(
    //       partyIndex,
    //       PartyAccountsModel(
    //           contactId: party.contactId,
    //           recievedAmt: party.recievedAmt,
    //           payedAmt: party.payedAmt + amount,
    //           balanceAmt: party.balanceAmt - amount,
    //           transactionList: party.transactionList,

    //           ));
    // }
    if (splittedAccountIndex < 0) {
      return;
    }
    if (contactIndex < 0) {
      return;
    }
    final splittedAccount = splittingAccountsList[splittedAccountIndex];
    List<TransactionModel> transactionList = [];
    if (splittedAccount.transactionList != null) {
      transactionList = splittedAccount.transactionList!;
    }

    transactionList.add(TransactionModel(transactionId: id,
    ledgerId: ledgerId,
    ));

    await SplittingImplementation.instance.splittingBox.putAt(
        splittedAccountIndex,
        SplittedAccountsModel(
          ledgerId: splittedAccount.ledgerId,
          primaryAccountContactId: splittedAccount.primaryAccountContactId,
          splittedAccountContactId: splittedAccount.splittedAccountContactId,
          recievedAmt: splittedAccount.recievedAmt,
          payedAmt: splittedAccount.payedAmt + amount,
          balanceAmt: splittedAccount.balanceAmt - amount,
          transactionList: transactionList,
        ));

    await transactionBox.add(SecondaryTransactionsModel(
        isExpense: true,
        isSecondaryPay: false,
        primaryAccountId: primaryContactId,
        isGive: false,
        isGet: false,
        isAddBalance: false,
        isSplit: false,
        id: id,
        transactionDetails: transactionDetails,
        transactionType: transactionType,
        billImage: await convertToUni8List(billImage),
        transactionId: transactionId,
        timeOfTrans: timeOfTrans,
        toContactId: toContactId,
        payedAmt: splittedAccount.payedAmt + amount,
        balanceAmt: splittedAccount.balanceAmt - amount,
        isPayed: true,
        givenAmt: amount,
        fromContactId: fromContactId));

    // await ContactsImplementation.instance.updateContactAmounts(
    //     balanceAmount: contact.blanceAmount! - amount,
    //     receivedAmount: contact.receivedAmount!,
    //     payedAmount: contact.payedAmount! + amount,
    //     contactId: primaryContactId);

    await recepientTransaction(
      billImage: billImage,
      transactionDetails: transactionDetails,
      transactionId: transactionId,
      ledgerId: ledgerId,
        isExpenseAccount: true,
        fromContactId: fromContactId,
        toContactId: toContactId,
        amount: amount,
        isPayed: true,
        transactionType: transactionType,
        timeOfTrans: timeOfTrans,
        isAddBalance: false,
        isGetting: false,
        isGive: false,
        primaryContactId: primaryContactId);
  }

  @override
  Future<void> addGetTransction(
      {required bool isExpenseAccount,
      required String fromContactId,
      required String toContactId,
      required double amount,
        required String ledgerId,
      required bool isPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    log('pay$isPayed');

    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == fromContactId
        && element.ledgerId==ledgerId
        );

    if (transactedAccountIndex < 0) {
      //come

      await createNewTransaction(
        ledgerId:ledgerId ,
        isExpenseAccount: isExpenseAccount,
        primaryContactId: fromContactId,
        isGive: false,
        isGetting: isPayed ? false : true,
        isAddBalance: false,
        timeOfTrans: timeOfTrans,
        transactionType: transactionType,
        billImage: billImage,
        transactionId: transactionId,
        fromContactId: fromContactId,
        toContactId: toContactId,
        amount: amount,
        isPayed: isPayed,
        transactionDetails: transactionDetails,
      );

      // transactionBox.add(TransactionsModel(
      //     contactId: fromContactId,
      //     recievedAmt: amount,
      //     payedAmt: isPayed ? amount : 0,
      //     balanceAmt: amount,
      //     secondaryTransaction: [
      //       SecondaryTransactionsModel(
      //           timeOfTrans: DateTime.now(),
      //           toContactId: toContactId,
      //           payedAmt: isPayed ? amount : 0,
      //           balanceAmt: isPayed ? 0 : amount,
      //           isPayed: isPayed,
      //           givenAmt: amount,
      //           fromContactId: fromContactId)
      //     ]));
    } else {
      await updateExistingTransaction(
        ledgerId: ledgerId,
          isExpenseAccount: isExpenseAccount,
          isSecondaryPay: false,
          primaryContactId: fromContactId,
          isGive: false,
          isGetting: isPayed ? false : true,
          isAddBalance: false,
          timeOfTrans: timeOfTrans,
          transactionType: transactionType,
          billImage: billImage,
          transactionId: transactionId,
          fromContactId: fromContactId,
          toContactId: toContactId,
          amount: amount,
          isPayed: isPayed,
          transactionDetails: transactionDetails,
          transactedAccountsList: transactedAccountsList,
          transactedAccountIndex: transactedAccountIndex);
      // final transaction = transactedAccountsList[transactedAccountIndex];
      // List<SecondaryTransactionsModel> secondaryList = [];
      // if (transaction.secondaryTransaction != null &&
      //     transaction.secondaryTransaction!.isNotEmpty) {
      //   secondaryList = transaction.secondaryTransaction!;
      //   if (!isPayed) {
      //     final lastIndex = secondaryList
      //         .lastIndexWhere((element) => element.toContactId == toContactId);
      //     if (lastIndex < 0) {
      //       secondaryList.add(SecondaryTransactionsModel(
      //           timeOfTrans: DateTime.now(),
      //           toContactId: toContactId,
      //           payedAmt: 0,
      //           balanceAmt: amount,
      //           isPayed: isPayed,
      //           givenAmt: amount,
      //           fromContactId: fromContactId));
      //     } else {
      //       final secondayTrans = secondaryList[lastIndex];

      //       secondaryList.add(SecondaryTransactionsModel(
      //           timeOfTrans: DateTime.now(),
      //           toContactId: toContactId,
      //           payedAmt: secondayTrans.payedAmt,
      //           balanceAmt: secondayTrans.balanceAmt + amount,
      //           isPayed: isPayed,
      //           givenAmt: amount,
      //           fromContactId: fromContactId));
      //     }
      //   } else {
      //     secondaryList.add(SecondaryTransactionsModel(
      //         timeOfTrans: DateTime.now(),
      //         toContactId: toContactId,
      //         payedAmt: 0,
      //         balanceAmt: amount,
      //         isPayed: isPayed,
      //         givenAmt: amount,
      //         fromContactId: fromContactId));
      //   }
      // } else {
      //   secondaryList.add(SecondaryTransactionsModel(
      //       timeOfTrans: DateTime.now(),
      //       toContactId: toContactId,
      //       payedAmt: 0,
      //       balanceAmt: amount,
      //       isPayed: isPayed,
      //       givenAmt: amount,
      //       fromContactId: fromContactId));
      // }

      // transactionBox.putAt(
      //     transactedAccountIndex,
      //     TransactionsModel(
      //       contactId: transaction.contactId,
      //       recievedAmt: transaction.recievedAmt + amount,
      //       payedAmt:
      //           isPayed ? transaction.payedAmt + amount : transaction.payedAmt,
      //       balanceAmt: isPayed
      //           ? transaction.balanceAmt
      //           : transaction.balanceAmt + amount,
      //       secondaryTransaction: secondaryList,
      //     ));
    }
  }

  createNewTransaction(
      {required String fromContactId,
      required String toContactId,
      required double amount,
      required bool isPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      required bool isAddBalance,
      required bool isGetting,
      required bool isGive,
      required String primaryContactId,
      required bool isExpenseAccount,
       required String ledgerId,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    await transactionBox.add(SecondaryTransactionsModel(
        isExpense: isExpenseAccount,
        isSecondaryPay: false,
        primaryAccountId: primaryContactId,
        isGive: isGive,
        isGet: isGetting,
        isAddBalance: isAddBalance,
        isSplit: false,
        id: id,
        transactionType: transactionType,
        billImage: await convertToUni8List(billImage),
        transactionId: transactionId,
        timeOfTrans: timeOfTrans,
        toContactId: toContactId,
        payedAmt: isPayed || isGive ? amount : 0,
        balanceAmt: isGive
            ? -amount
            : isPayed
                ? 0
                : amount,
        isPayed: isPayed,
        givenAmt: amount,
        fromContactId: fromContactId,
        transactionDetails: transactionDetails));
    if (isPayed) {
      return;
    }

    await partyAccountsBox.add(PartyAccountsModel(
      ledgerId: ledgerId,
        contactId: fromContactId,
        recievedAmt: isAddBalance || isGive ? 0 : amount,
        payedAmt: isPayed || isGive ? amount : 0,
        balanceAmt: isGive ? -amount : amount,
        transactionList: [
          TransactionModel(transactionId: id, transactionsList: [],
          ledgerId:ledgerId ,
          ),
        ]));

    await ContactsImplementation.instance.updateContactAmounts(
      ledgerId: ledgerId,
        balanceAmount: isGive ? -amount : amount,
        receivedAmount: isAddBalance || isGive ? 0 : amount,
        payedAmount: isPayed || isGive ? amount : 0,
        contactId: isAddBalance || isGive ? toContactId : fromContactId);
  }

  updateExistingTransaction(
      {required String fromContactId,
      required String toContactId,
      String? transactionDetails,
      required double amount,
      required bool isPayed,  required String ledgerId,
      required List<PartyAccountsModel> transactedAccountsList,
      required int transactedAccountIndex,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      required bool isAddBalance,
      required bool isGetting,
      required bool isGive,
      required String primaryContactId,
      required bool isSecondaryPay,
      required bool isExpenseAccount,
      File? billImage,
      String? transactionId}) async {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    final transaction = transactedAccountsList[transactedAccountIndex];
    List<SecondaryTransactionsModel> secondaryList = [];
    final transactionModel = SecondaryTransactionsModel(
        isExpense: isExpenseAccount,
        isSecondaryPay: isSecondaryPay,
        isGive: isGive,
        primaryAccountId: primaryContactId,
        isGet: isGetting,
        isAddBalance: isAddBalance,
        isSplit: false,
        id: id,
        transactionDetails: transactionDetails,
        transactionType: transactionType,
        billImage: await convertToUni8List(billImage),
        transactionId: transactionId,
        timeOfTrans: timeOfTrans,
        toContactId: toContactId,
        payedAmt:
            isPayed ? transaction.payedAmt + amount : transaction.payedAmt,
        balanceAmt: isPayed || isGive
            ? transaction.balanceAmt - amount
            : transaction.balanceAmt + amount,
        isPayed: isPayed,
        givenAmt: amount,
        fromContactId: fromContactId);
    // await transactionBox.add(transactionModel);
    final transactionIdList = transaction.transactionList;
    if (transaction.transactionList != null &&
        transaction.transactionList!.isNotEmpty) {
      secondaryList = transactionBox.values.toList();
      log('kiki');
      if (!isPayed) {
        final lastIndex = secondaryList
            .lastIndexWhere((element) => element.toContactId == toContactId
         
            );
        if (lastIndex < 0) {
          await transactionBox.add(transactionModel);
        } else {
          final secondayTrans = secondaryList[lastIndex];
//come
          await transactionBox.add(SecondaryTransactionsModel(
              isExpense: isExpenseAccount,
              isSecondaryPay: isSecondaryPay,
              primaryAccountId: primaryContactId,
              isGive: isGive,
              isGet: isGetting,
              isAddBalance: isAddBalance,
              isSplit: false,
              id: id,
              //   secondaryTransaction: secondayTrans.,
              transactionDetails: transactionDetails,
              transactionType: transactionType,
              billImage: await convertToUni8List(billImage),
              transactionId: transactionId,
              timeOfTrans: timeOfTrans,
              toContactId: toContactId,
              payedAmt: isPayed
                  ? transaction.payedAmt + amount
                  : transaction.payedAmt,
              balanceAmt: isPayed || isGive
                  ? transaction.balanceAmt - amount
                  : transaction.balanceAmt + amount,
              isPayed: isPayed,
              givenAmt: amount,
              fromContactId: fromContactId));
          log('amounts${transaction.balanceAmt - amount}');
        }
      } else {
        await transactionBox.add(transactionModel);
      }
    } else {
      await transactionBox.add(transactionModel);
    }
    transactionIdList!.add(TransactionModel(
      ledgerId:ledgerId ,
      transactionId: id,
    ));
    log('Giving:${transaction.recievedAmt}');
    await partyAccountsBox.putAt(
        transactedAccountIndex,
        PartyAccountsModel(
          ledgerId: ledgerId,
            contactId: transaction.contactId,
            recievedAmt: isAddBalance || isPayed || isGive
                ? transaction.recievedAmt
                : transaction.recievedAmt + amount,
            payedAmt: isPayed || isGive
                ? transaction.payedAmt + amount
                : transaction.payedAmt,
            balanceAmt: isPayed || isGive
                ? transaction.balanceAmt - amount
                : transaction.balanceAmt + amount,
            transactionList: transactionIdList
            // secondaryTransaction: secondaryList,
            ));
    await ContactsImplementation.instance.updateContactAmounts(
      ledgerId: ledgerId,
        balanceAmount: isPayed || isGive
            ? transaction.balanceAmt - amount
            : transaction.balanceAmt + amount,
        receivedAmount: isAddBalance || isPayed || isGive
            ? transaction.recievedAmt
            : transaction.recievedAmt + amount,
        payedAmount: isPayed || isGive
            ? transaction.payedAmt + amount
            : transaction.payedAmt,
        contactId: isAddBalance || isGive ? toContactId : fromContactId);

    if (isPayed) {
      await recepientTransaction(
        ledgerId: ledgerId,
          isExpenseAccount: true,
          fromContactId: fromContactId,
          toContactId: toContactId,
          amount: amount,
          isPayed: isPayed,
          transactionType: transactionType,
          timeOfTrans: timeOfTrans,
          isAddBalance: isAddBalance,
          isGetting: isGetting,
          isGive: isGive,
          primaryContactId: primaryContactId);
    }
  }

  Future recepientTransaction(
      {required String fromContactId,
      required String toContactId,
      String? transactionDetails,
      required double amount,
      required bool isPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      required bool isAddBalance,
      required bool isGetting,
      required bool isGive,
      required String primaryContactId,
      required bool isExpenseAccount,
        required String ledgerId,
      File? billImage,
      String? transactionId}) async {
    if (isExpenseAccount) {
      final expenseAccountList = expenseBox.values.toList();
      final expenseAccountIndex = expenseAccountList
          .indexWhere((element) => element.contactId == toContactId && element.ledgerId==ledgerId);
      if (expenseAccountIndex < 0) {
        await expenseBox.add(ExpenseAccountModel(
          ledgerId: ledgerId,
          contactId: toContactId));
      }
    } else {
      final transactedAccountsList = partyAccountsBox.values.toList();
      final transactedAccountIndex = transactedAccountsList
          .indexWhere((element) => element.contactId == toContactId&& element.ledgerId==ledgerId);
      if (transactedAccountIndex < 0) {
        await PartyImplementation.instance.addCustomer(contactId: toContactId,ledgerId: ledgerId);
      }
    }
    await addGetTransction(
      ledgerId: ledgerId,
      isExpenseAccount: isExpenseAccount,
      fromContactId: toContactId,
      toContactId: fromContactId,
      amount: amount,
      isPayed: false,
      transactionType: transactionType,
      timeOfTrans: timeOfTrans,
      billImage: billImage,
      transactionDetails: transactionDetails,
      transactionId: transactionId,
    );
  }

  @override
  Future<void> addBalanceTransction(
      {required String fromContactId,
      required String toContactId,
      required double amount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
        required String ledgerId,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == toContactId&& element.ledgerId==ledgerId);
    if (transactedAccountIndex < 0) {
      await createNewTransaction(
        ledgerId: ledgerId,
        isExpenseAccount: false,
        primaryContactId: toContactId,
        isGive: false,
        isGetting: false,
        transactionDetails: transactionDetails,
        isAddBalance: true,
        fromContactId: fromContactId,
        toContactId: toContactId,
        amount: amount,
        isPayed: false,
        transactionType: transactionType,
        timeOfTrans: timeOfTrans,
        billImage: billImage,
        transactionId: transactionId,
      );
    } else {
      await updateExistingTransaction(
        ledgerId: ledgerId,
          isExpenseAccount: false,
          isSecondaryPay: false,
          primaryContactId: toContactId,
          isGive: false,
          isGetting: false,
          transactionDetails: transactionDetails,
          isAddBalance: true,
          timeOfTrans: timeOfTrans,
          transactionType: transactionType,
          billImage: billImage,
          transactionId: transactionId,
          fromContactId: fromContactId,
          toContactId: toContactId,
          amount: amount,
          isPayed: false,
          transactedAccountsList: transactedAccountsList,
          transactedAccountIndex: transactedAccountIndex);
    }
  }

  @override
  Future<void> addGiveTransaction(
      {required String fromContactId,
      required String toContactId,
      required double amount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
        required String ledgerId,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == toContactId&& element.ledgerId==ledgerId);
    if (transactedAccountIndex < 0) {
      createNewTransaction(
        ledgerId: ledgerId,
          isExpenseAccount: false,
          billImage: billImage,
          transactionDetails: transactionDetails,
          transactionId: transactionId,
          primaryContactId: toContactId,
          fromContactId: fromContactId,
          toContactId: toContactId,
          amount: amount,
          isPayed: false,
          transactionType: transactionType,
          timeOfTrans: timeOfTrans,
          isAddBalance: false,
          isGetting: false,
          isGive: true);
    } else {
      await updateExistingTransaction(
        ledgerId: ledgerId,
          isExpenseAccount: false,
          isSecondaryPay: false,
          primaryContactId: toContactId,
          isGive: true,
          isGetting: false,
          transactionDetails: transactionDetails,
          isAddBalance: false,
          timeOfTrans: timeOfTrans,
          transactionType: transactionType,
          billImage: billImage,
          transactionId: transactionId,
          fromContactId: fromContactId,
          toContactId: toContactId,
          amount: amount,
          isPayed: false,
          transactedAccountsList: transactedAccountsList,
          transactedAccountIndex: transactedAccountIndex);
    }
  }

  @override
  PartyAccountsModel? getAccountDetails({required String contactId,  required String ledgerId,}) {
    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == contactId&&element.ledgerId==ledgerId&& element.ledgerId==ledgerId);
    if (transactedAccountIndex < 0) {
      return null;
    } else {
      return transactedAccountsList[transactedAccountIndex];
    }
  }

  @override
  List<SecondaryTransactionsModel> getTransactionsList(
      {required List<TransactionModel> transactionIdList}) {
    if (transactionIdList.isEmpty) {
      return [];
    }
    final allTransactions = transactionBox.values.toList();
    List<SecondaryTransactionsModel> listOfTransactions = [];
    for (var id in transactionIdList) {
      final index = allTransactions
          .indexWhere((element) => element.id == id.transactionId);

      if (index >= 0) {
        listOfTransactions.add(allTransactions[index]);
      }
    }
    return listOfTransactions;
  }

  @override
  Future<void> secondaryPartyPayment(
      {required bool isSplittedPrimaryTransaction,
      required String transactionRealId,
      required String splittedTransactionId,
      required String primaryContactId,
      required String secondaryContactId,
      required String payedToId,
      required double amountPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
        required String ledgerId,
      File? billImage,
      String? transactionId,
      String? transactionDetails}) async {
    // Step 1: Retrieve Transacted Accounts
    final transactedAccountsList = partyAccountsBox.values.toList();
    // Step 2: Find Primary Transaction
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == primaryContactId&& element.ledgerId==ledgerId);
    if (transactedAccountIndex < 0) {
      // If primary transaction not found, return
      return;
    } else {
      // Step 3: Check Secondary Transactions in Primary Transaction
      final primaryTransaction = transactedAccountsList[transactedAccountIndex];
      if (primaryTransaction.transactionList == null ||
          primaryTransaction.transactionList!.isEmpty) {
        // If no secondary transactions, return
        return;
      } else {
        // Step 4: Find Secondary Transaction for the Primary Contact
        final listOfPrimeSecondaryTransactionIds =
            primaryTransaction.transactionList!;
        List<SecondaryTransactionsModel> secondaryTransactionList = [];
        List<SecondaryTransactionsModel> listOfSecondaryTransactions = [];

        final transactionIdIndex =
            listOfPrimeSecondaryTransactionIds.indexWhere(
                (element) => element.transactionId == splittedTransactionId&& element.ledgerId==ledgerId);
        if (transactionIdIndex < 0) {
          return;
        }
        final listOfSecondaryTransactionIds =
            listOfPrimeSecondaryTransactionIds[transactionIdIndex]
                .transactionsList;
        final allTransactions = transactionBox.values.toList();

        if (listOfSecondaryTransactionIds == null) {
          return;
        }

        for (var id in listOfSecondaryTransactionIds) {
          final index = allTransactions
              .indexWhere((element) => id.transactionId == element.id);
          if (index >= 0) {
            listOfSecondaryTransactions.add(allTransactions[index]);
          }
        }

        secondaryTransactionList = listOfSecondaryTransactions
            .where((element) => element.toContactId == secondaryContactId)
            .toList();

        if (isSplittedPrimaryTransaction) {
          final splittedIdList =
              listOfPrimeSecondaryTransactionIds[transactionIdIndex]
                  .transactionsList;
          if (splittedIdList == null) {
            return;
          }
          if (splittedIdList.isEmpty) {
            return;
          }

          final idIndex = splittedIdList.indexWhere(
              (element) => element.transactionId == transactionRealId&& element.ledgerId==ledgerId);
          if (idIndex < 0) {
            return;
          }

          final id = DateTime.now().microsecondsSinceEpoch.toString();
          List<TransactionModel> idList = [];
          double lastBalanceAmount = 0.0;
          double lastPayedAmount = 0.0;
          double receivedAmount = 0.0;
          if (splittedIdList[idIndex].transactionsList != null) {
            idList = splittedIdList[idIndex].transactionsList!;
          }
          if (idList.isNotEmpty) {
            final lastId = idList[idList.length - 1];
            log('Here...y${lastId.transactionId}');
            final allIndex = allTransactions
                .indexWhere((element) => element.id == lastId.transactionId);
            final allReceivedAmountId = allTransactions
                .indexWhere((element) => element.id == splittedTransactionId);
            receivedAmount = allTransactions[allReceivedAmountId].givenAmt;

            if (allIndex >= 0) {
              lastBalanceAmount = allTransactions[allIndex].balanceAmt;
              lastPayedAmount = allTransactions[allIndex].payedAmt;
            }
          }

          idList.add(TransactionModel(transactionId: id,ledgerId: ledgerId));
          splittedIdList[idIndex] = TransactionModel(
            ledgerId: ledgerId,
              transactionId: splittedIdList[idIndex].transactionId,
              transactionsList: idList);
          listOfPrimeSecondaryTransactionIds[transactionIdIndex] =
              TransactionModel(
                ledgerId: ledgerId,
                  transactionId:
                      listOfPrimeSecondaryTransactionIds[transactionIdIndex]
                          .transactionId,
                  transactionsList: splittedIdList);
          await partyAccountsBox.putAt(
              transactedAccountIndex,
              PartyAccountsModel(
                ledgerId: primaryTransaction.ledgerId,
                  contactId: primaryTransaction.contactId,
                  recievedAmt: primaryTransaction.recievedAmt,
                  payedAmt: primaryTransaction.payedAmt + amountPayed,
                  balanceAmt: primaryTransaction.balanceAmt - amountPayed,
                  transactionList: listOfPrimeSecondaryTransactionIds));

          await transactionBox.add(SecondaryTransactionsModel(
              isExpense: false,
              isSecondaryPay: true,
              primaryAccountId: primaryContactId,
              isGive: false,
              isGet: false,
              isAddBalance: false,
              isSplit: false,
              id: id,
              transactionType: transactionType,
              timeOfTrans: timeOfTrans,
              toContactId: payedToId,
              payedAmt: lastPayedAmount + amountPayed,
              balanceAmt: lastBalanceAmount == 0.0
                  ? receivedAmount - amountPayed
                  : lastBalanceAmount - amountPayed,
              isPayed: true,
              givenAmt: amountPayed,
              fromContactId: secondaryContactId,
              billImage: await convertToUni8List(billImage),
              transactionDetails: transactionDetails,
              transactionId: transactionId));
        }

        // final splittedTransactionIndex = listOfSecondaryTransactionIds
        //     .indexWhere((element) => element.transactionId == transactionRealId);
        // if (splittedTransactionIndex < 0) {
        //   return;
        // }
        // final splittedTransaction =
        //     listOfSecondaryTransactionIds[splittedTransactionIndex];
        // if (splittedTransaction.transactionsList == null) {
        //   return;
        // }
        // final splittedList = splittedTransaction.transactionsList!;

        // secondaryTransactionList = splittedList
        //     .where((element) => element.toContactId == secondaryContactId);

//         if (secondaryTransactionList.isEmpty) {
//           // If no secondary transaction for the specified Primary contact, return
//           return;
//         }
//         //else {
//         // Step 5: Update Secondary Transaction Information
//         SecondaryTransactionsModel lastSecondaryTransaction =
//             secondaryTransactionList[secondaryTransactionList.length - 1];
//         final balanceAmt = lastSecondaryTransaction.balanceAmt;
//         final payedAmt = lastSecondaryTransaction.payedAmt;
//         // Updated last secondary transaction information
//         final reNewedlastSecondaryTransaction = SecondaryTransactionsModel(
//             isGet: lastSecondaryTransaction.isGet,
//             isGive: lastSecondaryTransaction.isGive,
//             isSplit: lastSecondaryTransaction.isSplit,
//             id: lastSecondaryTransaction.id,
//             billImage: lastSecondaryTransaction.billImage,
//             transactionDetails: lastSecondaryTransaction.transactionDetails,
//             transactionId: lastSecondaryTransaction.transactionId,
//             transactionType: lastSecondaryTransaction.transactionType,
//             timeOfTrans: lastSecondaryTransaction.timeOfTrans,
//             toContactId: lastSecondaryTransaction.toContactId,
//             payedAmt: payedAmt + amountPayed,
//             balanceAmt: balanceAmt - amountPayed,
//             isPayed: lastSecondaryTransaction.isPayed,
//             givenAmt: lastSecondaryTransaction.givenAmt,
//             fromContactId: lastSecondaryTransaction.fromContactId);
//         final lastIndex = listOfSecondaryTransactions
//             .lastIndexWhere((element) => element == lastSecondaryTransaction);

//         listOfSecondaryTransactions[lastIndex] =
//             reNewedlastSecondaryTransaction;
// // Create a new secondary transaction payment
//         final secondaryPayment = SecondaryTransactionsModel(
//             isSplit: false,
//             id: DateTime.now().millisecondsSinceEpoch.toString(),
//             billImage: billImage,
//             transactionDetails: transactionDetails,
//             transactionId: transactionId,
//             secondaryTransaction: null,
//             transactionType: transactionType,
//             timeOfTrans: timeOfTrans,
//             toContactId: payedToId,
//             payedAmt: payedAmt + amountPayed,
//             balanceAmt: balanceAmt - amountPayed,
//             isPayed: true,
//             givenAmt: amountPayed,
//             fromContactId: secondaryContactId);
// // Add the new secondary transaction payment to every secondary transaction in the list
//         for (var i = 0; i < listOfSecondaryTransactions.length; i++) {
//           if (listOfSecondaryTransactions[i].toContactId ==
//               secondaryContactId) {
//             List<SecondaryTransactionsModel> listOfModel = [];
//             if (listOfSecondaryTransactions[i].secondaryTransaction != null) {
//               listOfModel =
//                   listOfSecondaryTransactions[i].secondaryTransaction!;
//             }
//             listOfModel.add(secondaryPayment);

//             final element = SecondaryTransactionsModel(
//                 isSplit: false,
//                 id: listOfSecondaryTransactions[i].id,
//                 transactionType: listOfSecondaryTransactions[i].transactionType,
//                 timeOfTrans: listOfSecondaryTransactions[i].timeOfTrans,
//                 toContactId: listOfSecondaryTransactions[i].toContactId,
//                 payedAmt: listOfSecondaryTransactions[i].payedAmt,
//                 balanceAmt: listOfSecondaryTransactions[i].balanceAmt,
//                 isPayed: listOfSecondaryTransactions[i].isPayed,
//                 givenAmt: listOfSecondaryTransactions[i].givenAmt,
//                 fromContactId: listOfSecondaryTransactions[i].fromContactId,
//                 billImage: listOfSecondaryTransactions[i].billImage,
//                 transactionDetails:
//                     listOfSecondaryTransactions[i].transactionDetails,
//                 transactionId: listOfSecondaryTransactions[i].transactionId,
//                 secondaryTransaction: listOfModel);

//             listOfSecondaryTransactions[i] = element;
//           }
//         }
// // Step 6: Update Primary Transaction
//         final renewedPrimaryTransaction = TransactionsModel(
//           contactId: primaryTransaction.contactId,
//           recievedAmt: primaryTransaction.recievedAmt,
//           payedAmt: primaryTransaction.payedAmt + amountPayed,
//           balanceAmt: primaryTransaction.balanceAmt - amountPayed,
//           secondaryTransaction: listOfSecondaryTransactions,
//         );
// // Update the primary transaction in the data store
//         transactionBox.putAt(transactedAccountIndex, renewedPrimaryTransaction);
        await ContactsImplementation.instance.updateContactAmounts(
          ledgerId: ledgerId,
            balanceAmount: primaryTransaction.balanceAmt - amountPayed,
            receivedAmount: primaryTransaction.recievedAmt,
            payedAmount: primaryTransaction.payedAmt + amountPayed,
            contactId: primaryTransaction.contactId);
//         // }
//       }
      }
    }
  }

  List<SecondaryTransactionsModel> getAllTransactions() {
    return transactionBox.values.toList();
  }

  @override
  Future<void> splitBalanceAmount(
      {required String primaryContactId,  required String ledgerId,
      required String toContactId,
      required double splitAmount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails}) async {
    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == primaryContactId&& element.ledgerId==ledgerId);

    if (transactedAccountIndex < 0) {
      return;
    }
    final primaryAccount = transactedAccountsList[transactedAccountIndex];
    if (splitAmount > primaryAccount.balanceAmt) {
      return;
    }
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    await transactionBox.add(SecondaryTransactionsModel(
        isExpense: false,
        isSecondaryPay: false,
        primaryAccountId: primaryContactId,
        billImage: await convertToUni8List(billImage),
        transactionDetails: transactionDetails,
        transactionId: userTransactionId,
        isGive: false,
        isGet: false,
        isAddBalance: false,
        isSplit: true,
        id: id,
        transactionType: transactionType,
        timeOfTrans: timeOfTrans,
        toContactId: toContactId,
        payedAmt: 0,
        balanceAmt: splitAmount,
        isPayed: false,
        givenAmt: splitAmount,
        fromContactId: 'You'));
    primaryAccount.transactionList!.add(TransactionModel(transactionId: id,ledgerId: ledgerId));
    await partyAccountsBox.putAt(transactedAccountIndex, primaryAccount);

    await recepientTransaction(
      ledgerId: ledgerId,
        isExpenseAccount: false,
        fromContactId: primaryContactId,
        toContactId: toContactId,
        amount: splitAmount,
        isPayed: false,
        transactionType: transactionType,
        timeOfTrans: timeOfTrans,
        isAddBalance: false,
        isGetting: true,
        isGive: false,
        billImage: billImage,
        transactionDetails: transactionDetails,
        transactionId: userTransactionId,
        primaryContactId: primaryContactId);
  }

  @override
  Future<void> splitAmount(
      {required String primaryContactId,
      required String toContactId,
      required String transactionId,
      required double splitAmount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
        required String ledgerId,
      required String id,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails}) async {
    final transactedAccountsList = partyAccountsBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == primaryContactId&& element.ledgerId==ledgerId);

    if (transactedAccountIndex < 0) {
      return;
    }
    final primaryAccount = transactedAccountsList[transactedAccountIndex];

    final transactionsIdList = primaryAccount.transactionList;
    if (transactionsIdList == null) {
      return;
    }
    final transactionIndex = transactionsIdList
        .indexWhere((element) => element.transactionId == transactionId&& element.ledgerId==ledgerId);
    if (transactionIndex < 0) {
      return;
    }
    final transactionModel = transactionsIdList[transactionIndex];
    final alltransactionList = transactionBox.values.toList();
    final transactionListIndex = alltransactionList.indexWhere(
      (element) => element.id == transactionId,
    );
    if (transactionListIndex < 0) {
      return;
    }
    final transaction = alltransactionList[transactionListIndex];
    if (splitAmount > transaction.givenAmt) {
      return;
    }

    List<TransactionModel> splitList = [];
    if (transactionModel.transactionsList != null) {
      splitList = transactionModel.transactionsList!;
    }
    if (splitList.isNotEmpty) {
      double totalSplitAmount = 0.0;
      for (var split in splitList) {
        final splitIndex = alltransactionList
            .indexWhere((element) => element.id == split.transactionId);
        totalSplitAmount = totalSplitAmount +
            (splitIndex < 0 ? 0.0 : alltransactionList[splitIndex].givenAmt);
      }
      if (splitAmount > (transaction.givenAmt - totalSplitAmount)) {
        return;
      }
    }

    splitList.add(TransactionModel(transactionId: id, ledgerId: ledgerId));
    log('listHere1${toContactId.toString()}');

    await transactionBox.add(SecondaryTransactionsModel(
        isExpense: false,
        isSecondaryPay: false,
        primaryAccountId: primaryContactId,
        billImage: await convertToUni8List(billImage),
        transactionDetails: transactionDetails,
        transactionId: transactionId,
        isGive: false,
        isGet: false,
        isAddBalance: false,
        isSplit: true,
        id: id,
        transactionType: transactionType,
        timeOfTrans: timeOfTrans,
        toContactId: toContactId,
        payedAmt: 0,
        balanceAmt: splitAmount,
        isPayed: false,
        givenAmt: splitAmount,
        fromContactId: 'You'));

    // transactionsList[transactionIndex] = SecondaryTransactionsModel(
    //     isSplit: transaction.isSplit,
    //     id: transaction.id,
    //     transactionType: transaction.transactionType,
    //     timeOfTrans: transaction.timeOfTrans,
    //     toContactId: transaction.toContactId,
    //     payedAmt: transaction.payedAmt,
    //     balanceAmt: transaction.balanceAmt,
    //     isPayed: transaction.isPayed,
    //     givenAmt: transaction.givenAmt,
    //     fromContactId: transaction.fromContactId,
    //     billImage: transaction.billImage,
    //     secondaryTransaction: splitList,
    //     transactionDetails: transaction.transactionDetails,
    //     transactionId: transaction.transactionId);
    transactionsIdList[transactionIndex] = TransactionModel(
      ledgerId: ledgerId,
      transactionId: transactionId,
      transactionsList: splitList,
    );
    await partyAccountsBox.putAt(
        transactedAccountIndex,
        PartyAccountsModel(
          ledgerId: primaryAccount.ledgerId,
          contactId: primaryAccount.contactId,
          recievedAmt: primaryAccount.recievedAmt,
          payedAmt: primaryAccount.payedAmt,
          balanceAmt: primaryAccount.balanceAmt,
          transactionList: transactionsIdList,
          // secondaryTransaction: transactionsList,
        ));
  }

  @override
  Future<void> deleteTransaction({
    required String transactionRealId,
      required String ledgerId,
  }) async {
    final listOfAllTransactions = transactionBox.values.toList();
    final transactionIndex = listOfAllTransactions
        .indexWhere((element) => element.id == transactionRealId);
    if (transactionIndex < 0) {
      return;
    }
    final transaction = listOfAllTransactions[transactionIndex];
    final partyAccountList = partyAccountsBox.values.toList();
    final partyIndex = partyAccountList.indexWhere(
        (element) => element.contactId == transaction.primaryAccountId&& element.ledgerId==ledgerId);
    final partyAccount = partyAccountList[partyIndex];

    await partyAccountsBox.putAt(
        partyIndex,
        PartyAccountsModel(
          ledgerId: partyAccount.ledgerId,
          contactId: partyAccount.contactId,
          recievedAmt: transaction.isGet
              ? partyAccount.recievedAmt - transaction.givenAmt
              : partyAccount.recievedAmt

          //  isAddBalance || isPayed || isGive
          //     ? partyAccount.recievedAmt
          //     : transaction.recievedAmt + amount

          ,
          payedAmt: transaction.isPayed || transaction.isGive
              ? partyAccount.payedAmt - transaction.givenAmt
              : partyAccount.payedAmt

          //  isPayed || isGive
          //     ? transaction.payedAmt + amount
          //     : transaction.payedAmt

          ,
          balanceAmt: transaction.isPayed || transaction.isGive
              ? partyAccount.balanceAmt + transaction.givenAmt
              : partyAccount.balanceAmt - transaction.givenAmt,

          transactionList: partyAccount.transactionList,
          // secondaryTransaction: secondaryList,
        ));
    await ContactsImplementation.instance.updateContactAmounts(
      ledgerId: ledgerId,
        balanceAmount: transaction.isPayed || transaction.isGive
            ? partyAccount.balanceAmt + transaction.givenAmt
            : partyAccount.balanceAmt - transaction.givenAmt,
        receivedAmount: transaction.isGet
            ? partyAccount.recievedAmt - transaction.givenAmt
            : partyAccount.recievedAmt,
        payedAmount: transaction.isPayed || transaction.isGive
            ? partyAccount.payedAmt - transaction.givenAmt
            : partyAccount.payedAmt,
        contactId: transaction.isAddBalance || transaction.isGive
            ? transaction.toContactId
            : transaction.fromContactId);

    await transactionBox.deleteAt(transactionIndex);
  }

  @override
  Future<void> editTransaction(
      {required String transactionRealId,
      required String toId,
      required double amount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
        required String ledgerId,
      File? billImage,
      String? transactionId,
      String? transactionDetails}) async {
    final listOfAllTransactions = transactionBox.values.toList();
    final transactionIndex = listOfAllTransactions
        .indexWhere((element) => element.id == transactionRealId);
    if (transactionIndex < 0) {
      return;
    }
    final transaction = listOfAllTransactions[transactionIndex];
    final partyAccountList = partyAccountsBox.values.toList();
    final partyIndex = partyAccountList.indexWhere(
        (element) => element.contactId == transaction.primaryAccountId&& element.ledgerId==ledgerId);
    final partyAccount = partyAccountList[partyIndex];

    await partyAccountsBox.putAt(
        partyIndex,
        PartyAccountsModel(
          ledgerId: partyAccount.ledgerId,
          contactId: partyAccount.contactId,
          recievedAmt: transaction.isGet
              ? (partyAccount.recievedAmt - transaction.givenAmt) + amount
              : partyAccount.recievedAmt,

          //  isAddBalance || isPayed || isGive
          //     ? partyAccount.recievedAmt
          //     : transaction.recievedAmt + amount

          payedAmt: transaction.isPayed || transaction.isGive
              ? (partyAccount.payedAmt - transaction.givenAmt) + amount
              : partyAccount.payedAmt,

          //  isPayed || isGive
          //     ? transaction.payedAmt + amount
          //     : transaction.payedAmt

          balanceAmt: transaction.isPayed || transaction.isGive
              ? (partyAccount.balanceAmt + transaction.givenAmt) - amount
              : (partyAccount.balanceAmt - transaction.givenAmt) + amount,

          transactionList: partyAccount.transactionList,
          // secondaryTransaction: secondaryList,
        ));
    await ContactsImplementation.instance.updateContactAmounts(
      ledgerId: ledgerId,
        balanceAmount: transaction.isPayed || transaction.isGive
            ? (partyAccount.balanceAmt + transaction.givenAmt) - amount
            : (partyAccount.balanceAmt - transaction.givenAmt) + amount,
        // transaction.isPayed||transaction.isGive?(transaction.balanceAmt+transaction.givenAmt)-
        // amount:
        // (transaction.balanceAmt-transaction.givenAmt)+amount
        receivedAmount: transaction.isGet
            ? (partyAccount.recievedAmt - transaction.givenAmt) + amount
            : partyAccount.recievedAmt,
        payedAmount: transaction.isPayed || transaction.isGive
            ? (partyAccount.payedAmt - transaction.givenAmt) + amount
            : partyAccount.payedAmt,
        contactId: transaction.isAddBalance || transaction.isGive
            ? transaction.toContactId
            : transaction.fromContactId);

    await transactionBox.putAt(
        transactionIndex,
        SecondaryTransactionsModel(
            isExpense: transaction.isExpense,
            billImage: await convertToUni8List(billImage),
            transactionDetails: transactionDetails,
            transactionId: transactionId,
            isSecondaryPay: transaction.isSecondaryPay,
            primaryAccountId: transaction.primaryAccountId,
            isGive: transaction.isGive,
            isGet: transaction.isGet,
            isAddBalance: transaction.isAddBalance,
            isSplit: transaction.isSplit,
            id: transaction.id,
            transactionType: transactionType,
            timeOfTrans: timeOfTrans,
            toContactId: toId,
            payedAmt: transaction.isPayed || transaction.isGive
                ? (transaction.payedAmt - transaction.givenAmt) + amount
                : transaction.payedAmt,
            balanceAmt: transaction.isPayed || transaction.isGive
                ? (transaction.balanceAmt + transaction.givenAmt) - amount
                : (transaction.balanceAmt - transaction.givenAmt) + amount,
            isPayed: transaction.isPayed,
            givenAmt: amount,
            fromContactId: transaction.fromContactId));
  }
}
