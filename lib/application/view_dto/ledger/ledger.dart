import 'package:linq_pe/domain/models/ledger/ledger.dart';

class LedgerDTO {
  final String ledgerName;
  final String ledgerId;

  final double? totalBlanceAmount;
  final double? totalPayedAmount;

  LedgerDTO(
      {required this.ledgerName,
      required this.ledgerId,
      this.totalBlanceAmount,
      this.totalPayedAmount});
}

 List<LedgerDTO> convertLedgerModelToDTO(List<LedgerModel> ledgerModelList) {
  List<LedgerDTO> ledgerDTOList = [];
  for (var ledger in ledgerModelList) {
    ledgerDTOList.add(LedgerDTO(
        ledgerName: ledger.ledgerName,
        ledgerId: ledger.ledgerId,
        totalBlanceAmount: ledger.totalBlanceAmount,
        totalPayedAmount: ledger.totalPayedAmount));
  }
  return ledgerDTOList;
}
