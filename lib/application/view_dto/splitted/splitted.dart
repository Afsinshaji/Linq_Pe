import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/splitted/splitted_accounts.dart';

class SplittedAccountsModelDTO {
  final String splittedAccountContactId;

  final double recievedAmt;

  final double payedAmt;

  final double balanceAmt;

  final List<NestedSecondaryTransactionsDTO>? transactionList;

  final String primaryAccountContactId;

  SplittedAccountsModelDTO({
    required this.primaryAccountContactId,
    required this.splittedAccountContactId,
    required this.recievedAmt,
    required this.payedAmt,
    required this.balanceAmt,
    this.transactionList,
  });
}

Future<List<SplittedAccountsModelDTO>> convertSplittedAccountsModelToDTO(
    List<SplittedAccountsModel> splittedAccountList) async {
  List<SplittedAccountsModelDTO> splittedDTOList = [];
  for (var element in splittedAccountList) {
    splittedDTOList.add(SplittedAccountsModelDTO(
      primaryAccountContactId: element.primaryAccountContactId,
      splittedAccountContactId: element.splittedAccountContactId,
      recievedAmt: element.recievedAmt,
      payedAmt: element.payedAmt,
      balanceAmt: element.balanceAmt,
      transactionList:
          await convertTransactionidListToSeconadryTransactionDTOList(
              element.transactionList),
    ));
  }
  return splittedDTOList;
}
