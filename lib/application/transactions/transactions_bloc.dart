import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/transaction/party_account_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
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
        ledgerId: event.ledgerId,
        isExpenseAccount: false,
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

      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,
          contactId: event.fromContactId));
    });
    on<addBalanceTransctions>((event, emit) async {
      await TransactionsImplementation.instance.addBalanceTransction(
         ledgerId: event.ledgerId,
        transactionDetails: event.transactionDetails,
        fromContactId: event.fromContactId,
        toContactId: event.toContactId,
        amount: event.amount,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
        transactionId: event.transactionId,
      );
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,contactId: event.toContactId));
    });

    on<addGiveTransactions>((event, emit) async {
      await TransactionsImplementation.instance.addGiveTransaction(
         ledgerId: event.ledgerId,
        transactionDetails: event.transactionDetails,
        fromContactId: event.fromContactId,
        toContactId: event.toContactId,
        amount: event.amount,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
        transactionId: event.transactionId,
      );
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,contactId: event.toContactId));
    });

    on<getTransactionsList>((event, emit) async {
      final transactionModel =
          TransactionsImplementation.instance.getAccountDetails(
        contactId: event.contactId,
         ledgerId: event.ledgerId,
      );
      // log('Hiii${transactionModel!.transactionList!.length}');

      if (transactionModel != null) {
        final transactionDTO = convertPartyAccountModeltoDTO(transactionModel);
        emit(displayTransactions(
            partyAccount: transactionDTO,
            transactionList:
                await convertTransactionidListToSeconadryTransactionDTOList(
                    transactionModel.transactionList)));
      } else {
        emit(
            const displayTransactions(partyAccount: null, transactionList: []));
      }
    });

    on<addSecondaryPartyPayment>((event, emit) async {
      await TransactionsImplementation.instance.secondaryPartyPayment(
         ledgerId: event.ledgerId,
        isSplittedPrimaryTransaction: event.isSplittedPrimaryTransaction,
        splittedTransactionId: event.splittedTransactionId,
        transactionRealId: event.transactionRealId,
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
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,
          contactId: event.primaryContactId));
    });

    on<splitAmounts>((event, emit) async {
      await TransactionsImplementation.instance.splitAmount(
         ledgerId: event.ledgerId,
        id: event.id,
        transactionDetails: event.transactionDetails,
        splitAmount: event.splitAmount,
        toContactId: event.toContactId,
        userTransactionId: event.userTransactionId,
        primaryContactId: event.primaryContactId,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
        transactionId: event.transactionId,
      );
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,
          contactId: event.primaryContactId));
    });
    on<splittingBalanceAmount>((event, emit) async {
      await TransactionsImplementation.instance.splitBalanceAmount(
         ledgerId: event.ledgerId,
        transactionDetails: event.transactionDetails,
        splitAmount: event.splitAmount,
        toContactId: event.toContactId,
        userTransactionId: event.userTransactionId,
        primaryContactId: event.primaryContactId,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
      );
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,
          contactId: event.primaryContactId));
    });

    on<editTransactions>((event, emit) async {
      await TransactionsImplementation.instance.editTransaction(
         ledgerId: event.ledgerId,
        transactionDetails: event.transactionDetails,
        amount: event.amount,
        toId: event.toId,
        transactionRealId: event.transactionRealId,
        transactionId: event.transactionId,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
        billImage: event.billImage,
      );
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,
          contactId: event.primaryContactId));
    });

    on<deleteTransactions>((event, emit) async {
      await TransactionsImplementation.instance.deleteTransaction( ledgerId: event.ledgerId,
        transactionRealId: event.transactionRealId,
      );
      add(TransactionsEvent.getTransactionsList( ledgerId: event.ledgerId,
          contactId: event.primaryContactId));
    });
    on<splittingPayment>((event, emit) async {
      await TransactionsImplementation.instance.splittedPayment(
         ledgerId: event.ledgerId,
        fromContactId: event.fromContactId,
        toContactId: event.toContactId,
        amount: event.amount,
        primaryContactId: event.primaryContactId,
        transactionType: findTransactionType(event.transactionType),
        timeOfTrans: event.timeOfTrans,
      );
      add(TransactionsEvent.getTransactionsList(
         ledgerId: event.ledgerId,
          contactId: event.primaryContactId));
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
