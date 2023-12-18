part of 'rolling_bloc.dart';

@freezed
class RollingEvent with _$RollingEvent {
  const factory RollingEvent.addRollingTransactions(
      {required String rollingAccountId,
      required String splittingAccountId,
      required String splittingPrimaryAccountId,
      required double amountRolled,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required File? billImage,
      required String? userTransactionId,
      required String? transactionDetails,
      required String ledgerId}) = addRollingTransactions;
  const factory RollingEvent.gettingRollingAccountList(
      {required String ledgerId}) = gettingRollingAccountList;
  const factory RollingEvent.rollingRepayments(
      {required String rollingAccountId,
      required String splittingAccountId,
      required String splittingPrimaryAccountId,
      required double amountRepaying,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
     required File? billImage,
     required String? userTransactionId,
     required String? transactionDetails,
      required String ledgerId}) = rollingRepayments;
}
