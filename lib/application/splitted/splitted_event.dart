part of 'splitted_bloc.dart';

@freezed
class SplittedEvent with _$SplittedEvent {
  const factory SplittedEvent.addSplittedTransactions(   {required String splittedAccountId,
    required String ledgerId,
      required String primaryAccountId,
      required double amountSplitted,
      required TransactionTypes transactionType,
      required DateTime timeOfTrans,
    required  File? billImage,
    required  String? userTransactionId,
   required   String? transactionDetails}) =
    addSplittedAccount;

  const factory SplittedEvent.getSplittedList({required String ledgerId}) = getSplittedList;
}
