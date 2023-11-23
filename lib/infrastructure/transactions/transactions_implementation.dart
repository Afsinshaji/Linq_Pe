import 'dart:developer';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transactions.dart';
import 'package:linq_pe/domain/repositories/transactions/transactions_repository.dart';

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
  late Box<TransactionsModel> transactionBox;
  openTransactionBox() async {
    transactionBox = await Hive.openBox("transactionBox");
  }

  @override
  Future<void> addGetTransction(
      {required String fromContactId,
      required String toContactId,
      required double amount,
      required bool isPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    final transactedAccountsList = transactionBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == fromContactId);
    if (transactedAccountIndex < 0) {
      createNewTransaction(
        isGiving: false,
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
      updateExistingTransaction(
          isGiving: false,
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
      required bool isGiving,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) {
    transactionBox.add(TransactionsModel(
        contactId: fromContactId,
        recievedAmt: isGiving ? 0 : amount,
        payedAmt: isPayed ? amount : 0,
        balanceAmt: amount,
        secondaryTransaction: [
          SecondaryTransactionsModel(
              transactionType: transactionType,
              billImage: billImage,
              transactionId: transactionId,
              timeOfTrans: timeOfTrans,
              toContactId: toContactId,
              payedAmt: isPayed ? amount : 0,
              balanceAmt: isPayed ? 0 : amount,
              isPayed: isPayed,
              givenAmt: amount,
              fromContactId: fromContactId,
              transactionDetails: transactionDetails)
        ]));
  }

  updateExistingTransaction(
      {required String fromContactId,
      required String toContactId,
      String? transactionDetails,
      required double amount,
      required bool isPayed,
      required List<TransactionsModel> transactedAccountsList,
      required int transactedAccountIndex,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      required bool isGiving,
      File? billImage,
      String? transactionId}) {
    final transaction = transactedAccountsList[transactedAccountIndex];
    List<SecondaryTransactionsModel> secondaryList = [];
    final transactionModel = SecondaryTransactionsModel(
        transactionDetails: transactionDetails,
        transactionType: transactionType,
        billImage: billImage,
        transactionId: transactionId,
        timeOfTrans: timeOfTrans,
        toContactId: toContactId,
        payedAmt: 0,
        balanceAmt: amount,
        isPayed: isPayed,
        givenAmt: amount,
        fromContactId: fromContactId);

    if (transaction.secondaryTransaction != null &&
        transaction.secondaryTransaction!.isNotEmpty) {
      secondaryList = transaction.secondaryTransaction!;
      log('kiki');
      if (!isPayed) {
        final lastIndex = secondaryList
            .lastIndexWhere((element) => element.toContactId == toContactId);
        if (lastIndex < 0) {
          secondaryList.add(transactionModel);
        } else {
          final secondayTrans = secondaryList[lastIndex];

          secondaryList.add(SecondaryTransactionsModel(
              transactionDetails: transactionDetails,
              transactionType: transactionType,
              billImage: billImage,
              transactionId: transactionId,
              timeOfTrans: timeOfTrans,
              toContactId: toContactId,
              payedAmt: secondayTrans.payedAmt,
              balanceAmt: secondayTrans.balanceAmt + amount,
              isPayed: isPayed,
              givenAmt: amount,
              fromContactId: fromContactId));
        }
      } else {
        secondaryList.add(transactionModel);
      }
    } else {
      secondaryList.add(transactionModel);
    }

    log('Giving:${transaction.recievedAmt}');
    transactionBox.putAt(
        transactedAccountIndex,
        TransactionsModel(
          contactId: transaction.contactId,
          recievedAmt: isGiving || isPayed
              ? transaction.recievedAmt
              : transaction.recievedAmt + amount,
          payedAmt:
              isPayed ? transaction.payedAmt + amount : transaction.payedAmt,
          balanceAmt: isPayed
              ? transaction.balanceAmt - amount
              : transaction.balanceAmt + amount,
          secondaryTransaction: secondaryList,
        ));
  }

  @override
  Future<void> addGiveTransction(
      {required String fromContactId,
      required String toContactId,
      required double amount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      String? transactionDetails,
      File? billImage,
      String? transactionId}) async {
    final transactedAccountsList = transactionBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == toContactId);
    if (transactedAccountIndex < 0) {
      createNewTransaction(
        transactionDetails: transactionDetails,
        isGiving: true,
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
      updateExistingTransaction(
          transactionDetails: transactionDetails,
          isGiving: true,
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
  TransactionsModel? getTransactions({required String contactId}) {
    final transactedAccountsList = transactionBox.values.toList();
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == contactId);
    if (transactedAccountIndex < 0) {
      return null;
    } else {
      return transactedAccountsList[transactedAccountIndex];
    }
  }

  @override
  Future<void> secondaryPartyPayment(
      {required String primaryContactId,
      required String secondaryContactId,
      required String payedToId,
      required double amountPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? transactionId,
      String? transactionDetails}) async {
   // Step 1: Retrieve Transacted Accounts     
    final transactedAccountsList = transactionBox.values.toList();
    // Step 2: Find Primary Transaction
    final transactedAccountIndex = transactedAccountsList
        .indexWhere((element) => element.contactId == primaryContactId);
    if (transactedAccountIndex < 0) {
      // If primary transaction not found, return
      return;
    } else {
      // Step 3: Check Secondary Transactions in Primary Transaction
      final primaryTransaction = transactedAccountsList[transactedAccountIndex];
      if (primaryTransaction.secondaryTransaction == null ||
          primaryTransaction.secondaryTransaction!.isEmpty) {
            // If no secondary transactions, return
        return;
      } else {
        // Step 4: Find Secondary Transaction for the Primary Contact
        final listOfSecondaryTransactions =
            primaryTransaction.secondaryTransaction!;

        final secondaryTransactionList = listOfSecondaryTransactions
            .where((element) => element.toContactId == secondaryContactId)
            .toList();
        if (secondaryTransactionList.isEmpty) {
          // If no secondary transaction for the specified Primary contact, return
          return;
        } else {
          // Step 5: Update Secondary Transaction Information
          SecondaryTransactionsModel lastSecondaryTransaction =
              secondaryTransactionList[secondaryTransactionList.length - 1];
          final balanceAmt = lastSecondaryTransaction.balanceAmt;
          final payedAmt = lastSecondaryTransaction.payedAmt;
           // Updated last secondary transaction information
          final reNewedlastSecondaryTransaction = SecondaryTransactionsModel(
              billImage: lastSecondaryTransaction.billImage,
              secondaryTransaction:
                  lastSecondaryTransaction.secondaryTransaction,
              transactionDetails: lastSecondaryTransaction.transactionDetails,
              transactionId: lastSecondaryTransaction.transactionId,
              transactionType: lastSecondaryTransaction.transactionType,
              timeOfTrans: lastSecondaryTransaction.timeOfTrans,
              toContactId: lastSecondaryTransaction.toContactId,
              payedAmt: payedAmt + amountPayed,
              balanceAmt: balanceAmt - amountPayed,
              isPayed: lastSecondaryTransaction.isPayed,
              givenAmt: lastSecondaryTransaction.givenAmt,
              fromContactId: lastSecondaryTransaction.fromContactId);
          final lastIndex = listOfSecondaryTransactions
              .lastIndexWhere((element) => element == lastSecondaryTransaction);

          listOfSecondaryTransactions[lastIndex] =
              reNewedlastSecondaryTransaction;
// Create a new secondary transaction payment
          final secondaryPayment = SecondaryTransactionsModel(
              billImage: billImage,
              transactionDetails: transactionDetails,
              transactionId: transactionId,
              secondaryTransaction: null,
              transactionType: transactionType,
              timeOfTrans: timeOfTrans,
              toContactId: payedToId,
              payedAmt: payedAmt + amountPayed,
              balanceAmt: balanceAmt - amountPayed,
              isPayed: true,
              givenAmt: amountPayed,
              fromContactId: secondaryContactId);
// Add the new secondary transaction payment to every secondary transaction in the list
          for (var i = 0; i < listOfSecondaryTransactions.length; i++) {
            if (listOfSecondaryTransactions[i].toContactId ==
                secondaryContactId) {
              List<SecondaryTransactionsModel> listOfModel = [];
              if (listOfSecondaryTransactions[i].secondaryTransaction != null) {
                listOfModel =
                    listOfSecondaryTransactions[i].secondaryTransaction!;
              }
              listOfModel.add(secondaryPayment);

              final element = SecondaryTransactionsModel(
                  transactionType:
                      listOfSecondaryTransactions[i].transactionType,
                  timeOfTrans: listOfSecondaryTransactions[i].timeOfTrans,
                  toContactId: listOfSecondaryTransactions[i].toContactId,
                  payedAmt: listOfSecondaryTransactions[i].payedAmt,
                  balanceAmt: listOfSecondaryTransactions[i].balanceAmt,
                  isPayed: listOfSecondaryTransactions[i].isPayed,
                  givenAmt: listOfSecondaryTransactions[i].givenAmt,
                  fromContactId: listOfSecondaryTransactions[i].fromContactId,
                  billImage: listOfSecondaryTransactions[i].billImage,
                  transactionDetails:
                      listOfSecondaryTransactions[i].transactionDetails,
                  transactionId: listOfSecondaryTransactions[i].transactionId,
                  secondaryTransaction: listOfModel);

              listOfSecondaryTransactions[i] = element;
            }
          }
// Step 6: Update Primary Transaction
          final renewedPrimaryTransaction = TransactionsModel(
            contactId: primaryTransaction.contactId,
            recievedAmt: primaryTransaction.recievedAmt,
            payedAmt: primaryTransaction.payedAmt + amountPayed,
            balanceAmt: primaryTransaction.balanceAmt - amountPayed,
            secondaryTransaction: listOfSecondaryTransactions,
          );
// Update the primary transaction in the data store
          transactionBox.putAt(
              transactedAccountIndex, renewedPrimaryTransaction);
        }
      }
    }
  }
}
