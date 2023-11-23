import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/transactions/transactions.dart';

class TransactionsDTO {
  final String contactId;

  final double recievedAmt;

  final double payedAmt;

  final double balanceAmt;

  final List<SecondaryTransactionsDTO>? secondaryTransaction;

  TransactionsDTO({
    required this.contactId,
    required this.recievedAmt,
    required this.payedAmt,
    required this.balanceAmt,
    this.secondaryTransaction,
  });
}

TransactionsDTO convertTransactionModeltoDTO(TransactionsModel transaction) {
 late TransactionsDTO transactionDTO ;
  
    if (transaction.secondaryTransaction != null &&
        transaction.secondaryTransaction!.isNotEmpty) {
    final secondaryList =  convertSecondaryTransactionsModeltoDTO(transaction.secondaryTransaction);
   
   transactionDTO=TransactionsDTO(
          contactId: transaction.contactId,
          recievedAmt: transaction.recievedAmt,
          payedAmt: transaction.payedAmt,
          balanceAmt: transaction.balanceAmt,
          secondaryTransaction: secondaryList,
          );
    } else {
      transactionDTO=TransactionsDTO(
          contactId: transaction.contactId,
          recievedAmt: transaction.recievedAmt,
          payedAmt: transaction.payedAmt,
          balanceAmt: transaction.balanceAmt);
    
  }
  return transactionDTO;
}
