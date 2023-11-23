import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/transaction/transaction_dto.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc() : super(const transactionInitial()) {
    on<addGetTransctions>((event, emit) async {
      await TransactionsImplementation.instance.addGetTransction(
        transactionDetails: event.transactionDetails,
        fromContactId: event.fromContactId,
        toContactId: event.toContactId,
        amount: event.amount,
        isPayed: event.isPayed,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
        transactionId: event.transactionId,
      );
   
      add(TransactionsEvent.getTransactionsList(
          contactId: event.fromContactId));
    });
    on<addGiveTransctions>((event, emit) async {
      await TransactionsImplementation.instance.addGiveTransction(
        transactionDetails: event.transactionDetails,
        fromContactId: event.fromContactId,
        toContactId: event.toContactId,
        amount: event.amount,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
        transactionId: event.transactionId,
      );
      add(TransactionsEvent.getTransactionsList(contactId: event.toContactId));
    });
    on<getTransactionsList>((event, emit) {
      final transactionModel =
          TransactionsImplementation.instance.getTransactions(
        contactId: event.contactId,
      );
      if (transactionModel != null) {
        final transactionDTO = convertTransactionModeltoDTO(transactionModel);
        emit(displayTransactions(transaction: transactionDTO));
      } else {
        emit(const displayTransactions(transaction: null));
      }
    });

    on<addSecondaryPartyPayment>((event, emit) async {
      await TransactionsImplementation.instance.secondaryPartyPayment(
        transactionDetails: event.transactionDetails,
        amountPayed: event.amountPayed,
        payedToId: event.payedToId,
        primaryContactId: event.primaryContactId,
        secondaryContactId: event.secondaryContactId,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
        transactionId: event.transactionId,
      );
      // add(TransactionsEvent.getTransactionsList(
      // contactId: event.primaryContactId));
    });
  }
}

TransactionType findTransactionType(TransactionTypes type) {
  if (type == TransactionTypes.cash) {
    return TransactionType.cash;
  } else if (type == TransactionTypes.bank) {
    return TransactionType.bank;
  } else {
    return TransactionType.wallet;
  }
}
