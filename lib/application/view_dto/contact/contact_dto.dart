import 'dart:typed_data';

import 'package:linq_pe/domain/models/contacts/contacts.dart';

class ContactsDTO {
  final String displayName;
  final String contactNumber;
  final Uint8List? avatar;
  final String initails;
  final String contactId;
  ContactsDTO( {required this.contactId,
    required this.displayName,
    required this.contactNumber,
    required this.avatar,
    required this.initails,
  });
}

List<ContactsDTO> convertModeltoDTO(List<ContactsModel> contacts) {
  List<ContactsDTO> listContactDTO = [];
  for (var contact in contacts) {
    listContactDTO.add(ContactsDTO(
      contactId:contact.contactId ,
      displayName: contact.displayName,
      contactNumber: contact.contactNumber,
      avatar: contact.avatar,
      initails: contact.initails,
    ));
  }
  return listContactDTO;
}