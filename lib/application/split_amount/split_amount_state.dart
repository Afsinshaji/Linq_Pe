part of 'split_amount_bloc.dart';

@freezed
class SplitAmountState with _$SplitAmountState {
  const factory SplitAmountState.splitamountInitial() = splitamountInitial;
   const factory SplitAmountState.displaySplitAmountList({required List<NestedSecondaryTransactionsDTO> transactionList}) =
      displaySplitAmountList;
}
