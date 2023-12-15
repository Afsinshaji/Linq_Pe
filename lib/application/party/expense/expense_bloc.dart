import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/infrastructure/party/party_implementation.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(const expenseInitial()) {
    on<getExpenseAccountList>((event, emit) {
      final expenseAccountsList = PartyImplementation.instance.getExpenseAccountsList(
         ledgerId: event.ledgerId,
      );
      final expenseAccountsDTOList = convertModeltoDTO(expenseAccountsList);
      emit(displayExpenseAccounts(expenseAccountsList: expenseAccountsDTOList));
    });
  }
}
