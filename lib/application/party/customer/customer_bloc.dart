

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/infrastructure/party/party_implementation.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  CustomerBloc() : super(const customerInitial()) {
    on<addCustomers>((event, emit) async {
      await PartyImplementation.instance
          .addCustomer(contactId: event.contactId,ledgerId:event.ledgerId );
      add( CustomerEvent.getCustomerList(ledgerId: event.ledgerId));
    });
    on<getCustomerList>((event, emit) {
     
      final customerList = PartyImplementation.instance.getCustomers(
        ledgerId: event.ledgerId
      );
      final customerDTOList = convertModeltoDTO(customerList);
      emit(displayCustomerList(customers: customerDTOList));
    });
     on<deleteCustomers>((event, emit)async {
     
   await  PartyImplementation.instance.deleteCustomer(
    ledgerId:event.ledgerId ,
        contactId: event.contactId
      );
        add( CustomerEvent.getCustomerList(ledgerId: event.ledgerId));
      
    });
  }
}
