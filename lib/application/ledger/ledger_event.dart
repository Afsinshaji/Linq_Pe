part of 'ledger_bloc.dart';

@freezed
class LedgerEvent with _$LedgerEvent {
  const factory LedgerEvent.addLedgers({required String ledgerName}) =
      addLedgers;
  const factory LedgerEvent.deleteLedgers({required String ledgerId}) =
      deleteLedgers;
  const factory LedgerEvent.getLedgers() = getLedgers;

  const factory LedgerEvent.ledgerRollingRepayments({
    required String rollPayToLedgerId,
    required String rollPayFromLedgerId,
    required double amountPaying,
    required TransactionTypes transactionType,
    required DateTime timeOfTrans,
    required File? billImage,
    required String? userTransactionId,
    required String? transactionDetails,
  }) = ledgerRollingRepayments;

  const factory LedgerEvent.addLedgerRollingTransactions({
    required String rolledToLedgerId,
    required String rolledFromLedgerId,
    required double amountRolled,
    required TransactionTypes transactionType,
    required DateTime timeOfTrans,
  required  File? billImage,
  required  String? userTransactionId,
 required   String? transactionDetails,
  }) = addLedgerRollingTransactions;
  
}
