import 'dart:io';

import 'package:linq_pe/domain/models/splitted/splitted_accounts.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';

abstract class SplittingRepository {
  Future<void> addSplittingTransaction(
      {required String splittedAccountId,
      required String primaryAccountId,
      required double amountSplitted,
      required TransactionType transactionType,
      required DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails, required String ledgerId});
  List<SplittedAccountsModel> getSplittedAccountList({  required String ledgerId}) ;
}
