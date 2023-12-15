part of 'rolling_bloc.dart';

@freezed
class RollingState with _$RollingState {
  const factory RollingState.rollingInitial() = rollingInitial;
  const factory RollingState.displayRollingAccounts({
   required  List<RollingAccountsDTO>rollingAccountList,
  }) = displayRollingAccounts;
}
