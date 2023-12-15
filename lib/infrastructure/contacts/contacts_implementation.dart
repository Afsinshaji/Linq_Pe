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
  Future<void> addContactList({required String ledgerId}) async {
    log('addContactList called');
    List<Contact> contacts =
        await ContactsService.getContacts().onError((error, stackTrace) {
      log(error.toString());
      return [];
    });
    log('contacts:${contacts.toString()}');
    // await contactsBox.clear();
    String time = DateTime.now().toIso8601String();
    int index = 0;
    for (var contact in contacts) {
      if (contact.phones != null &&
          contact.phones!.isNotEmpty &&
          contact.phones!.first.value != null) {
        time = '$time-$index';
        await contactsBox.add(ContactsModel(
          ledgerId: ledgerId,
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
  List<ContactsModel> getContactList({  required String ledgerId}) {
    final List<ContactsModel> contactModelList = contactsBox.values.toList().where((element)
     => element.ledgerId==ledgerId).toList();
    log('KiBox${contactsBox.values.toList().toString()}');
    return contactModelList;
  }

  @override
  Future<void> addContacts({required ContactsModel contact}) async {
    final contactList = contactsBox.values.toList();
    if (contactList
        .where((element) => element.contactId == contact.contactId&& element.ledgerId==contact.ledgerId)
        .isEmpty) {
      await contactsBox.add(contact);
    } else {
      int index = contactList
          .indexWhere((element) => element.contactId == contact.contactId&& element.ledgerId==contact.ledgerId);
      await contactsBox.deleteAt(index);
      await contactsBox.add(contact);
    }
  }

  @override
  Future<void> addNonSplittedBalance(
      {required String contactId, required double amount,  required String ledgerId,}) async {
    final contactList = contactsBox.values.toList();
    if (contactList
        .where((element) => element.contactId == contactId&&element.ledgerId==ledgerId)
        .isEmpty) {
      return;
    } else {
      int index =
          contactList.indexWhere((element) => element.contactId == contactId&&element.ledgerId==ledgerId);
      final contact = contactList[index];
      await contactsBox.putAt(
          index,
          ContactsModel(
            ledgerId: contact.ledgerId,
              contactId: contact.contactId,
              displayName: contact.displayName,
              contactNumber: contact.contactNumber,
              initails: contact.initails,
              avatar: contact.avatar,
              blanceAmount: contact.blanceAmount,
              payedAmount: contact.payedAmount,
              receivedAmount: contact.receivedAmount,
              lastTimeOfTransfer: DateTime.now(),
              nonSplittedBalance: contact.nonSplittedBalance == null
                  ? amount
                  : contact.nonSplittedBalance! + amount));
    }
  }

  @override
  Future<void> updateContactAmounts({
    required double balanceAmount,
    required double receivedAmount,
    required double payedAmount,
    required String contactId,
      required String ledgerId,
  }) async {
    final contactList = contactsBox.values.toList();
    if (contactList
        .where((element) => element.contactId == contactId&& element.ledgerId==ledgerId)
        .isEmpty) {
      return;
    } else {
      int index =
          contactList.indexWhere((element) => element.contactId == contactId&&element.ledgerId==ledgerId);
      final contact = contactList[index];
      await contactsBox.putAt(
          index,
          ContactsModel(
            ledgerId: contact.ledgerId,
            contactId: contact.contactId,
            displayName: contact.displayName,
            contactNumber: contact.contactNumber,
            initails: contact.initails,
            avatar: contact.avatar,
            blanceAmount: balanceAmount,
            payedAmount: payedAmount,
            receivedAmount: receivedAmount,
            lastTimeOfTransfer: DateTime.now(),
          ));
    }
  }
}
