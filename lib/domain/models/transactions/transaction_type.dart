enum TransactionTypes {
  cash,

  bank,

  wallet
}

TransactionTypes transactionList(int value) {
  if (value == 0) {
    return TransactionTypes.cash;
  } else if (value == 1) {
    return TransactionTypes.bank;
  } else {
    return TransactionTypes.wallet;
  }
}
