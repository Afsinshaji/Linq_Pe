import 'package:flutter_riverpod/flutter_riverpod.dart';

final totalBalanceAmountProvider = StateProvider(
  (ref) {
    return "0.0";
  },
);
addTotalBalanceAmount(String balance, WidgetRef ref) {
  ref.read(totalBalanceAmountProvider.notifier).state = balance;
}
final totalPayedAmountProvider = StateProvider(
  (ref) {
    return '0.0';
  },
);
addTotalPayedAmount(String balance, WidgetRef ref) {
  ref.read(totalPayedAmountProvider.notifier).state = balance;
}