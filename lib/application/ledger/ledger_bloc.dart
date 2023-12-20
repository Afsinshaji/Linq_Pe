import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/application/view_dto/ledger/ledger.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
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
    on<getLedgers>((event, emit) async {
      final ledgerList = LedgerImplementation.instance.getLedgerList();
      emit(displayLedgers(
          ledgerList: await convertLedgerModelToDTO(ledgerList)));
    });
    on<addLedgerRollingTransactions>((event, emit) async {
      await LedgerImplementation.instance.addLedgerRollingTransaction(
          rolledToLedgerId: event.rolledToLedgerId,
          rolledFromLedgerId: event.rolledFromLedgerId,
          amountRolled: event.amountRolled,
          transactionType: findTransactionType(event.transactionType),
          billImage: event.billImage,
          transactionDetails: event.transactionDetails,
          userTransactionId: event.userTransactionId,
          timeOfTrans: event.timeOfTrans);
      add(const LedgerEvent.getLedgers());
    });
    on<ledgerRollingRepayments>((event, emit) async {
      await LedgerImplementation.instance.ledgerRollingRepayment(
          rollPayFromLedgerId: event.rollPayFromLedgerId,
          rollPayToLedgerId: event.rollPayToLedgerId,
          amountPaying: event.amountPaying,
          transactionType: findTransactionType(event.transactionType),
          billImage: event.billImage,
          transactionDetails: event.transactionDetails,
          userTransactionId: event.userTransactionId,
          timeOfTrans: event.timeOfTrans);
      add(const LedgerEvent.getLedgers());
    });
  }
}
