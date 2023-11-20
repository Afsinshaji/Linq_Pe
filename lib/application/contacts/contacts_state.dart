part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.contactsInitial() = contactsInitial;
  const factory ContactsState.displayContacts(
      {required List<ContactsDTO> contactList}) = displayContacts;
  const factory ContactsState.displayaddingContact({required bool isLoading}) =
      displayaddingContact;
}
