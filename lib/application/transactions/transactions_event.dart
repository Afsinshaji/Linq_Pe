part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.addGetTransctions(
      {required String? transactionDetails,
      required String fromContactId,
      required String toContactId,
      required double amount,
      required bool isPayed,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required File? billImage,
      required String? transactionId}) = addGetTransctions;
  const factory TransactionsEvent.addGiveTransctions(
      {required String? transactionDetails,
      required String fromContactId,
      required String toContactId,
      required double amount,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required File? billImage,
      required String? transactionId}) = addGiveTransctions;
  const factory TransactionsEvent.getTransactionsList(
      {required String contactId}) = getTransactionsList;
  const factory TransactionsEvent.addSecondaryPartyPayment({
    required String primaryContactId,
    required String secondaryContactId,
    required String payedToId,
    required double amountPayed,
    required TransactionTypes transactionType,
    required DateTime timeOfTrans,
    required File? billImage,
    required String? transactionId,
    required String? transactionDetails,
  }) = addSecondaryPartyPayment;
}
