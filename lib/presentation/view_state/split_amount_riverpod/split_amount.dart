import 'package:flutter_riverpod/flutter_riverpod.dart';

final splitBalanceAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addSplitBalanceAmount(double balance, WidgetRef ref) {
  ref.read(splitBalanceAmountProvider.notifier).state = balance;
}