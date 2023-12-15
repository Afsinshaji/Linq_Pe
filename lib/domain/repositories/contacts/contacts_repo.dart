import 'package:linq_pe/domain/models/contacts/contacts.dart';

abstract class ContactsRepository {
  List<ContactsModel> getContactList({  required String ledgerId}) ;
  Future<void> addContactList({required String ledgerId});
  Future<void> addNonSplittedBalance(
      {required String contactId, required double amount,  required String ledgerId,});
  Future<void> addContacts({required ContactsModel contact});
  Future<void> updateContactAmounts({
      required String ledgerId,
    required double balanceAmount,
    required double receivedAmount,
    required double payedAmount,
    required String contactId,
  });
}
