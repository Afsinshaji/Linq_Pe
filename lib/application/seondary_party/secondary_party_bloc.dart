import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';

part 'secondary_party_event.dart';
part 'secondary_party_state.dart';
part 'secondary_party_bloc.freezed.dart';

class SecondaryPartyBloc
    extends Bloc<SecondaryPartyEvent, SecondaryPartyState> {
  SecondaryPartyBloc() : super(const secondaryPartyInitial()) {
    on<addSecondaryPartyList>((event, emit) {
      emit(displaySecondaryPartyList(transactionList: event.transactionList));
    });
  }
}
