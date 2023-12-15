import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/infrastructure/splitting/splitting_implementation.dart';

part 'splitted_event.dart';
part 'splitted_state.dart';
part 'splitted_bloc.freezed.dart';

class SplittedBloc extends Bloc<SplittedEvent, SplittedState> {
  SplittedBloc() : super(const splittedInitial()) {
    on<addSplittedAccount>((event, emit) async {
      await SplittingImplementation.instance.addSplittingTransaction(
         ledgerId: event.ledgerId,
          billImage: event.billImage,
          transactionDetails: event.transactionDetails,
          userTransactionId: event.userTransactionId,
          splittedAccountId: event.splittedAccountId,
          primaryAccountId: event.primaryAccountId,
          amountSplitted: event.amountSplitted,
          transactionType: findTransactionType(event.transactionType),
          timeOfTrans: event.timeOfTrans);

      add( SplittedEvent.getSplittedList( ledgerId: event.ledgerId));
    });
    on<getSplittedList>((event, emit) async {
      final splittedAccountList =
          SplittingImplementation.instance.getSplittedAccountList( ledgerId: event.ledgerId);

      emit(displaySplittedAccounts(
          splittedAccountList:
              await convertSplittedAccountsModelToDTO(splittedAccountList)));
    });
  }
}
