part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.addGetTransctions(
      {required String? transactionDetails,  required String ledgerId,
   
      required String fromContactId,
      required String toContactId,
      required double amount,
      required bool isPayed,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required File? billImage,
      required String? transactionId}) = addGetTransctions;
  const factory TransactionsEvent.addBalanceTransctions(
      {required String? transactionDetails,  required String ledgerId,
      required String fromContactId,
      required String toContactId,
      required double amount,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required File? billImage,
      required String? transactionId}) = addBalanceTransctions;
  const factory TransactionsEvent.getTransactionsList(
      {  required String ledgerId,required String contactId}) = getTransactionsList;
  const factory TransactionsEvent.addSecondaryPartyPayment({
    required bool isSplittedPrimaryTransaction,  required String ledgerId,
    required String transactionRealId,
    required String splittedTransactionId,
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
  const factory TransactionsEvent.splitAmounts({
    required String primaryContactId,  required String ledgerId,
    required String toContactId,
    required String transactionId,
    required double splitAmount,
    required TransactionTypes transactionType,
    required DateTime timeOfTrans,
    required File? billImage,
    required String? userTransactionId,
    required String? transactionDetails,
    required String id,
  }) = splitAmounts;

  const factory TransactionsEvent.addGiveTransactions(
      {required String fromContactId,  required String ledgerId,
      required String toContactId,
      required double amount,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required String? transactionDetails,
      required File? billImage,
      required String? transactionId}) = addGiveTransactions;

  const factory TransactionsEvent.splittingBalanceAmount(
      {required String primaryContactId,  required String ledgerId,
      required String toContactId,
      required double splitAmount,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
      required File? billImage,
      required String? userTransactionId,
      required String? transactionDetails}) = splittingBalanceAmount;
  const factory TransactionsEvent.editTransactions({  required String ledgerId,
    required String transactionRealId,
    required String toId,
    required double amount,
    required TransactionTypes transactionType,
    required DateTime timeOfTrans,
    required File? billImage,
    required String? transactionId,
    required String? transactionDetails,
    required String primaryContactId,
  }) = editTransactions;

  const factory TransactionsEvent.deleteTransactions({  required String ledgerId,
    required String transactionRealId,
    required String primaryContactId,
  }) = deleteTransactions;
  const factory TransactionsEvent.splittingPayment(
      {required String fromContactId,  required String ledgerId,
      required String toContactId,
      required double amount,
      required String primaryContactId,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
    required  String? transactionDetails,
    required  File? billImage,
   required   String? transactionId}) = splittingPayment;
}
