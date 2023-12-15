import 'dart:typed_data';

import 'package:linq_pe/domain/models/contacts/contacts.dart';

class ContactsDTO {
  final String ledgerId;
  final String displayName;
  final String contactNumber;
  final Uint8List? avatar;
  final String initails;
  final String contactId;
  final double? blanceAmount;
  final DateTime? lastTimeOfTransaction;
  final double? nonSplittedAmount;

  final double? payedAmount;

  final double? receivedAmount;
  ContactsDTO({
    required this.ledgerId,
    this.nonSplittedAmount,
    this.lastTimeOfTransaction,
    required this.contactId,
    required this.displayName,
    required this.contactNumber,
    required this.avatar,
    required this.initails,
    this.blanceAmount,
    this.payedAmount,
    this.receivedAmount,
  });
}

List<ContactsDTO> convertModeltoDTO(List<ContactsModel> contacts) {
  List<ContactsDTO> listContactDTO = [];
  for (var contact in contacts) {
    listContactDTO.add(ContactsDTO(
      ledgerId: contact.ledgerId,
      nonSplittedAmount: contact.nonSplittedBalance,
      lastTimeOfTransaction: contact.lastTimeOfTransfer,
      contactId: contact.contactId,
      displayName: contact.displayName,
      contactNumber: contact.contactNumber,
      avatar: contact.avatar,
      initails: contact.initails,
      blanceAmount: contact.blanceAmount,
      payedAmount: contact.payedAmount,
      receivedAmount: contact.receivedAmount,
    ));
  }
  return listContactDTO;
}
