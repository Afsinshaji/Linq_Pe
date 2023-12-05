import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';

part 'split_amount_event.dart';
part 'split_amount_state.dart';
part 'split_amount_bloc.freezed.dart';

class SplitAmountBloc extends Bloc<SplitAmountEvent, SplitAmountState> {
  SplitAmountBloc() : super(const splitamountInitial()) {
    on<addSplitAmountList>((event, emit) {
      emit(displaySplitAmountList(transactionList: event.transactionList));
    });
  }
}
