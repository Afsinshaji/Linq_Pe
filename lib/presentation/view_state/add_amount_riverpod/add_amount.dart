import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';

enum ExpenseType{pay,roll,empty}
final expenseTypeProvider=StateProvider(
  (ref) {
    return ExpenseType.pay;
  },
);
addExpenseType(ExpenseType expenseType, WidgetRef ref) {
    ref.read(expenseTypeProvider.notifier).state = expenseType;
}

final dateProvider = StateProvider(
  (ref) {
    return DateTime.now();
  },
);
addTime(DateTime time, WidgetRef ref) {
  ref.read(dateProvider.notifier).state = time;
}

final imageProvider = StateProvider(
  (ref) {
    return File('');
  },
);

addImage(File image, WidgetRef ref) {
  ref.read(imageProvider.notifier).state = image;
}

final fromContactIdProvider = StateProvider(
  (ref) {
    return '';
  },
);

addfromContactId(String id, WidgetRef ref) {

  ref.read(fromContactIdProvider.notifier).state = id;
}

final toContactIdProvider = StateProvider(
  (ref) {
    return '';
  },
);

addToContactId(String id, WidgetRef ref) {
  ref.read(toContactIdProvider.notifier).state = id;
}

final splittedAccountBalanceProvider = StateProvider(
  (ref) {
    return ref.read(fromContactIdProvider);
  },
);

addsplitttedAccountBalance(String id, WidgetRef ref) {
  ref.read(splittedAccountBalanceProvider.notifier).state = id;
}


final transactionTypeProvider = StateProvider(
  (ref) {
    return TransactionTypes.cash;
  },
);

addTransactionType(TransactionTypes type, WidgetRef ref) {
  ref.read(transactionTypeProvider.notifier).state = type;
}

final transactionDetailsProvider = StateProvider(
  (ref) {
    return '';
  },
);

addTransactionDetails(String transactionDetails, WidgetRef ref) {
  ref.read(transactionDetailsProvider.notifier).state = transactionDetails;
}

final amountProvider = StateProvider(
  (ref) {
    return -1.0;
  },
);

addAmount(double amount, WidgetRef ref) {
  ref.read(amountProvider.notifier).state = amount;
}

final transactionIdProvider = StateProvider(
  (ref) {
    return '';
  },
);

addTransactionId(String id, WidgetRef ref) {
  ref.read(transactionIdProvider.notifier).state = id;
}

initialize(WidgetRef ref) {
  addTime(DateTime.now(), ref);
  addImage(File(''), ref);

  addToContactId('', ref);
  addTransactionType(TransactionTypes.cash, ref);
  addTransactionDetails('', ref);
  addAmount(-1.0, ref);
  addTransactionId('', ref);
}

final secondaryContactIdProvider = StateProvider(
  (ref) {
    return '';
  },
);

addsecondaryContactId(String id, WidgetRef ref) {
  ref.read(secondaryContactIdProvider.notifier).state = id;
}


final repaySplittedContactIdProvider = StateProvider(
  (ref) {
    return '';
  },
);

addRepaySplittedContactId(String id, WidgetRef ref) {
  ref.read(repaySplittedContactIdProvider.notifier).state = id;
}

final repayPrimaryContactIdProvider = StateProvider(
  (ref) {
    return '';
  },
);

addRepayPrimaryContactId(String id, WidgetRef ref) {
  ref.read(repayPrimaryContactIdProvider.notifier).state = id;
}
final repayTotalAmountProvider = StateProvider(
  (ref) {
    return 0.0;
  },
);

addrepayTotalAmount(double amount, WidgetRef ref) {
  ref.read(repayTotalAmountProvider.notifier).state = amount;
}