part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.addCustomers({required String contactId}) = addCustomers;
  const factory CustomerEvent.getCustomerList() = getCustomerList;
}
