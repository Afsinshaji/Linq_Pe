import 'dart:io';

import 'package:linq_pe/domain/models/rolling/rolling.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';

abstract class RollingRepository {
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
      required String ledgerId});
  List<RollingAccountsModel> getRollingAccountList({required String ledgerId});
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
      required String ledgerId});
}
