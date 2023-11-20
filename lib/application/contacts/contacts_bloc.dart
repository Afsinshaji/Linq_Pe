

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';


import 'package:linq_pe/domain/models/contacts/contacts.dart';
import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';

part 'contacts_event.dart';
part 'contacts_state.dart';
part 'contacts_bloc.freezed.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(const contactsInitial()) {
    on<addContactsList>((event, emit) async {
      emit(const displayaddingContact(isLoading: true));
      await ContactsImplementation.instance.addContactList();
      emit(const displayaddingContact(isLoading: false));
      // add(const ContactsEvent.getContacts());
    });

    on<getContacts>((event, emit) {
      final contactModelList = ContactsImplementation.instance.getContactList();
      final contactsList = convertModeltoDTO(contactModelList);

      emit(displayContacts(contactList: contactsList));
    });

    on<addContact>((event, emit) async {
      // String time = DateTime.now().toIso8601String();
      await ContactsImplementation.instance.addContacts(
          contact: ContactsModel(
              contactId:event.contact.contactId,
              displayName: event.contact.displayName,
              contactNumber: event.contact.contactNumber,
              initails: event.contact.initails));
    });
  }
}


