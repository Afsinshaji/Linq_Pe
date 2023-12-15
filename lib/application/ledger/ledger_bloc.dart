import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/ledger/ledger.dart';
import 'package:linq_pe/infrastructure/ledger/ledger_implementation.dart';

part 'ledger_event.dart';
part 'ledger_state.dart';
part 'ledger_bloc.freezed.dart';

class LedgerBloc extends Bloc<LedgerEvent, LedgerState> {
  LedgerBloc() : super(const ledgerInitial()) {
    on<addLedgers>((event, emit) async {
      await LedgerImplementation.instance
          .addLedger(ledgerName: event.ledgerName);
      add(const LedgerEvent.getLedgers());
    });
    on<deleteLedgers>((event, emit) async {
      await LedgerImplementation.instance
          .deleteLedger(ledgerId: event.ledgerId);
      add(const LedgerEvent.getLedgers());
    });
    on<getLedgers>((event, emit) {
      final ledgerList = LedgerImplementation.instance.getLedgerList();
      emit(displayLedgers(ledgerList: convertLedgerModelToDTO(ledgerList)));
    });
  }
}
