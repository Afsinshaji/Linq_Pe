import 'package:flutter_riverpod/flutter_riverpod.dart';



final tabValueProvider = StateProvider(
  (ref) {
    return 0;
  },
);
addTabValue(int tab, WidgetRef ref) {
  ref.read(tabValueProvider.notifier).state = tab;
}
final pageValueProvider = StateProvider(
  (ref) {
    return 0;
  },
);
addpageValue(int page, WidgetRef ref) {
  ref.read(pageValueProvider.notifier).state = page;
}


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

final rolledOutBalanceAmountProvider = StateProvider(
  (ref) {
    return '0.0';
  },
);
addrolledOutBalanceAmount(String balance, WidgetRef ref) {
  ref.read(rolledOutBalanceAmountProvider.notifier).state = balance;
}

