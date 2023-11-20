part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.addContactsList() = addContactsList;
  const factory ContactsEvent.addContact({required ContactsDTO contact}) =
      addContact;

  const factory ContactsEvent.getContacts() = getContacts;
}
