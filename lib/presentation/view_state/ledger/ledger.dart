import 'package:flutter_riverpod/flutter_riverpod.dart';



enum RollType{roll,repayment,empty}
final rollTypeProvider=StateProvider(
  (ref) {
    return RollType.roll;
  },
);
addRollType(RollType expenseType, WidgetRef ref) {
    ref.read(rollTypeProvider.notifier).state = expenseType;
}

final currentLedgerIdProvider = StateProvider(
  (ref) {
    return '';
  },
);
addCurrentLedger(String id, WidgetRef ref) {

  ref.read(currentLedgerIdProvider.notifier).state = id;
}
final ledgerNameTexfieldHeightProvider=StateProvider(
  (ref) {
    return 0.0;
  },
);
addledgerNameTexfieldHeight(double height,WidgetRef ref){
  ref.read(ledgerNameTexfieldHeightProvider.notifier).state = height;
}


final fromLedgerBalanceProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addfromLedgerBalance(double balance, WidgetRef ref) {

  ref.read(fromLedgerBalanceProvider.notifier).state = balance;
}

final toLedgerRepayAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addtoLedgerRepayAmount(double balance, WidgetRef ref) {

  ref.read(toLedgerRepayAmountProvider.notifier).state = balance;
}

final showLedgerIdProvider = StateProvider(
  (ref) {
    return '';
  },
);
addshowLedger(String id, WidgetRef ref) {

  ref.read(showLedgerIdProvider.notifier).state = id;
}