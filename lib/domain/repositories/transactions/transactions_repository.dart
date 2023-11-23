import 'dart:io';

import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transactions.dart';

abstract class TransactionsRepository {
  Future<void> addGetTransction({
    required String fromContactId,
    required String toContactId,
    required double amount,
    required bool isPayed,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? transactionId,
    String? transactionDetails,
  });
  Future<void> addGiveTransction({
    required String fromContactId,
    required String toContactId,
    required double amount,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? transactionId,
    String? transactionDetails,
  });
  TransactionsModel? getTransactions({required String contactId});
  Future<void> secondaryPartyPayment({
    required String primaryContactId,
    required String secondaryContactId,
    required String payedToId,
    required double amountPayed,
    required TransactionType transactionType,
    required DateTime timeOfTrans,
    File? billImage,
    String? transactionId,
    String? transactionDetails,
  });
}
