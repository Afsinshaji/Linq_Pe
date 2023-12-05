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
  Future<void> addCustomer({required String contactId}) async {
    final customerList = customerBox.values.toList();
    if (customerList
        .where((element) => element.contactId == contactId)
        .isEmpty) {
      await customerBox.add(CustomerModel(contactId: contactId));

      await ContactsImplementation.instance.updateContactAmounts(
          balanceAmount: 0.0,
          receivedAmount: 0.0,
          payedAmount: 0.0,
          contactId: contactId);
    }
  }

  @override
  List<ContactsModel> getCustomers() {
    final customerIdList = customerBox.values.toList();
    final contactList =
        ContactsImplementation.instance.contactsBox.values.toList();
    List<ContactsModel> customerContactList = [];
    for (var elements in customerIdList) {
      final customerIndex = contactList
          .indexWhere((element) => element.contactId == elements.contactId);
      customerContactList.add(contactList[customerIndex]);
    }
    return customerContactList;
  }

  @override
  Future<void> deleteCustomer({required String contactId}) async {
    final customerList = customerBox.values.toList();
    final deleteIndex =
        customerList.indexWhere((element) => element.contactId == contactId);

    if (deleteIndex >= 0) {
      await customerBox.deleteAt(deleteIndex);
      await ContactsImplementation.instance.updateContactAmounts(
          balanceAmount: 0.0,
          receivedAmount: 0.0,
          payedAmount: 0.0,
          contactId: contactId);
      await TransactionsImplementation.instance
          .deletePartyAccount(contactId: contactId);
    }
  }
}
