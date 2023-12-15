part of 'ledger_bloc.dart';

@freezed
class LedgerEvent with _$LedgerEvent {
  const factory LedgerEvent. addLedgers({required String ledgerName}) = addLedgers;
  const factory LedgerEvent. deleteLedgers({required String ledgerId}) = deleteLedgers;
  const factory LedgerEvent.getLedgers() = getLedgers;

}