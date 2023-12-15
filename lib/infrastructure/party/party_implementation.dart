import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/contacts/contacts.dart';
import 'package:linq_pe/domain/models/party/customer/customer.dart';

import 'package:linq_pe/domain/repositories/party/party_repository.dart';
import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

class PartyImplementation extends PartyRepository {
  // creating a singleton
  PartyImplementation.internal();
  static PartyImplementation instance = PartyImplementation.internal();
  PartyImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  late Box<CustomerModel> customerBox;
  openCustomerBox() async {
    customerBox = await Hive.openBox("customerBox");
  }

  @override
  Future<void> addCustomer(
      {required String contactId, required String ledgerId}) async {
    final customerList = customerBox.values.toList();
    if (customerList
        .where((element) =>
            element.contactId == contactId && element.ledgerId == ledgerId)
        .isEmpty) {
      await customerBox
          .add(CustomerModel(ledgerId: ledgerId, contactId: contactId));

      await ContactsImplementation.instance.updateContactAmounts(
          ledgerId: ledgerId,
          balanceAmount: 0.0,
          receivedAmount: 0.0,
          payedAmount: 0.0,
          contactId: contactId);
    }
  }

  @override
  List<ContactsModel> getCustomers({required String ledgerId}) {
    final customerIdList = customerBox.values.toList();
    final contactList =
        ContactsImplementation.instance.contactsBox.values.toList();
    List<ContactsModel> customerContactList = [];
    for (var elements in customerIdList) {
      final customerIndex = contactList.indexWhere((element) =>
          element.ledgerId == ledgerId &&
          element.contactId == elements.contactId);
      if (customerIndex >= 0) {
        customerContactList.add(contactList[customerIndex]);
      }
    }
    log('customerList${customerContactList.toString()}');
    return customerContactList;
  }

  @override
  Future<void> deleteCustomer(
      {required String contactId, required String ledgerId}) async {
    final customerList = customerBox.values.toList();
    final deleteIndex = customerList.indexWhere((element) =>
        element.contactId == contactId && element.ledgerId == ledgerId);

    if (deleteIndex >= 0) {
      await customerBox.deleteAt(deleteIndex);
      await ContactsImplementation.instance.updateContactAmounts(
          ledgerId: ledgerId,
          balanceAmount: 0.0,
          receivedAmount: 0.0,
          payedAmount: 0.0,
          contactId: contactId);
      await TransactionsImplementation.instance
          .deletePartyAccount(contactId: contactId, ledgerId: ledgerId);
    }
  }

  @override
  List<ContactsModel> getExpenseAccountsList({required String ledgerId}) {
    final expenseAccountsIdList =
        TransactionsImplementation.instance.expenseBox.values.toList();
    log(expenseAccountsIdList.toString());
    final contactList =
        ContactsImplementation.instance.contactsBox.values.toList();
    List<ContactsModel> expenseAccountsContactList = [];
    for (var elements in expenseAccountsIdList) {
      final expenseAccountsIndex = contactList.indexWhere((element) =>
          element.contactId == elements.contactId &&
          element.ledgerId == ledgerId);
      expenseAccountsContactList.add(contactList[expenseAccountsIndex]);
    }
    return expenseAccountsContactList;
  }
}
