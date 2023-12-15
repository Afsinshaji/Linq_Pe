part of 'ledger_bloc.dart';

@freezed
class LedgerState with _$LedgerState {
  const factory LedgerState.ledgerInitial() = ledgerInitial;
  const factory LedgerState.displayLedgers(
      {required List<LedgerDTO> ledgerList}) =
       displayLedgers;
}
