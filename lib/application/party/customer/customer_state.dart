part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.customerInitial() = customerInitial;
  const factory CustomerState.displayCustomerList(
      {required List<ContactsDTO> customers}) = displayCustomerList;
}
