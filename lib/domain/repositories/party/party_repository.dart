

import 'package:linq_pe/domain/models/contacts/contacts.dart';

abstract class PartyRepository {
  
  Future<void> addCustomer({required String contactId});

  List<ContactsModel>getCustomers();

}
