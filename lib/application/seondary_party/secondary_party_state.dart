part of 'secondary_party_bloc.dart';

@freezed
class SecondaryPartyState with _$SecondaryPartyState {
  const factory SecondaryPartyState.secondaryPartyInitial() =
      secondaryPartyInitial;
  const factory SecondaryPartyState.displaySecondaryPartyList({required List<NestedSecondaryTransactionsDTO> transactionList}) =
      displaySecondaryPartyList;
}
