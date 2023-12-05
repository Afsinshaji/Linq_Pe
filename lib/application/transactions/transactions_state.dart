part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState.transactionInitial() = transactionInitial;
  const factory TransactionsState.displayTransactions({required PartyAccountDTO? partyAccount,required List<NestedSecondaryTransactionsDTO>transactionList}) = displayTransactions;
}
