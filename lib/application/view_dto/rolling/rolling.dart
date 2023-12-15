import 'package:linq_pe/application/view_dto/rolling/pay_back.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/rolling/rolling.dart';

class RollingAccountsDTO {
  final String rollingAccountContactId;

  final double recievedRollingAmt;

  final double payedBackAmt;

  final double balanceToPayAmt;

  final List<NestedSecondaryTransactionsDTO>? transactionList;

  final List<PayBackAccountDTO> payBackAccountList;

  final String ledgerId;

  RollingAccountsDTO({
    required this.ledgerId,
    required this.payBackAccountList,
    required this.rollingAccountContactId,
    required this.recievedRollingAmt,
    required this.payedBackAmt,
    required this.balanceToPayAmt,
    this.transactionList,
  });
}

Future<List<RollingAccountsDTO>> convertRollAccountModelToDTO(
    List<RollingAccountsModel> rollingModelList) async {
  List<RollingAccountsDTO> rollingDTOList = [];
  for (var roll in rollingModelList) {
    rollingDTOList.add(RollingAccountsDTO(
      ledgerId: roll.ledgerId,
      payBackAccountList: convertPayBackModelToDTO(roll.payBackAccountList),
      rollingAccountContactId: roll.rollingAccountContactId,
      recievedRollingAmt: roll.recievedRollingAmt,
      payedBackAmt: roll.payedBackAmt,
      balanceToPayAmt: roll.balanceToPayAmt,
      transactionList:
          await convertTransactionidListToSeconadryTransactionDTOList(
              roll.transactionList),
    ));
  }

  return rollingDTOList;
}
