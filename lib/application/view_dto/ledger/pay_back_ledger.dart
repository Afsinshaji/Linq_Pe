import 'package:linq_pe/domain/models/ledger/pay_back_ledger.dart';

class PayBackLedgerDTO {
  final String ledgerId;

  final double payBackAmount;

  PayBackLedgerDTO({
    required this.ledgerId,
    required this.payBackAmount,
  });
}

List<PayBackLedgerDTO> convertPayBackLedgerModelToDTO(
    List<PayBackLedgerModel>? payBackAccountList) {
  if (payBackAccountList == null) {
    return [];
  }
  List<PayBackLedgerDTO> payBackLedgerDTOList = [];
  for (var element in payBackAccountList) {
    payBackLedgerDTOList.add(PayBackLedgerDTO(
      payBackAmount: element.payBackAmount,
      ledgerId: element.ledgerId,
    ));
  }
  return payBackLedgerDTOList;
}
