import 'package:linq_pe/application/view_dto/transaction/transaction_model_dto.dart';
import 'package:linq_pe/domain/models/transactions/party_account_model.dart';

class PartyAccountDTO {
  final String contactId;

  final double recievedAmt;

  final double payedAmt;

  final double balanceAmt;

  final List<TransactionModelDTO>? secondaryTransaction;

  PartyAccountDTO({
    required this.contactId,
    required this.recievedAmt,
    required this.payedAmt,
    required this.balanceAmt,
    this.secondaryTransaction,
  });
}

PartyAccountDTO convertPartyAccountModeltoDTO(PartyAccountsModel transaction) {
 late PartyAccountDTO transactionDTO ;
  
    if (transaction.transactionList != null &&
        transaction.transactionList!.isNotEmpty) {
    final secondaryList =  convertTransactionModeltoDTO(transaction.transactionList);
   
   transactionDTO=PartyAccountDTO(
          contactId: transaction.contactId,
          recievedAmt: transaction.recievedAmt,
          payedAmt: transaction.payedAmt,
          balanceAmt: transaction.balanceAmt,
          secondaryTransaction: secondaryList,
          );
    } else {
      transactionDTO=PartyAccountDTO(
          contactId: transaction.contactId,
          recievedAmt: transaction.recievedAmt,
          payedAmt: transaction.payedAmt,
          balanceAmt: transaction.balanceAmt);
    
  }
  return transactionDTO;
}
