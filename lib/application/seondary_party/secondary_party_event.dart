part of 'secondary_party_bloc.dart';

@freezed
class SecondaryPartyEvent with _$SecondaryPartyEvent {
  const factory SecondaryPartyEvent.addSecondaryPartyList({required List<NestedSecondaryTransactionsDTO> transactionList}) = addSecondaryPartyList;
}