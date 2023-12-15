import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/application/view_dto/rolling/rolling.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/infrastructure/rolling/rolling_infrastructure.dart';

part 'rolling_event.dart';
part 'rolling_state.dart';
part 'rolling_bloc.freezed.dart';

class RollingBloc extends Bloc<RollingEvent, RollingState> {
  RollingBloc() : super(const rollingInitial()) {
    on<addRollingTransactions>((event, emit) async {
      await RollingImplementation.instance.addRollingTransaction(
          rollingAccountId: event.rollingAccountId,
          splittingAccountId: event.splittingAccountId,
          splittingPrimaryAccountId: event.splittingPrimaryAccountId,
          amountRolled: event.amountRolled,
          transactionType: findTransactionType(event.transactionType),
          timeOfTrans: event.timeOfTrans,
          ledgerId: event.ledgerId);
      add(RollingEvent.gettingRollingAccountList(ledgerId: event.ledgerId));
    });
    on<gettingRollingAccountList>((event, emit) async {
      final rollingAccountsList = RollingImplementation.instance
          .getRollingAccountList(ledgerId: event.ledgerId);
      final rollingDTOList =
          await convertRollAccountModelToDTO(rollingAccountsList);

      emit(displayRollingAccounts(rollingAccountList: rollingDTOList));
    });
  }
}
