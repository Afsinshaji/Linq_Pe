part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.addCustomers({required String contactId,  required String ledgerId,}) =
      addCustomers;
  const factory CustomerEvent.getCustomerList({required String ledgerId}) = getCustomerList;
  const factory CustomerEvent.deleteCustomers({required String contactId,  required String ledgerId,}) =
      deleteCustomers;
}
