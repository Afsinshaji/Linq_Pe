import 'dart:developer';

import 'package:contacts_service/contacts_service.dart';
import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/contacts/contacts.dart';

import 'package:linq_pe/domain/repositories/contacts/contacts_repo.dart';

class ContactsImplementation extends ContactsRepository {
  // creating a singleton
  ContactsImplementation.internal();
  static ContactsImplementation instance = ContactsImplementation.internal();
  ContactsImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  late Box<ContactsModel> contactsBox;
  openContactsBox() async {
    contactsBox = await Hive.openBox("contactsBox");
  }

  @override
  Future<void> addContactList() async {
    log('addContactList called');
    List<Contact> contacts =
        await ContactsService.getContacts().onError((error, stackTrace) {
      log(error.toString());
      return [];
    });
    log('contacts:${contacts.toString()}');
    await contactsBox.clear();
    String time = DateTime.now().toIso8601String();
    int index = 0;
    for (var contact in contacts) {
      if (contact.phones != null &&
          contact.phones!.isNotEmpty &&
          contact.phones!.first.value != null) {
        time = '$time-$index';
        await contactsBox.add(ContactsModel(
          contactId: time,
          contactNumber: contact.phones!.first.value ??= '',
          displayName: contact.displayName ??= '',
          initails: contact.initials(),
          avatar: contact.avatar,
        ));
        index++;
      }
    }
    log('Box${contactsBox.values.toList().toString()}');

    await Future.delayed(const Duration(seconds: 1));
    log('Box${contactsBox.values.toList().toString()}');
  }

  @override
  List<ContactsModel> getContactList() {
    final List<ContactsModel> contactModelList = contactsBox.values.toList();
    log('KiBox${contactsBox.values.toList().toString()}');
    return contactModelList;
  }

  @override
  Future<void> addContacts({required ContactsModel contact}) async {
    final contactList = contactsBox.values.toList();
    if (contactList
        .where((element) => element.contactId == contact.contactId)
        .isEmpty) {
      await contactsBox.add(contact);
    } else {
      int index = contactList
          .indexWhere((element) => element.contactId == contact.contactId);
      await contactsBox.deleteAt(index);
      await contactsBox.add(contact);
    }
  }
}
