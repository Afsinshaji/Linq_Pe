import 'package:linq_pe/domain/models/contacts/contacts.dart';

abstract class ContactsRepository {
  List<ContactsModel> getContactList();
  Future<void> addContactList();
  Future<void> addContacts({required ContactsModel contact});
 
}
