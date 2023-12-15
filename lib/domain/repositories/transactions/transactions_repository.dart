import 'dart:io';

import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/party_account_model.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

abstract class TransactionsRepository {
  Future<void> addGetTransction({
      required String ledgerId,
    required String fromContactId,
    required bool isExpenseAccount,
    required String toContactId,
    required double amount,
    required bool isPayed,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? transactionId,
    String? transactionDetails,
  });
  Future<void> splittedPayment(
      {required String fromContactId,
    
      required String toContactId,
      required double amount,
      required String primaryContactId,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      String? transactionDetails,
      File? billImage,
      String? transactionId, required String ledgerId});
  Future<void> addBalanceTransction({
      required String ledgerId,
    required String fromContactId,
    required String toContactId,
    required double amount,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? transactionId,
    String? transactionDetails,
  });
  Future<void> addGiveTransaction(
      {required String fromContactId,
        required String ledgerId,
      required String toContactId,
      required double amount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      String? transactionDetails,
      File? billImage,
      String? transactionId});
  PartyAccountsModel? getAccountDetails({required String contactId,  required String ledgerId,});
  List<SecondaryTransactionsModel> getTransactionsList(
      {required List<TransactionModel> transactionIdList});

  Future<void> secondaryPartyPayment(
      {required bool isSplittedPrimaryTransaction,
        required String ledgerId,
      required String transactionRealId,
      required String splittedTransactionId,
      required String primaryContactId,
      required String secondaryContactId,
      required String payedToId,
      required double amountPayed,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? transactionId,
      String? transactionDetails});
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
      String? transactionDetails});
  Future<void> splitBalanceAmount(
      {required String primaryContactId,
        required String ledgerId,
      required String toContactId,
      required double splitAmount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails});
  Future<void> editTransaction(
      {required String transactionRealId,  required String ledgerId,
      required String toId,
      required double amount,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? transactionId,
      String? transactionDetails});
  Future<void> deleteTransaction({
    required String transactionRealId,
      required String ledgerId,
  });
}
