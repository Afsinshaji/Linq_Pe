import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

class TransactionModelDTO {
  final String transactionId;

  final List<TransactionModelDTO>? transactionsList;

  TransactionModelDTO({required this.transactionId, this.transactionsList});
}

List<TransactionModelDTO> convertTransactionModeltoDTO(List<TransactionModel>? transactionList) {
  if (transactionList == null) {
    return [];
  }
  List<TransactionModelDTO> transactionModelDTOList = [];
  for (var element in transactionList) {
    transactionModelDTOList.add(TransactionModelDTO(
        transactionId: element.transactionId,
        transactionsList:
            convertTransactionModeltoDTO(element.transactionsList)));
  }

  return transactionModelDTOList;
}
