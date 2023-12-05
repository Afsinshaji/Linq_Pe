import 'package:flutter_riverpod/flutter_riverpod.dart';

final primaryPartyBalanceAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addPrimaryBalanceAmount(double balance, WidgetRef ref) {
  ref.read(primaryPartyBalanceAmountProvider.notifier).state = balance;
}