part of 'splitted_bloc.dart';

@freezed
class SplittedState with _$SplittedState {
  const factory SplittedState.splittedInitial() = splittedInitial;
  const factory SplittedState.displaySplittedAccounts({required List<SplittedAccountsModelDTO>splittedAccountList}) =
      displaySplittedAccounts;
}
