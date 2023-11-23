import 'dart:io';

import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';

class SecondaryTransactionsDTO {
  final String toContactId;
  final double givenAmt;
  final bool isPayed;
  final double balanceAmt;
  final double payedAmt;
  final List<SecondaryTransactionsDTO>? secondaryTransaction;
  final String fromContactId;
  final DateTime timeOfTrans;
  final TransactionType transactionType;
  final File? billImage;
  final String? transactionDetails;

  final String? transactionId;
  SecondaryTransactionsDTO({
    this.transactionDetails,
    this.transactionId,
    required this.transactionType,
    required this.timeOfTrans,
    required this.toContactId,
    required this.payedAmt,
    required this.balanceAmt,
    required this.isPayed,
    required this.givenAmt,
    this.secondaryTransaction,
    required this.fromContactId,
    this.billImage,
  });
}

List<SecondaryTransactionsDTO> convertSecondaryTransactionsModeltoDTO(
    List<SecondaryTransactionsModel>? secondaryTransactions) {
  if (secondaryTransactions == null) {
    return [];
  }

  final List<SecondaryTransactionsDTO> secondaryList = [];
  for (var secondarytTransaction in secondaryTransactions) {
    secondaryList.add(SecondaryTransactionsDTO(
      transactionDetails: secondarytTransaction.transactionDetails,
      transactionType: secondarytTransaction.transactionType,
      timeOfTrans: secondarytTransaction.timeOfTrans,
      toContactId: secondarytTransaction.toContactId,
      payedAmt: secondarytTransaction.payedAmt,
      balanceAmt: secondarytTransaction.balanceAmt,
      isPayed: secondarytTransaction.isPayed,
      givenAmt: secondarytTransaction.givenAmt,
      fromContactId: secondarytTransaction.fromContactId,
      billImage: secondarytTransaction.billImage,
      secondaryTransaction: convertSecondaryTransactionsModeltoDTO(
          secondarytTransaction.secondaryTransaction),
      transactionId: secondarytTransaction.transactionId,
    ));
  }
  return secondaryList;
}
