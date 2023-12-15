part of 'expense_bloc.dart';

@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.getExpenseAccountList({required String ledgerId}) = getExpenseAccountList;
}