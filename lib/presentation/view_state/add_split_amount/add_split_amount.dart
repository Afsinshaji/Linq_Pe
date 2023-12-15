import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/view_party_riverpod.dart/view_party.dart';

splitInitialize(final WidgetRef ref) {
  splitAmountProviders.clear();
  splitIdProvider.clear();
  makeProvider(1);
  addTime(DateTime.now(), ref);
  addImage(File(''), ref);

  addToContactId('', ref);
  addTransactionType(TransactionTypes.cash, ref);
  addTransactionDetails('', ref);
  addAmount(-1.0, ref);
  addTransactionId('', ref);
  addfromContactId('', ref);
  addPrimaryBalanceAmount(0.0, ref);
}

final splitFieldNumberProvider = StateProvider(
  (ref) {
    return 1;
  },
);
addSplitFieldNum(WidgetRef ref) {
  makeProvider(ref.watch(splitFieldNumberProvider) + 1);
  ref.read(splitFieldNumberProvider.notifier).state =
      ref.watch(splitFieldNumberProvider) + 1;
}

final splitAmountProviders = <int, StateProvider<double>>{};
final splitIdProvider = <int, StateProvider<String>>{};

makeProvider(int index) {
  // Check if a provider for the given index already exists
  if (splitAmountProviders.containsKey(index) &&
      splitIdProvider.containsKey(index)) {
    return;
  }
  log('Create');
  // Create a new provider for the index if it doesn't exist
  final amountprovider = StateProvider<double>((ref) {
    return 0.0; // Initial value, you can change it as needed
  });
  final idprovider = StateProvider<String>((ref) {
    return ''; // Initial value, you can change it as needed
  });

  // Save the provider in the map
  splitAmountProviders[index] = amountprovider;
  splitIdProvider[index] = idprovider;
}

addIdProviderValue(int providerNum, WidgetRef ref, String contactId) {
  if (splitIdProvider.containsKey(providerNum)) {
    ref.read(splitIdProvider[providerNum]!.notifier).state = contactId;
  }
}

addAmountProviderValue(int providerNum, WidgetRef ref, double amount) {
  if (splitAmountProviders.containsKey(providerNum)) {
    ref.read(splitAmountProviders[providerNum]!.notifier).state = amount;
  }
}
