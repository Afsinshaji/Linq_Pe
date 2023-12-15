import 'package:flutter_riverpod/flutter_riverpod.dart';

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