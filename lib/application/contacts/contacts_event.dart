part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.addContactsList({required String ledgerId}) = addContactsList;
  const factory ContactsEvent.addContact({required ContactsDTO contact}) =
      addContact;

  const factory ContactsEvent.getContacts({required String ledgerId}) = getContacts;
  const factory ContactsEvent.addNonSplittingBalance(
      {required String contactId,  required String ledgerId,
      required double amount}) = addNonSplittingBalance;
}
