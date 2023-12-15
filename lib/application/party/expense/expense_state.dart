part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.expenseInitial() = expenseInitial;
  const factory ExpenseState.displayExpenseAccounts({required List<ContactsDTO>expenseAccountsList}) = displayExpenseAccounts;
}
