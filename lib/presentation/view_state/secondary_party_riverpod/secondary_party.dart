import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';

// final secondaryPartyListProvider = StateProvider(
//   (ref) {
//     List<SecondaryTransactionsDTO> transactionList = [];

//     return transactionList;
//   },
// );
// addSecondaryPartyList(
//     List<SecondaryTransactionsDTO> transactionList, WidgetRef ref) {
//   ref.read(secondaryPartyListProvider.notifier).state = transactionList;
// }

// addSecondaryDTO(SecondaryTransactionsDTO secondaryDTO, WidgetRef ref) {
//   List<SecondaryTransactionsDTO> transactionList =
//       ref.watch(secondaryPartyListProvider);
//   transactionList.add(secondaryDTO);
//   log('why:${transactionList.length}');
  
//   ref.read(secondaryPartyListProvider.notifier).state = transactionList;
// }

final secondaryPartyBalanceAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addSecondaryBalanceAmount(double balance, WidgetRef ref) {
  ref.read(secondaryPartyBalanceAmountProvider.notifier).state = balance;
}

final secondaryPartyReceivedAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addSecondaryReceivedAmount(double received, WidgetRef ref) {
  ref.read(secondaryPartyReceivedAmountProvider.notifier).state = received;
}

final secondaryPartyPayedAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);
addSecondaryPayedAmount(double payed, WidgetRef ref) {
  ref.read(secondaryPartyPayedAmountProvider.notifier).state = payed;
}

addSecondaryPayment(double payed, WidgetRef ref) {
  double payedAmount = ref.watch(secondaryPartyPayedAmountProvider);
  double balanceAmount = ref.watch(secondaryPartyBalanceAmountProvider);
  if (payed < balanceAmount) {
    payedAmount = payedAmount + payed;
    balanceAmount = balanceAmount - payed;
    ref.read(secondaryPartyPayedAmountProvider.notifier).state = payedAmount;
    ref.read(secondaryPartyBalanceAmountProvider.notifier).state =
        balanceAmount;
  }
}
