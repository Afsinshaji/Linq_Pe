part of 'split_amount_bloc.dart';

@freezed
class SplitAmountEvent with _$SplitAmountEvent {
  const factory SplitAmountEvent.addSplitAmountList({required List<NestedSecondaryTransactionsDTO> transactionList}) = addSplitAmountList;
}