import 'package:linq_pe/domain/models/rolling/pay_back_account.dart';

class PayBackAccountDTO {
  final String splittingAccountId;
  final String splittedPrimaryAccountId;

  PayBackAccountDTO({
    required this.splittingAccountId,
    required this.splittedPrimaryAccountId,
  });
}

 List<PayBackAccountDTO> convertPayBackModelToDTO(List<PayBackAccountModel> payBackAccountList) {
  List<PayBackAccountDTO> payBackAccountDTOList = [];
  for (var element in payBackAccountList) {
    payBackAccountDTOList.add(PayBackAccountDTO(
        splittingAccountId: element.splittingAccountId,
        splittedPrimaryAccountId: element.splittedPrimaryAccountId));
  }
  return payBackAccountDTOList;
}
