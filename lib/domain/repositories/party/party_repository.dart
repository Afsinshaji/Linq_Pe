import 'package:linq_pe/domain/models/contacts/contacts.dart';

abstract class PartyRepository {
  Future<void> addCustomer({required String contactId, required String ledgerId});

  List<ContactsModel> getCustomers({  required String ledgerId}) ;
  Future<void> deleteCustomer({required String contactId, required String ledgerId});
  List<ContactsModel> getExpenseAccountsList({  required String ledgerId}) ;
}
