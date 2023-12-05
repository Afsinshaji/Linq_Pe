// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res, TransactionsEvent>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res, $Val extends TransactionsEvent>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addGetTransctionsImplCopyWith<$Res> {
  factory _$$addGetTransctionsImplCopyWith(_$addGetTransctionsImpl value,
          $Res Function(_$addGetTransctionsImpl) then) =
      __$$addGetTransctionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? transactionDetails,
      String fromContactId,
      String toContactId,
      double amount,
      bool isPayed,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? transactionId});
}

/// @nodoc
class __$$addGetTransctionsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$addGetTransctionsImpl>
    implements _$$addGetTransctionsImplCopyWith<$Res> {
  __$$addGetTransctionsImplCopyWithImpl(_$addGetTransctionsImpl _value,
      $Res Function(_$addGetTransctionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionDetails = freezed,
    Object? fromContactId = null,
    Object? toContactId = null,
    Object? amount = null,
    Object? isPayed = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_$addGetTransctionsImpl(
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      fromContactId: null == fromContactId
          ? _value.fromContactId
          : fromContactId // ignore: cast_nullable_to_non_nullable
              as String,
      toContactId: null == toContactId
          ? _value.toContactId
          : toContactId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isPayed: null == isPayed
          ? _value.isPayed
          : isPayed // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$addGetTransctionsImpl implements addGetTransctions {
  const _$addGetTransctionsImpl(
      {required this.transactionDetails,
      required this.fromContactId,
      required this.toContactId,
      required this.amount,
      required this.isPayed,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.transactionId});

  @override
  final String? transactionDetails;
  @override
  final String fromContactId;
  @override
  final String toContactId;
  @override
  final double amount;
  @override
  final bool isPayed;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final File? billImage;
  @override
  final String? transactionId;

  @override
  String toString() {
    return 'TransactionsEvent.addGetTransctions(transactionDetails: $transactionDetails, fromContactId: $fromContactId, toContactId: $toContactId, amount: $amount, isPayed: $isPayed, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addGetTransctionsImpl &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(other.fromContactId, fromContactId) ||
                other.fromContactId == fromContactId) &&
            (identical(other.toContactId, toContactId) ||
                other.toContactId == toContactId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isPayed, isPayed) || other.isPayed == isPayed) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionDetails,
      fromContactId,
      toContactId,
      amount,
      isPayed,
      transactionType,
      timeOfTrans,
      billImage,
      transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addGetTransctionsImplCopyWith<_$addGetTransctionsImpl> get copyWith =>
      __$$addGetTransctionsImplCopyWithImpl<_$addGetTransctionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return addGetTransctions(
        transactionDetails,
        fromContactId,
        toContactId,
        amount,
        isPayed,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return addGetTransctions?.call(
        transactionDetails,
        fromContactId,
        toContactId,
        amount,
        isPayed,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (addGetTransctions != null) {
      return addGetTransctions(
          transactionDetails,
          fromContactId,
          toContactId,
          amount,
          isPayed,
          transactionType,
          timeOfTrans,
          billImage,
          transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return addGetTransctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return addGetTransctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (addGetTransctions != null) {
      return addGetTransctions(this);
    }
    return orElse();
  }
}

abstract class addGetTransctions implements TransactionsEvent {
  const factory addGetTransctions(
      {required final String? transactionDetails,
      required final String fromContactId,
      required final String toContactId,
      required final double amount,
      required final bool isPayed,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? transactionId}) = _$addGetTransctionsImpl;

  String? get transactionDetails;
  String get fromContactId;
  String get toContactId;
  double get amount;
  bool get isPayed;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get transactionId;
  @JsonKey(ignore: true)
  _$$addGetTransctionsImplCopyWith<_$addGetTransctionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addBalanceTransctionsImplCopyWith<$Res> {
  factory _$$addBalanceTransctionsImplCopyWith(
          _$addBalanceTransctionsImpl value,
          $Res Function(_$addBalanceTransctionsImpl) then) =
      __$$addBalanceTransctionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? transactionDetails,
      String fromContactId,
      String toContactId,
      double amount,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? transactionId});
}

/// @nodoc
class __$$addBalanceTransctionsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$addBalanceTransctionsImpl>
    implements _$$addBalanceTransctionsImplCopyWith<$Res> {
  __$$addBalanceTransctionsImplCopyWithImpl(_$addBalanceTransctionsImpl _value,
      $Res Function(_$addBalanceTransctionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionDetails = freezed,
    Object? fromContactId = null,
    Object? toContactId = null,
    Object? amount = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_$addBalanceTransctionsImpl(
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      fromContactId: null == fromContactId
          ? _value.fromContactId
          : fromContactId // ignore: cast_nullable_to_non_nullable
              as String,
      toContactId: null == toContactId
          ? _value.toContactId
          : toContactId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$addBalanceTransctionsImpl implements addBalanceTransctions {
  const _$addBalanceTransctionsImpl(
      {required this.transactionDetails,
      required this.fromContactId,
      required this.toContactId,
      required this.amount,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.transactionId});

  @override
  final String? transactionDetails;
  @override
  final String fromContactId;
  @override
  final String toContactId;
  @override
  final double amount;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final File? billImage;
  @override
  final String? transactionId;

  @override
  String toString() {
    return 'TransactionsEvent.addBalanceTransctions(transactionDetails: $transactionDetails, fromContactId: $fromContactId, toContactId: $toContactId, amount: $amount, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addBalanceTransctionsImpl &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(other.fromContactId, fromContactId) ||
                other.fromContactId == fromContactId) &&
            (identical(other.toContactId, toContactId) ||
                other.toContactId == toContactId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionDetails,
      fromContactId,
      toContactId,
      amount,
      transactionType,
      timeOfTrans,
      billImage,
      transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addBalanceTransctionsImplCopyWith<_$addBalanceTransctionsImpl>
      get copyWith => __$$addBalanceTransctionsImplCopyWithImpl<
          _$addBalanceTransctionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return addBalanceTransctions(transactionDetails, fromContactId, toContactId,
        amount, transactionType, timeOfTrans, billImage, transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return addBalanceTransctions?.call(
        transactionDetails,
        fromContactId,
        toContactId,
        amount,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (addBalanceTransctions != null) {
      return addBalanceTransctions(
          transactionDetails,
          fromContactId,
          toContactId,
          amount,
          transactionType,
          timeOfTrans,
          billImage,
          transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return addBalanceTransctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return addBalanceTransctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (addBalanceTransctions != null) {
      return addBalanceTransctions(this);
    }
    return orElse();
  }
}

abstract class addBalanceTransctions implements TransactionsEvent {
  const factory addBalanceTransctions(
      {required final String? transactionDetails,
      required final String fromContactId,
      required final String toContactId,
      required final double amount,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? transactionId}) = _$addBalanceTransctionsImpl;

  String? get transactionDetails;
  String get fromContactId;
  String get toContactId;
  double get amount;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get transactionId;
  @JsonKey(ignore: true)
  _$$addBalanceTransctionsImplCopyWith<_$addBalanceTransctionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getTransactionsListImplCopyWith<$Res> {
  factory _$$getTransactionsListImplCopyWith(_$getTransactionsListImpl value,
          $Res Function(_$getTransactionsListImpl) then) =
      __$$getTransactionsListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactId});
}

/// @nodoc
class __$$getTransactionsListImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$getTransactionsListImpl>
    implements _$$getTransactionsListImplCopyWith<$Res> {
  __$$getTransactionsListImplCopyWithImpl(_$getTransactionsListImpl _value,
      $Res Function(_$getTransactionsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
  }) {
    return _then(_$getTransactionsListImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getTransactionsListImpl implements getTransactionsList {
  const _$getTransactionsListImpl({required this.contactId});

  @override
  final String contactId;

  @override
  String toString() {
    return 'TransactionsEvent.getTransactionsList(contactId: $contactId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getTransactionsListImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getTransactionsListImplCopyWith<_$getTransactionsListImpl> get copyWith =>
      __$$getTransactionsListImplCopyWithImpl<_$getTransactionsListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return getTransactionsList(contactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return getTransactionsList?.call(contactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (getTransactionsList != null) {
      return getTransactionsList(contactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return getTransactionsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return getTransactionsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (getTransactionsList != null) {
      return getTransactionsList(this);
    }
    return orElse();
  }
}

abstract class getTransactionsList implements TransactionsEvent {
  const factory getTransactionsList({required final String contactId}) =
      _$getTransactionsListImpl;

  String get contactId;
  @JsonKey(ignore: true)
  _$$getTransactionsListImplCopyWith<_$getTransactionsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addSecondaryPartyPaymentImplCopyWith<$Res> {
  factory _$$addSecondaryPartyPaymentImplCopyWith(
          _$addSecondaryPartyPaymentImpl value,
          $Res Function(_$addSecondaryPartyPaymentImpl) then) =
      __$$addSecondaryPartyPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isSplittedPrimaryTransaction,
      String transactionRealId,
      String splittedTransactionId,
      String primaryContactId,
      String secondaryContactId,
      String payedToId,
      double amountPayed,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? transactionId,
      String? transactionDetails});
}

/// @nodoc
class __$$addSecondaryPartyPaymentImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res,
        _$addSecondaryPartyPaymentImpl>
    implements _$$addSecondaryPartyPaymentImplCopyWith<$Res> {
  __$$addSecondaryPartyPaymentImplCopyWithImpl(
      _$addSecondaryPartyPaymentImpl _value,
      $Res Function(_$addSecondaryPartyPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSplittedPrimaryTransaction = null,
    Object? transactionRealId = null,
    Object? splittedTransactionId = null,
    Object? primaryContactId = null,
    Object? secondaryContactId = null,
    Object? payedToId = null,
    Object? amountPayed = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? transactionId = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_$addSecondaryPartyPaymentImpl(
      isSplittedPrimaryTransaction: null == isSplittedPrimaryTransaction
          ? _value.isSplittedPrimaryTransaction
          : isSplittedPrimaryTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionRealId: null == transactionRealId
          ? _value.transactionRealId
          : transactionRealId // ignore: cast_nullable_to_non_nullable
              as String,
      splittedTransactionId: null == splittedTransactionId
          ? _value.splittedTransactionId
          : splittedTransactionId // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactId: null == primaryContactId
          ? _value.primaryContactId
          : primaryContactId // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryContactId: null == secondaryContactId
          ? _value.secondaryContactId
          : secondaryContactId // ignore: cast_nullable_to_non_nullable
              as String,
      payedToId: null == payedToId
          ? _value.payedToId
          : payedToId // ignore: cast_nullable_to_non_nullable
              as String,
      amountPayed: null == amountPayed
          ? _value.amountPayed
          : amountPayed // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$addSecondaryPartyPaymentImpl implements addSecondaryPartyPayment {
  const _$addSecondaryPartyPaymentImpl(
      {required this.isSplittedPrimaryTransaction,
      required this.transactionRealId,
      required this.splittedTransactionId,
      required this.primaryContactId,
      required this.secondaryContactId,
      required this.payedToId,
      required this.amountPayed,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.transactionId,
      required this.transactionDetails});

  @override
  final bool isSplittedPrimaryTransaction;
  @override
  final String transactionRealId;
  @override
  final String splittedTransactionId;
  @override
  final String primaryContactId;
  @override
  final String secondaryContactId;
  @override
  final String payedToId;
  @override
  final double amountPayed;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final File? billImage;
  @override
  final String? transactionId;
  @override
  final String? transactionDetails;

  @override
  String toString() {
    return 'TransactionsEvent.addSecondaryPartyPayment(isSplittedPrimaryTransaction: $isSplittedPrimaryTransaction, transactionRealId: $transactionRealId, splittedTransactionId: $splittedTransactionId, primaryContactId: $primaryContactId, secondaryContactId: $secondaryContactId, payedToId: $payedToId, amountPayed: $amountPayed, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, transactionId: $transactionId, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addSecondaryPartyPaymentImpl &&
            (identical(other.isSplittedPrimaryTransaction,
                    isSplittedPrimaryTransaction) ||
                other.isSplittedPrimaryTransaction ==
                    isSplittedPrimaryTransaction) &&
            (identical(other.transactionRealId, transactionRealId) ||
                other.transactionRealId == transactionRealId) &&
            (identical(other.splittedTransactionId, splittedTransactionId) ||
                other.splittedTransactionId == splittedTransactionId) &&
            (identical(other.primaryContactId, primaryContactId) ||
                other.primaryContactId == primaryContactId) &&
            (identical(other.secondaryContactId, secondaryContactId) ||
                other.secondaryContactId == secondaryContactId) &&
            (identical(other.payedToId, payedToId) ||
                other.payedToId == payedToId) &&
            (identical(other.amountPayed, amountPayed) ||
                other.amountPayed == amountPayed) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSplittedPrimaryTransaction,
      transactionRealId,
      splittedTransactionId,
      primaryContactId,
      secondaryContactId,
      payedToId,
      amountPayed,
      transactionType,
      timeOfTrans,
      billImage,
      transactionId,
      transactionDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addSecondaryPartyPaymentImplCopyWith<_$addSecondaryPartyPaymentImpl>
      get copyWith => __$$addSecondaryPartyPaymentImplCopyWithImpl<
          _$addSecondaryPartyPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return addSecondaryPartyPayment(
        isSplittedPrimaryTransaction,
        transactionRealId,
        splittedTransactionId,
        primaryContactId,
        secondaryContactId,
        payedToId,
        amountPayed,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return addSecondaryPartyPayment?.call(
        isSplittedPrimaryTransaction,
        transactionRealId,
        splittedTransactionId,
        primaryContactId,
        secondaryContactId,
        payedToId,
        amountPayed,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (addSecondaryPartyPayment != null) {
      return addSecondaryPartyPayment(
          isSplittedPrimaryTransaction,
          transactionRealId,
          splittedTransactionId,
          primaryContactId,
          secondaryContactId,
          payedToId,
          amountPayed,
          transactionType,
          timeOfTrans,
          billImage,
          transactionId,
          transactionDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return addSecondaryPartyPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return addSecondaryPartyPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (addSecondaryPartyPayment != null) {
      return addSecondaryPartyPayment(this);
    }
    return orElse();
  }
}

abstract class addSecondaryPartyPayment implements TransactionsEvent {
  const factory addSecondaryPartyPayment(
          {required final bool isSplittedPrimaryTransaction,
          required final String transactionRealId,
          required final String splittedTransactionId,
          required final String primaryContactId,
          required final String secondaryContactId,
          required final String payedToId,
          required final double amountPayed,
          required final TransactionTypes transactionType,
          required final DateTime timeOfTrans,
          required final File? billImage,
          required final String? transactionId,
          required final String? transactionDetails}) =
      _$addSecondaryPartyPaymentImpl;

  bool get isSplittedPrimaryTransaction;
  String get transactionRealId;
  String get splittedTransactionId;
  String get primaryContactId;
  String get secondaryContactId;
  String get payedToId;
  double get amountPayed;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get transactionId;
  String? get transactionDetails;
  @JsonKey(ignore: true)
  _$$addSecondaryPartyPaymentImplCopyWith<_$addSecondaryPartyPaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$splitAmountsImplCopyWith<$Res> {
  factory _$$splitAmountsImplCopyWith(
          _$splitAmountsImpl value, $Res Function(_$splitAmountsImpl) then) =
      __$$splitAmountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String primaryContactId,
      String toContactId,
      String transactionId,
      double splitAmount,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails,
      String id});
}

/// @nodoc
class __$$splitAmountsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$splitAmountsImpl>
    implements _$$splitAmountsImplCopyWith<$Res> {
  __$$splitAmountsImplCopyWithImpl(
      _$splitAmountsImpl _value, $Res Function(_$splitAmountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryContactId = null,
    Object? toContactId = null,
    Object? transactionId = null,
    Object? splitAmount = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
    Object? id = null,
  }) {
    return _then(_$splitAmountsImpl(
      primaryContactId: null == primaryContactId
          ? _value.primaryContactId
          : primaryContactId // ignore: cast_nullable_to_non_nullable
              as String,
      toContactId: null == toContactId
          ? _value.toContactId
          : toContactId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      splitAmount: null == splitAmount
          ? _value.splitAmount
          : splitAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      userTransactionId: freezed == userTransactionId
          ? _value.userTransactionId
          : userTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$splitAmountsImpl implements splitAmounts {
  const _$splitAmountsImpl(
      {required this.primaryContactId,
      required this.toContactId,
      required this.transactionId,
      required this.splitAmount,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails,
      required this.id});

  @override
  final String primaryContactId;
  @override
  final String toContactId;
  @override
  final String transactionId;
  @override
  final double splitAmount;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final File? billImage;
  @override
  final String? userTransactionId;
  @override
  final String? transactionDetails;
  @override
  final String id;

  @override
  String toString() {
    return 'TransactionsEvent.splitAmounts(primaryContactId: $primaryContactId, toContactId: $toContactId, transactionId: $transactionId, splitAmount: $splitAmount, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$splitAmountsImpl &&
            (identical(other.primaryContactId, primaryContactId) ||
                other.primaryContactId == primaryContactId) &&
            (identical(other.toContactId, toContactId) ||
                other.toContactId == toContactId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.splitAmount, splitAmount) ||
                other.splitAmount == splitAmount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.userTransactionId, userTransactionId) ||
                other.userTransactionId == userTransactionId) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      primaryContactId,
      toContactId,
      transactionId,
      splitAmount,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$splitAmountsImplCopyWith<_$splitAmountsImpl> get copyWith =>
      __$$splitAmountsImplCopyWithImpl<_$splitAmountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return splitAmounts(
        primaryContactId,
        toContactId,
        transactionId,
        splitAmount,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails,
        id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return splitAmounts?.call(
        primaryContactId,
        toContactId,
        transactionId,
        splitAmount,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails,
        id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (splitAmounts != null) {
      return splitAmounts(
          primaryContactId,
          toContactId,
          transactionId,
          splitAmount,
          transactionType,
          timeOfTrans,
          billImage,
          userTransactionId,
          transactionDetails,
          id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return splitAmounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return splitAmounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (splitAmounts != null) {
      return splitAmounts(this);
    }
    return orElse();
  }
}

abstract class splitAmounts implements TransactionsEvent {
  const factory splitAmounts(
      {required final String primaryContactId,
      required final String toContactId,
      required final String transactionId,
      required final double splitAmount,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? userTransactionId,
      required final String? transactionDetails,
      required final String id}) = _$splitAmountsImpl;

  String get primaryContactId;
  String get toContactId;
  String get transactionId;
  double get splitAmount;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  String get id;
  @JsonKey(ignore: true)
  _$$splitAmountsImplCopyWith<_$splitAmountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addGiveTransactionsImplCopyWith<$Res> {
  factory _$$addGiveTransactionsImplCopyWith(_$addGiveTransactionsImpl value,
          $Res Function(_$addGiveTransactionsImpl) then) =
      __$$addGiveTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromContactId,
      String toContactId,
      double amount,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      String? transactionDetails,
      File? billImage,
      String? transactionId});
}

/// @nodoc
class __$$addGiveTransactionsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$addGiveTransactionsImpl>
    implements _$$addGiveTransactionsImplCopyWith<$Res> {
  __$$addGiveTransactionsImplCopyWithImpl(_$addGiveTransactionsImpl _value,
      $Res Function(_$addGiveTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromContactId = null,
    Object? toContactId = null,
    Object? amount = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? transactionDetails = freezed,
    Object? billImage = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_$addGiveTransactionsImpl(
      fromContactId: null == fromContactId
          ? _value.fromContactId
          : fromContactId // ignore: cast_nullable_to_non_nullable
              as String,
      toContactId: null == toContactId
          ? _value.toContactId
          : toContactId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$addGiveTransactionsImpl implements addGiveTransactions {
  const _$addGiveTransactionsImpl(
      {required this.fromContactId,
      required this.toContactId,
      required this.amount,
      required this.transactionType,
      required this.timeOfTrans,
      required this.transactionDetails,
      required this.billImage,
      required this.transactionId});

  @override
  final String fromContactId;
  @override
  final String toContactId;
  @override
  final double amount;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final String? transactionDetails;
  @override
  final File? billImage;
  @override
  final String? transactionId;

  @override
  String toString() {
    return 'TransactionsEvent.addGiveTransactions(fromContactId: $fromContactId, toContactId: $toContactId, amount: $amount, transactionType: $transactionType, timeOfTrans: $timeOfTrans, transactionDetails: $transactionDetails, billImage: $billImage, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addGiveTransactionsImpl &&
            (identical(other.fromContactId, fromContactId) ||
                other.fromContactId == fromContactId) &&
            (identical(other.toContactId, toContactId) ||
                other.toContactId == toContactId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromContactId,
      toContactId,
      amount,
      transactionType,
      timeOfTrans,
      transactionDetails,
      billImage,
      transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addGiveTransactionsImplCopyWith<_$addGiveTransactionsImpl> get copyWith =>
      __$$addGiveTransactionsImplCopyWithImpl<_$addGiveTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return addGiveTransactions(
        fromContactId,
        toContactId,
        amount,
        transactionType,
        timeOfTrans,
        transactionDetails,
        billImage,
        transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return addGiveTransactions?.call(
        fromContactId,
        toContactId,
        amount,
        transactionType,
        timeOfTrans,
        transactionDetails,
        billImage,
        transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (addGiveTransactions != null) {
      return addGiveTransactions(
          fromContactId,
          toContactId,
          amount,
          transactionType,
          timeOfTrans,
          transactionDetails,
          billImage,
          transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return addGiveTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return addGiveTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (addGiveTransactions != null) {
      return addGiveTransactions(this);
    }
    return orElse();
  }
}

abstract class addGiveTransactions implements TransactionsEvent {
  const factory addGiveTransactions(
      {required final String fromContactId,
      required final String toContactId,
      required final double amount,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final String? transactionDetails,
      required final File? billImage,
      required final String? transactionId}) = _$addGiveTransactionsImpl;

  String get fromContactId;
  String get toContactId;
  double get amount;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  String? get transactionDetails;
  File? get billImage;
  String? get transactionId;
  @JsonKey(ignore: true)
  _$$addGiveTransactionsImplCopyWith<_$addGiveTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$splittingBalanceAmountImplCopyWith<$Res> {
  factory _$$splittingBalanceAmountImplCopyWith(
          _$splittingBalanceAmountImpl value,
          $Res Function(_$splittingBalanceAmountImpl) then) =
      __$$splittingBalanceAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String primaryContactId,
      String toContactId,
      double splitAmount,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails});
}

/// @nodoc
class __$$splittingBalanceAmountImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$splittingBalanceAmountImpl>
    implements _$$splittingBalanceAmountImplCopyWith<$Res> {
  __$$splittingBalanceAmountImplCopyWithImpl(
      _$splittingBalanceAmountImpl _value,
      $Res Function(_$splittingBalanceAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryContactId = null,
    Object? toContactId = null,
    Object? splitAmount = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_$splittingBalanceAmountImpl(
      primaryContactId: null == primaryContactId
          ? _value.primaryContactId
          : primaryContactId // ignore: cast_nullable_to_non_nullable
              as String,
      toContactId: null == toContactId
          ? _value.toContactId
          : toContactId // ignore: cast_nullable_to_non_nullable
              as String,
      splitAmount: null == splitAmount
          ? _value.splitAmount
          : splitAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      userTransactionId: freezed == userTransactionId
          ? _value.userTransactionId
          : userTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$splittingBalanceAmountImpl implements splittingBalanceAmount {
  const _$splittingBalanceAmountImpl(
      {required this.primaryContactId,
      required this.toContactId,
      required this.splitAmount,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails});

  @override
  final String primaryContactId;
  @override
  final String toContactId;
  @override
  final double splitAmount;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final File? billImage;
  @override
  final String? userTransactionId;
  @override
  final String? transactionDetails;

  @override
  String toString() {
    return 'TransactionsEvent.splittingBalanceAmount(primaryContactId: $primaryContactId, toContactId: $toContactId, splitAmount: $splitAmount, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$splittingBalanceAmountImpl &&
            (identical(other.primaryContactId, primaryContactId) ||
                other.primaryContactId == primaryContactId) &&
            (identical(other.toContactId, toContactId) ||
                other.toContactId == toContactId) &&
            (identical(other.splitAmount, splitAmount) ||
                other.splitAmount == splitAmount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.userTransactionId, userTransactionId) ||
                other.userTransactionId == userTransactionId) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      primaryContactId,
      toContactId,
      splitAmount,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$splittingBalanceAmountImplCopyWith<_$splittingBalanceAmountImpl>
      get copyWith => __$$splittingBalanceAmountImplCopyWithImpl<
          _$splittingBalanceAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return splittingBalanceAmount(
        primaryContactId,
        toContactId,
        splitAmount,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return splittingBalanceAmount?.call(
        primaryContactId,
        toContactId,
        splitAmount,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (splittingBalanceAmount != null) {
      return splittingBalanceAmount(
          primaryContactId,
          toContactId,
          splitAmount,
          transactionType,
          timeOfTrans,
          billImage,
          userTransactionId,
          transactionDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return splittingBalanceAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return splittingBalanceAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (splittingBalanceAmount != null) {
      return splittingBalanceAmount(this);
    }
    return orElse();
  }
}

abstract class splittingBalanceAmount implements TransactionsEvent {
  const factory splittingBalanceAmount(
          {required final String primaryContactId,
          required final String toContactId,
          required final double splitAmount,
          required final TransactionTypes transactionType,
          required final DateTime timeOfTrans,
          required final File? billImage,
          required final String? userTransactionId,
          required final String? transactionDetails}) =
      _$splittingBalanceAmountImpl;

  String get primaryContactId;
  String get toContactId;
  double get splitAmount;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  @JsonKey(ignore: true)
  _$$splittingBalanceAmountImplCopyWith<_$splittingBalanceAmountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editTransactionsImplCopyWith<$Res> {
  factory _$$editTransactionsImplCopyWith(_$editTransactionsImpl value,
          $Res Function(_$editTransactionsImpl) then) =
      __$$editTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String transactionRealId,
      String toId,
      double amount,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? transactionId,
      String? transactionDetails,
      String primaryContactId});
}

/// @nodoc
class __$$editTransactionsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$editTransactionsImpl>
    implements _$$editTransactionsImplCopyWith<$Res> {
  __$$editTransactionsImplCopyWithImpl(_$editTransactionsImpl _value,
      $Res Function(_$editTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionRealId = null,
    Object? toId = null,
    Object? amount = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? transactionId = freezed,
    Object? transactionDetails = freezed,
    Object? primaryContactId = null,
  }) {
    return _then(_$editTransactionsImpl(
      transactionRealId: null == transactionRealId
          ? _value.transactionRealId
          : transactionRealId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      timeOfTrans: null == timeOfTrans
          ? _value.timeOfTrans
          : timeOfTrans // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billImage: freezed == billImage
          ? _value.billImage
          : billImage // ignore: cast_nullable_to_non_nullable
              as File?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContactId: null == primaryContactId
          ? _value.primaryContactId
          : primaryContactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$editTransactionsImpl implements editTransactions {
  const _$editTransactionsImpl(
      {required this.transactionRealId,
      required this.toId,
      required this.amount,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.transactionId,
      required this.transactionDetails,
      required this.primaryContactId});

  @override
  final String transactionRealId;
  @override
  final String toId;
  @override
  final double amount;
  @override
  final TransactionTypes transactionType;
  @override
  final DateTime timeOfTrans;
  @override
  final File? billImage;
  @override
  final String? transactionId;
  @override
  final String? transactionDetails;
  @override
  final String primaryContactId;

  @override
  String toString() {
    return 'TransactionsEvent.editTransactions(transactionRealId: $transactionRealId, toId: $toId, amount: $amount, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, transactionId: $transactionId, transactionDetails: $transactionDetails, primaryContactId: $primaryContactId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editTransactionsImpl &&
            (identical(other.transactionRealId, transactionRealId) ||
                other.transactionRealId == transactionRealId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.timeOfTrans, timeOfTrans) ||
                other.timeOfTrans == timeOfTrans) &&
            (identical(other.billImage, billImage) ||
                other.billImage == billImage) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(other.primaryContactId, primaryContactId) ||
                other.primaryContactId == primaryContactId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionRealId,
      toId,
      amount,
      transactionType,
      timeOfTrans,
      billImage,
      transactionId,
      transactionDetails,
      primaryContactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$editTransactionsImplCopyWith<_$editTransactionsImpl> get copyWith =>
      __$$editTransactionsImplCopyWithImpl<_$editTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return editTransactions(
        transactionRealId,
        toId,
        amount,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId,
        transactionDetails,
        primaryContactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return editTransactions?.call(
        transactionRealId,
        toId,
        amount,
        transactionType,
        timeOfTrans,
        billImage,
        transactionId,
        transactionDetails,
        primaryContactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (editTransactions != null) {
      return editTransactions(
          transactionRealId,
          toId,
          amount,
          transactionType,
          timeOfTrans,
          billImage,
          transactionId,
          transactionDetails,
          primaryContactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return editTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return editTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (editTransactions != null) {
      return editTransactions(this);
    }
    return orElse();
  }
}

abstract class editTransactions implements TransactionsEvent {
  const factory editTransactions(
      {required final String transactionRealId,
      required final String toId,
      required final double amount,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? transactionId,
      required final String? transactionDetails,
      required final String primaryContactId}) = _$editTransactionsImpl;

  String get transactionRealId;
  String get toId;
  double get amount;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get transactionId;
  String? get transactionDetails;
  String get primaryContactId;
  @JsonKey(ignore: true)
  _$$editTransactionsImplCopyWith<_$editTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteTransactionsImplCopyWith<$Res> {
  factory _$$deleteTransactionsImplCopyWith(_$deleteTransactionsImpl value,
          $Res Function(_$deleteTransactionsImpl) then) =
      __$$deleteTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionRealId, String primaryContactId});
}

/// @nodoc
class __$$deleteTransactionsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$deleteTransactionsImpl>
    implements _$$deleteTransactionsImplCopyWith<$Res> {
  __$$deleteTransactionsImplCopyWithImpl(_$deleteTransactionsImpl _value,
      $Res Function(_$deleteTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionRealId = null,
    Object? primaryContactId = null,
  }) {
    return _then(_$deleteTransactionsImpl(
      transactionRealId: null == transactionRealId
          ? _value.transactionRealId
          : transactionRealId // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactId: null == primaryContactId
          ? _value.primaryContactId
          : primaryContactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteTransactionsImpl implements deleteTransactions {
  const _$deleteTransactionsImpl(
      {required this.transactionRealId, required this.primaryContactId});

  @override
  final String transactionRealId;
  @override
  final String primaryContactId;

  @override
  String toString() {
    return 'TransactionsEvent.deleteTransactions(transactionRealId: $transactionRealId, primaryContactId: $primaryContactId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteTransactionsImpl &&
            (identical(other.transactionRealId, transactionRealId) ||
                other.transactionRealId == transactionRealId) &&
            (identical(other.primaryContactId, primaryContactId) ||
                other.primaryContactId == primaryContactId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionRealId, primaryContactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteTransactionsImplCopyWith<_$deleteTransactionsImpl> get copyWith =>
      __$$deleteTransactionsImplCopyWithImpl<_$deleteTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addGetTransctions,
    required TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)
        addBalanceTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)
        addSecondaryPartyPayment,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)
        splitAmounts,
    required TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)
        addGiveTransactions,
    required TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        splittingBalanceAmount,
    required TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)
        editTransactions,
    required TResult Function(String transactionRealId, String primaryContactId)
        deleteTransactions,
  }) {
    return deleteTransactions(transactionRealId, primaryContactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult? Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult? Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult? Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult? Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult? Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
  }) {
    return deleteTransactions?.call(transactionRealId, primaryContactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            bool isPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addGetTransctions,
    TResult Function(
            String? transactionDetails,
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId)?
        addBalanceTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
            bool isSplittedPrimaryTransaction,
            String transactionRealId,
            String splittedTransactionId,
            String primaryContactId,
            String secondaryContactId,
            String payedToId,
            double amountPayed,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails)?
        addSecondaryPartyPayment,
    TResult Function(
            String primaryContactId,
            String toContactId,
            String transactionId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String id)?
        splitAmounts,
    TResult Function(
            String fromContactId,
            String toContactId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            String? transactionDetails,
            File? billImage,
            String? transactionId)?
        addGiveTransactions,
    TResult Function(
            String primaryContactId,
            String toContactId,
            double splitAmount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        splittingBalanceAmount,
    TResult Function(
            String transactionRealId,
            String toId,
            double amount,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? transactionId,
            String? transactionDetails,
            String primaryContactId)?
        editTransactions,
    TResult Function(String transactionRealId, String primaryContactId)?
        deleteTransactions,
    required TResult orElse(),
  }) {
    if (deleteTransactions != null) {
      return deleteTransactions(transactionRealId, primaryContactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addBalanceTransctions value)
        addBalanceTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
    required TResult Function(splitAmounts value) splitAmounts,
    required TResult Function(addGiveTransactions value) addGiveTransactions,
    required TResult Function(splittingBalanceAmount value)
        splittingBalanceAmount,
    required TResult Function(editTransactions value) editTransactions,
    required TResult Function(deleteTransactions value) deleteTransactions,
  }) {
    return deleteTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult? Function(splitAmounts value)? splitAmounts,
    TResult? Function(addGiveTransactions value)? addGiveTransactions,
    TResult? Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult? Function(editTransactions value)? editTransactions,
    TResult? Function(deleteTransactions value)? deleteTransactions,
  }) {
    return deleteTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addBalanceTransctions value)? addBalanceTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    TResult Function(splitAmounts value)? splitAmounts,
    TResult Function(addGiveTransactions value)? addGiveTransactions,
    TResult Function(splittingBalanceAmount value)? splittingBalanceAmount,
    TResult Function(editTransactions value)? editTransactions,
    TResult Function(deleteTransactions value)? deleteTransactions,
    required TResult orElse(),
  }) {
    if (deleteTransactions != null) {
      return deleteTransactions(this);
    }
    return orElse();
  }
}

abstract class deleteTransactions implements TransactionsEvent {
  const factory deleteTransactions(
      {required final String transactionRealId,
      required final String primaryContactId}) = _$deleteTransactionsImpl;

  String get transactionRealId;
  String get primaryContactId;
  @JsonKey(ignore: true)
  _$$deleteTransactionsImplCopyWith<_$deleteTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionInitial,
    required TResult Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)
        displayTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionInitial,
    TResult? Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)?
        displayTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionInitial,
    TResult Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)?
        displayTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(transactionInitial value) transactionInitial,
    required TResult Function(displayTransactions value) displayTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(transactionInitial value)? transactionInitial,
    TResult? Function(displayTransactions value)? displayTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(transactionInitial value)? transactionInitial,
    TResult Function(displayTransactions value)? displayTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$transactionInitialImplCopyWith<$Res> {
  factory _$$transactionInitialImplCopyWith(_$transactionInitialImpl value,
          $Res Function(_$transactionInitialImpl) then) =
      __$$transactionInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$transactionInitialImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$transactionInitialImpl>
    implements _$$transactionInitialImplCopyWith<$Res> {
  __$$transactionInitialImplCopyWithImpl(_$transactionInitialImpl _value,
      $Res Function(_$transactionInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$transactionInitialImpl implements transactionInitial {
  const _$transactionInitialImpl();

  @override
  String toString() {
    return 'TransactionsState.transactionInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$transactionInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionInitial,
    required TResult Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)
        displayTransactions,
  }) {
    return transactionInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionInitial,
    TResult? Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)?
        displayTransactions,
  }) {
    return transactionInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionInitial,
    TResult Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)?
        displayTransactions,
    required TResult orElse(),
  }) {
    if (transactionInitial != null) {
      return transactionInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(transactionInitial value) transactionInitial,
    required TResult Function(displayTransactions value) displayTransactions,
  }) {
    return transactionInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(transactionInitial value)? transactionInitial,
    TResult? Function(displayTransactions value)? displayTransactions,
  }) {
    return transactionInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(transactionInitial value)? transactionInitial,
    TResult Function(displayTransactions value)? displayTransactions,
    required TResult orElse(),
  }) {
    if (transactionInitial != null) {
      return transactionInitial(this);
    }
    return orElse();
  }
}

abstract class transactionInitial implements TransactionsState {
  const factory transactionInitial() = _$transactionInitialImpl;
}

/// @nodoc
abstract class _$$displayTransactionsImplCopyWith<$Res> {
  factory _$$displayTransactionsImplCopyWith(_$displayTransactionsImpl value,
          $Res Function(_$displayTransactionsImpl) then) =
      __$$displayTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PartyAccountDTO? partyAccount,
      List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class __$$displayTransactionsImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$displayTransactionsImpl>
    implements _$$displayTransactionsImplCopyWith<$Res> {
  __$$displayTransactionsImplCopyWithImpl(_$displayTransactionsImpl _value,
      $Res Function(_$displayTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partyAccount = freezed,
    Object? transactionList = null,
  }) {
    return _then(_$displayTransactionsImpl(
      partyAccount: freezed == partyAccount
          ? _value.partyAccount
          : partyAccount // ignore: cast_nullable_to_non_nullable
              as PartyAccountDTO?,
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<NestedSecondaryTransactionsDTO>,
    ));
  }
}

/// @nodoc

class _$displayTransactionsImpl implements displayTransactions {
  const _$displayTransactionsImpl(
      {required this.partyAccount,
      required final List<NestedSecondaryTransactionsDTO> transactionList})
      : _transactionList = transactionList;

  @override
  final PartyAccountDTO? partyAccount;
  final List<NestedSecondaryTransactionsDTO> _transactionList;
  @override
  List<NestedSecondaryTransactionsDTO> get transactionList {
    if (_transactionList is EqualUnmodifiableListView) return _transactionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionList);
  }

  @override
  String toString() {
    return 'TransactionsState.displayTransactions(partyAccount: $partyAccount, transactionList: $transactionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayTransactionsImpl &&
            (identical(other.partyAccount, partyAccount) ||
                other.partyAccount == partyAccount) &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partyAccount,
      const DeepCollectionEquality().hash(_transactionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayTransactionsImplCopyWith<_$displayTransactionsImpl> get copyWith =>
      __$$displayTransactionsImplCopyWithImpl<_$displayTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionInitial,
    required TResult Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)
        displayTransactions,
  }) {
    return displayTransactions(partyAccount, transactionList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionInitial,
    TResult? Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)?
        displayTransactions,
  }) {
    return displayTransactions?.call(partyAccount, transactionList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionInitial,
    TResult Function(PartyAccountDTO? partyAccount,
            List<NestedSecondaryTransactionsDTO> transactionList)?
        displayTransactions,
    required TResult orElse(),
  }) {
    if (displayTransactions != null) {
      return displayTransactions(partyAccount, transactionList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(transactionInitial value) transactionInitial,
    required TResult Function(displayTransactions value) displayTransactions,
  }) {
    return displayTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(transactionInitial value)? transactionInitial,
    TResult? Function(displayTransactions value)? displayTransactions,
  }) {
    return displayTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(transactionInitial value)? transactionInitial,
    TResult Function(displayTransactions value)? displayTransactions,
    required TResult orElse(),
  }) {
    if (displayTransactions != null) {
      return displayTransactions(this);
    }
    return orElse();
  }
}

abstract class displayTransactions implements TransactionsState {
  const factory displayTransactions(
      {required final PartyAccountDTO? partyAccount,
      required final List<NestedSecondaryTransactionsDTO>
          transactionList}) = _$displayTransactionsImpl;

  PartyAccountDTO? get partyAccount;
  List<NestedSecondaryTransactionsDTO> get transactionList;
  @JsonKey(ignore: true)
  _$$displayTransactionsImplCopyWith<_$displayTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
