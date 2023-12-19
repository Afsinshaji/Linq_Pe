// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LedgerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerName) addLedgers,
    required TResult Function(String ledgerId) deleteLedgers,
    required TResult Function() getLedgers,
    required TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        ledgerRollingRepayments,
    required TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addLedgerRollingTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerName)? addLedgers,
    TResult? Function(String ledgerId)? deleteLedgers,
    TResult? Function()? getLedgers,
    TResult? Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult? Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerName)? addLedgers,
    TResult Function(String ledgerId)? deleteLedgers,
    TResult Function()? getLedgers,
    TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addLedgers value) addLedgers,
    required TResult Function(deleteLedgers value) deleteLedgers,
    required TResult Function(getLedgers value) getLedgers,
    required TResult Function(ledgerRollingRepayments value)
        ledgerRollingRepayments,
    required TResult Function(addLedgerRollingTransactions value)
        addLedgerRollingTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addLedgers value)? addLedgers,
    TResult? Function(deleteLedgers value)? deleteLedgers,
    TResult? Function(getLedgers value)? getLedgers,
    TResult? Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult? Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addLedgers value)? addLedgers,
    TResult Function(deleteLedgers value)? deleteLedgers,
    TResult Function(getLedgers value)? getLedgers,
    TResult Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerEventCopyWith<$Res> {
  factory $LedgerEventCopyWith(
          LedgerEvent value, $Res Function(LedgerEvent) then) =
      _$LedgerEventCopyWithImpl<$Res, LedgerEvent>;
}

/// @nodoc
class _$LedgerEventCopyWithImpl<$Res, $Val extends LedgerEvent>
    implements $LedgerEventCopyWith<$Res> {
  _$LedgerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addLedgersImplCopyWith<$Res> {
  factory _$$addLedgersImplCopyWith(
          _$addLedgersImpl value, $Res Function(_$addLedgersImpl) then) =
      __$$addLedgersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ledgerName});
}

/// @nodoc
class __$$addLedgersImplCopyWithImpl<$Res>
    extends _$LedgerEventCopyWithImpl<$Res, _$addLedgersImpl>
    implements _$$addLedgersImplCopyWith<$Res> {
  __$$addLedgersImplCopyWithImpl(
      _$addLedgersImpl _value, $Res Function(_$addLedgersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerName = null,
  }) {
    return _then(_$addLedgersImpl(
      ledgerName: null == ledgerName
          ? _value.ledgerName
          : ledgerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addLedgersImpl implements addLedgers {
  const _$addLedgersImpl({required this.ledgerName});

  @override
  final String ledgerName;

  @override
  String toString() {
    return 'LedgerEvent.addLedgers(ledgerName: $ledgerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addLedgersImpl &&
            (identical(other.ledgerName, ledgerName) ||
                other.ledgerName == ledgerName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addLedgersImplCopyWith<_$addLedgersImpl> get copyWith =>
      __$$addLedgersImplCopyWithImpl<_$addLedgersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerName) addLedgers,
    required TResult Function(String ledgerId) deleteLedgers,
    required TResult Function() getLedgers,
    required TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        ledgerRollingRepayments,
    required TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addLedgerRollingTransactions,
  }) {
    return addLedgers(ledgerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerName)? addLedgers,
    TResult? Function(String ledgerId)? deleteLedgers,
    TResult? Function()? getLedgers,
    TResult? Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult? Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
  }) {
    return addLedgers?.call(ledgerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerName)? addLedgers,
    TResult Function(String ledgerId)? deleteLedgers,
    TResult Function()? getLedgers,
    TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (addLedgers != null) {
      return addLedgers(ledgerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addLedgers value) addLedgers,
    required TResult Function(deleteLedgers value) deleteLedgers,
    required TResult Function(getLedgers value) getLedgers,
    required TResult Function(ledgerRollingRepayments value)
        ledgerRollingRepayments,
    required TResult Function(addLedgerRollingTransactions value)
        addLedgerRollingTransactions,
  }) {
    return addLedgers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addLedgers value)? addLedgers,
    TResult? Function(deleteLedgers value)? deleteLedgers,
    TResult? Function(getLedgers value)? getLedgers,
    TResult? Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult? Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
  }) {
    return addLedgers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addLedgers value)? addLedgers,
    TResult Function(deleteLedgers value)? deleteLedgers,
    TResult Function(getLedgers value)? getLedgers,
    TResult Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (addLedgers != null) {
      return addLedgers(this);
    }
    return orElse();
  }
}

abstract class addLedgers implements LedgerEvent {
  const factory addLedgers({required final String ledgerName}) =
      _$addLedgersImpl;

  String get ledgerName;
  @JsonKey(ignore: true)
  _$$addLedgersImplCopyWith<_$addLedgersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteLedgersImplCopyWith<$Res> {
  factory _$$deleteLedgersImplCopyWith(
          _$deleteLedgersImpl value, $Res Function(_$deleteLedgersImpl) then) =
      __$$deleteLedgersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$deleteLedgersImplCopyWithImpl<$Res>
    extends _$LedgerEventCopyWithImpl<$Res, _$deleteLedgersImpl>
    implements _$$deleteLedgersImplCopyWith<$Res> {
  __$$deleteLedgersImplCopyWithImpl(
      _$deleteLedgersImpl _value, $Res Function(_$deleteLedgersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$deleteLedgersImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteLedgersImpl implements deleteLedgers {
  const _$deleteLedgersImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'LedgerEvent.deleteLedgers(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteLedgersImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteLedgersImplCopyWith<_$deleteLedgersImpl> get copyWith =>
      __$$deleteLedgersImplCopyWithImpl<_$deleteLedgersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerName) addLedgers,
    required TResult Function(String ledgerId) deleteLedgers,
    required TResult Function() getLedgers,
    required TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        ledgerRollingRepayments,
    required TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addLedgerRollingTransactions,
  }) {
    return deleteLedgers(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerName)? addLedgers,
    TResult? Function(String ledgerId)? deleteLedgers,
    TResult? Function()? getLedgers,
    TResult? Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult? Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
  }) {
    return deleteLedgers?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerName)? addLedgers,
    TResult Function(String ledgerId)? deleteLedgers,
    TResult Function()? getLedgers,
    TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (deleteLedgers != null) {
      return deleteLedgers(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addLedgers value) addLedgers,
    required TResult Function(deleteLedgers value) deleteLedgers,
    required TResult Function(getLedgers value) getLedgers,
    required TResult Function(ledgerRollingRepayments value)
        ledgerRollingRepayments,
    required TResult Function(addLedgerRollingTransactions value)
        addLedgerRollingTransactions,
  }) {
    return deleteLedgers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addLedgers value)? addLedgers,
    TResult? Function(deleteLedgers value)? deleteLedgers,
    TResult? Function(getLedgers value)? getLedgers,
    TResult? Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult? Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
  }) {
    return deleteLedgers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addLedgers value)? addLedgers,
    TResult Function(deleteLedgers value)? deleteLedgers,
    TResult Function(getLedgers value)? getLedgers,
    TResult Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (deleteLedgers != null) {
      return deleteLedgers(this);
    }
    return orElse();
  }
}

abstract class deleteLedgers implements LedgerEvent {
  const factory deleteLedgers({required final String ledgerId}) =
      _$deleteLedgersImpl;

  String get ledgerId;
  @JsonKey(ignore: true)
  _$$deleteLedgersImplCopyWith<_$deleteLedgersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getLedgersImplCopyWith<$Res> {
  factory _$$getLedgersImplCopyWith(
          _$getLedgersImpl value, $Res Function(_$getLedgersImpl) then) =
      __$$getLedgersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getLedgersImplCopyWithImpl<$Res>
    extends _$LedgerEventCopyWithImpl<$Res, _$getLedgersImpl>
    implements _$$getLedgersImplCopyWith<$Res> {
  __$$getLedgersImplCopyWithImpl(
      _$getLedgersImpl _value, $Res Function(_$getLedgersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getLedgersImpl implements getLedgers {
  const _$getLedgersImpl();

  @override
  String toString() {
    return 'LedgerEvent.getLedgers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getLedgersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerName) addLedgers,
    required TResult Function(String ledgerId) deleteLedgers,
    required TResult Function() getLedgers,
    required TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        ledgerRollingRepayments,
    required TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addLedgerRollingTransactions,
  }) {
    return getLedgers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerName)? addLedgers,
    TResult? Function(String ledgerId)? deleteLedgers,
    TResult? Function()? getLedgers,
    TResult? Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult? Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
  }) {
    return getLedgers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerName)? addLedgers,
    TResult Function(String ledgerId)? deleteLedgers,
    TResult Function()? getLedgers,
    TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (getLedgers != null) {
      return getLedgers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addLedgers value) addLedgers,
    required TResult Function(deleteLedgers value) deleteLedgers,
    required TResult Function(getLedgers value) getLedgers,
    required TResult Function(ledgerRollingRepayments value)
        ledgerRollingRepayments,
    required TResult Function(addLedgerRollingTransactions value)
        addLedgerRollingTransactions,
  }) {
    return getLedgers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addLedgers value)? addLedgers,
    TResult? Function(deleteLedgers value)? deleteLedgers,
    TResult? Function(getLedgers value)? getLedgers,
    TResult? Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult? Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
  }) {
    return getLedgers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addLedgers value)? addLedgers,
    TResult Function(deleteLedgers value)? deleteLedgers,
    TResult Function(getLedgers value)? getLedgers,
    TResult Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (getLedgers != null) {
      return getLedgers(this);
    }
    return orElse();
  }
}

abstract class getLedgers implements LedgerEvent {
  const factory getLedgers() = _$getLedgersImpl;
}

/// @nodoc
abstract class _$$ledgerRollingRepaymentsImplCopyWith<$Res> {
  factory _$$ledgerRollingRepaymentsImplCopyWith(
          _$ledgerRollingRepaymentsImpl value,
          $Res Function(_$ledgerRollingRepaymentsImpl) then) =
      __$$ledgerRollingRepaymentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String rollPayToLedgerId,
      String rollPayFromLedgerId,
      double amountPaying,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails});
}

/// @nodoc
class __$$ledgerRollingRepaymentsImplCopyWithImpl<$Res>
    extends _$LedgerEventCopyWithImpl<$Res, _$ledgerRollingRepaymentsImpl>
    implements _$$ledgerRollingRepaymentsImplCopyWith<$Res> {
  __$$ledgerRollingRepaymentsImplCopyWithImpl(
      _$ledgerRollingRepaymentsImpl _value,
      $Res Function(_$ledgerRollingRepaymentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rollPayToLedgerId = null,
    Object? rollPayFromLedgerId = null,
    Object? amountPaying = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_$ledgerRollingRepaymentsImpl(
      rollPayToLedgerId: null == rollPayToLedgerId
          ? _value.rollPayToLedgerId
          : rollPayToLedgerId // ignore: cast_nullable_to_non_nullable
              as String,
      rollPayFromLedgerId: null == rollPayFromLedgerId
          ? _value.rollPayFromLedgerId
          : rollPayFromLedgerId // ignore: cast_nullable_to_non_nullable
              as String,
      amountPaying: null == amountPaying
          ? _value.amountPaying
          : amountPaying // ignore: cast_nullable_to_non_nullable
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

class _$ledgerRollingRepaymentsImpl implements ledgerRollingRepayments {
  const _$ledgerRollingRepaymentsImpl(
      {required this.rollPayToLedgerId,
      required this.rollPayFromLedgerId,
      required this.amountPaying,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails});

  @override
  final String rollPayToLedgerId;
  @override
  final String rollPayFromLedgerId;
  @override
  final double amountPaying;
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
    return 'LedgerEvent.ledgerRollingRepayments(rollPayToLedgerId: $rollPayToLedgerId, rollPayFromLedgerId: $rollPayFromLedgerId, amountPaying: $amountPaying, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ledgerRollingRepaymentsImpl &&
            (identical(other.rollPayToLedgerId, rollPayToLedgerId) ||
                other.rollPayToLedgerId == rollPayToLedgerId) &&
            (identical(other.rollPayFromLedgerId, rollPayFromLedgerId) ||
                other.rollPayFromLedgerId == rollPayFromLedgerId) &&
            (identical(other.amountPaying, amountPaying) ||
                other.amountPaying == amountPaying) &&
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
      rollPayToLedgerId,
      rollPayFromLedgerId,
      amountPaying,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ledgerRollingRepaymentsImplCopyWith<_$ledgerRollingRepaymentsImpl>
      get copyWith => __$$ledgerRollingRepaymentsImplCopyWithImpl<
          _$ledgerRollingRepaymentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerName) addLedgers,
    required TResult Function(String ledgerId) deleteLedgers,
    required TResult Function() getLedgers,
    required TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        ledgerRollingRepayments,
    required TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addLedgerRollingTransactions,
  }) {
    return ledgerRollingRepayments(
        rollPayToLedgerId,
        rollPayFromLedgerId,
        amountPaying,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerName)? addLedgers,
    TResult? Function(String ledgerId)? deleteLedgers,
    TResult? Function()? getLedgers,
    TResult? Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult? Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
  }) {
    return ledgerRollingRepayments?.call(
        rollPayToLedgerId,
        rollPayFromLedgerId,
        amountPaying,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerName)? addLedgers,
    TResult Function(String ledgerId)? deleteLedgers,
    TResult Function()? getLedgers,
    TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (ledgerRollingRepayments != null) {
      return ledgerRollingRepayments(
          rollPayToLedgerId,
          rollPayFromLedgerId,
          amountPaying,
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
    required TResult Function(addLedgers value) addLedgers,
    required TResult Function(deleteLedgers value) deleteLedgers,
    required TResult Function(getLedgers value) getLedgers,
    required TResult Function(ledgerRollingRepayments value)
        ledgerRollingRepayments,
    required TResult Function(addLedgerRollingTransactions value)
        addLedgerRollingTransactions,
  }) {
    return ledgerRollingRepayments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addLedgers value)? addLedgers,
    TResult? Function(deleteLedgers value)? deleteLedgers,
    TResult? Function(getLedgers value)? getLedgers,
    TResult? Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult? Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
  }) {
    return ledgerRollingRepayments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addLedgers value)? addLedgers,
    TResult Function(deleteLedgers value)? deleteLedgers,
    TResult Function(getLedgers value)? getLedgers,
    TResult Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (ledgerRollingRepayments != null) {
      return ledgerRollingRepayments(this);
    }
    return orElse();
  }
}

abstract class ledgerRollingRepayments implements LedgerEvent {
  const factory ledgerRollingRepayments(
          {required final String rollPayToLedgerId,
          required final String rollPayFromLedgerId,
          required final double amountPaying,
          required final TransactionTypes transactionType,
          required final DateTime timeOfTrans,
          required final File? billImage,
          required final String? userTransactionId,
          required final String? transactionDetails}) =
      _$ledgerRollingRepaymentsImpl;

  String get rollPayToLedgerId;
  String get rollPayFromLedgerId;
  double get amountPaying;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  @JsonKey(ignore: true)
  _$$ledgerRollingRepaymentsImplCopyWith<_$ledgerRollingRepaymentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addLedgerRollingTransactionsImplCopyWith<$Res> {
  factory _$$addLedgerRollingTransactionsImplCopyWith(
          _$addLedgerRollingTransactionsImpl value,
          $Res Function(_$addLedgerRollingTransactionsImpl) then) =
      __$$addLedgerRollingTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String rolledToLedgerId,
      String rolledFromLedgerId,
      double amountRolled,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails});
}

/// @nodoc
class __$$addLedgerRollingTransactionsImplCopyWithImpl<$Res>
    extends _$LedgerEventCopyWithImpl<$Res, _$addLedgerRollingTransactionsImpl>
    implements _$$addLedgerRollingTransactionsImplCopyWith<$Res> {
  __$$addLedgerRollingTransactionsImplCopyWithImpl(
      _$addLedgerRollingTransactionsImpl _value,
      $Res Function(_$addLedgerRollingTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rolledToLedgerId = null,
    Object? rolledFromLedgerId = null,
    Object? amountRolled = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_$addLedgerRollingTransactionsImpl(
      rolledToLedgerId: null == rolledToLedgerId
          ? _value.rolledToLedgerId
          : rolledToLedgerId // ignore: cast_nullable_to_non_nullable
              as String,
      rolledFromLedgerId: null == rolledFromLedgerId
          ? _value.rolledFromLedgerId
          : rolledFromLedgerId // ignore: cast_nullable_to_non_nullable
              as String,
      amountRolled: null == amountRolled
          ? _value.amountRolled
          : amountRolled // ignore: cast_nullable_to_non_nullable
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

class _$addLedgerRollingTransactionsImpl
    implements addLedgerRollingTransactions {
  const _$addLedgerRollingTransactionsImpl(
      {required this.rolledToLedgerId,
      required this.rolledFromLedgerId,
      required this.amountRolled,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails});

  @override
  final String rolledToLedgerId;
  @override
  final String rolledFromLedgerId;
  @override
  final double amountRolled;
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
    return 'LedgerEvent.addLedgerRollingTransactions(rolledToLedgerId: $rolledToLedgerId, rolledFromLedgerId: $rolledFromLedgerId, amountRolled: $amountRolled, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addLedgerRollingTransactionsImpl &&
            (identical(other.rolledToLedgerId, rolledToLedgerId) ||
                other.rolledToLedgerId == rolledToLedgerId) &&
            (identical(other.rolledFromLedgerId, rolledFromLedgerId) ||
                other.rolledFromLedgerId == rolledFromLedgerId) &&
            (identical(other.amountRolled, amountRolled) ||
                other.amountRolled == amountRolled) &&
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
      rolledToLedgerId,
      rolledFromLedgerId,
      amountRolled,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addLedgerRollingTransactionsImplCopyWith<
          _$addLedgerRollingTransactionsImpl>
      get copyWith => __$$addLedgerRollingTransactionsImplCopyWithImpl<
          _$addLedgerRollingTransactionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerName) addLedgers,
    required TResult Function(String ledgerId) deleteLedgers,
    required TResult Function() getLedgers,
    required TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        ledgerRollingRepayments,
    required TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addLedgerRollingTransactions,
  }) {
    return addLedgerRollingTransactions(
        rolledToLedgerId,
        rolledFromLedgerId,
        amountRolled,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerName)? addLedgers,
    TResult? Function(String ledgerId)? deleteLedgers,
    TResult? Function()? getLedgers,
    TResult? Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult? Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
  }) {
    return addLedgerRollingTransactions?.call(
        rolledToLedgerId,
        rolledFromLedgerId,
        amountRolled,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerName)? addLedgers,
    TResult Function(String ledgerId)? deleteLedgers,
    TResult Function()? getLedgers,
    TResult Function(
            String rollPayToLedgerId,
            String rollPayFromLedgerId,
            double amountPaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        ledgerRollingRepayments,
    TResult Function(
            String rolledToLedgerId,
            String rolledFromLedgerId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (addLedgerRollingTransactions != null) {
      return addLedgerRollingTransactions(
          rolledToLedgerId,
          rolledFromLedgerId,
          amountRolled,
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
    required TResult Function(addLedgers value) addLedgers,
    required TResult Function(deleteLedgers value) deleteLedgers,
    required TResult Function(getLedgers value) getLedgers,
    required TResult Function(ledgerRollingRepayments value)
        ledgerRollingRepayments,
    required TResult Function(addLedgerRollingTransactions value)
        addLedgerRollingTransactions,
  }) {
    return addLedgerRollingTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addLedgers value)? addLedgers,
    TResult? Function(deleteLedgers value)? deleteLedgers,
    TResult? Function(getLedgers value)? getLedgers,
    TResult? Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult? Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
  }) {
    return addLedgerRollingTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addLedgers value)? addLedgers,
    TResult Function(deleteLedgers value)? deleteLedgers,
    TResult Function(getLedgers value)? getLedgers,
    TResult Function(ledgerRollingRepayments value)? ledgerRollingRepayments,
    TResult Function(addLedgerRollingTransactions value)?
        addLedgerRollingTransactions,
    required TResult orElse(),
  }) {
    if (addLedgerRollingTransactions != null) {
      return addLedgerRollingTransactions(this);
    }
    return orElse();
  }
}

abstract class addLedgerRollingTransactions implements LedgerEvent {
  const factory addLedgerRollingTransactions(
          {required final String rolledToLedgerId,
          required final String rolledFromLedgerId,
          required final double amountRolled,
          required final TransactionTypes transactionType,
          required final DateTime timeOfTrans,
          required final File? billImage,
          required final String? userTransactionId,
          required final String? transactionDetails}) =
      _$addLedgerRollingTransactionsImpl;

  String get rolledToLedgerId;
  String get rolledFromLedgerId;
  double get amountRolled;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  @JsonKey(ignore: true)
  _$$addLedgerRollingTransactionsImplCopyWith<
          _$addLedgerRollingTransactionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LedgerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ledgerInitial,
    required TResult Function(List<LedgerDTO> ledgerList) displayLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ledgerInitial,
    TResult? Function(List<LedgerDTO> ledgerList)? displayLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ledgerInitial,
    TResult Function(List<LedgerDTO> ledgerList)? displayLedgers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ledgerInitial value) ledgerInitial,
    required TResult Function(displayLedgers value) displayLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ledgerInitial value)? ledgerInitial,
    TResult? Function(displayLedgers value)? displayLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ledgerInitial value)? ledgerInitial,
    TResult Function(displayLedgers value)? displayLedgers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerStateCopyWith<$Res> {
  factory $LedgerStateCopyWith(
          LedgerState value, $Res Function(LedgerState) then) =
      _$LedgerStateCopyWithImpl<$Res, LedgerState>;
}

/// @nodoc
class _$LedgerStateCopyWithImpl<$Res, $Val extends LedgerState>
    implements $LedgerStateCopyWith<$Res> {
  _$LedgerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ledgerInitialImplCopyWith<$Res> {
  factory _$$ledgerInitialImplCopyWith(
          _$ledgerInitialImpl value, $Res Function(_$ledgerInitialImpl) then) =
      __$$ledgerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ledgerInitialImplCopyWithImpl<$Res>
    extends _$LedgerStateCopyWithImpl<$Res, _$ledgerInitialImpl>
    implements _$$ledgerInitialImplCopyWith<$Res> {
  __$$ledgerInitialImplCopyWithImpl(
      _$ledgerInitialImpl _value, $Res Function(_$ledgerInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ledgerInitialImpl implements ledgerInitial {
  const _$ledgerInitialImpl();

  @override
  String toString() {
    return 'LedgerState.ledgerInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ledgerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ledgerInitial,
    required TResult Function(List<LedgerDTO> ledgerList) displayLedgers,
  }) {
    return ledgerInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ledgerInitial,
    TResult? Function(List<LedgerDTO> ledgerList)? displayLedgers,
  }) {
    return ledgerInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ledgerInitial,
    TResult Function(List<LedgerDTO> ledgerList)? displayLedgers,
    required TResult orElse(),
  }) {
    if (ledgerInitial != null) {
      return ledgerInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ledgerInitial value) ledgerInitial,
    required TResult Function(displayLedgers value) displayLedgers,
  }) {
    return ledgerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ledgerInitial value)? ledgerInitial,
    TResult? Function(displayLedgers value)? displayLedgers,
  }) {
    return ledgerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ledgerInitial value)? ledgerInitial,
    TResult Function(displayLedgers value)? displayLedgers,
    required TResult orElse(),
  }) {
    if (ledgerInitial != null) {
      return ledgerInitial(this);
    }
    return orElse();
  }
}

abstract class ledgerInitial implements LedgerState {
  const factory ledgerInitial() = _$ledgerInitialImpl;
}

/// @nodoc
abstract class _$$displayLedgersImplCopyWith<$Res> {
  factory _$$displayLedgersImplCopyWith(_$displayLedgersImpl value,
          $Res Function(_$displayLedgersImpl) then) =
      __$$displayLedgersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LedgerDTO> ledgerList});
}

/// @nodoc
class __$$displayLedgersImplCopyWithImpl<$Res>
    extends _$LedgerStateCopyWithImpl<$Res, _$displayLedgersImpl>
    implements _$$displayLedgersImplCopyWith<$Res> {
  __$$displayLedgersImplCopyWithImpl(
      _$displayLedgersImpl _value, $Res Function(_$displayLedgersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerList = null,
  }) {
    return _then(_$displayLedgersImpl(
      ledgerList: null == ledgerList
          ? _value._ledgerList
          : ledgerList // ignore: cast_nullable_to_non_nullable
              as List<LedgerDTO>,
    ));
  }
}

/// @nodoc

class _$displayLedgersImpl implements displayLedgers {
  const _$displayLedgersImpl({required final List<LedgerDTO> ledgerList})
      : _ledgerList = ledgerList;

  final List<LedgerDTO> _ledgerList;
  @override
  List<LedgerDTO> get ledgerList {
    if (_ledgerList is EqualUnmodifiableListView) return _ledgerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ledgerList);
  }

  @override
  String toString() {
    return 'LedgerState.displayLedgers(ledgerList: $ledgerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayLedgersImpl &&
            const DeepCollectionEquality()
                .equals(other._ledgerList, _ledgerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ledgerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayLedgersImplCopyWith<_$displayLedgersImpl> get copyWith =>
      __$$displayLedgersImplCopyWithImpl<_$displayLedgersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ledgerInitial,
    required TResult Function(List<LedgerDTO> ledgerList) displayLedgers,
  }) {
    return displayLedgers(ledgerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ledgerInitial,
    TResult? Function(List<LedgerDTO> ledgerList)? displayLedgers,
  }) {
    return displayLedgers?.call(ledgerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ledgerInitial,
    TResult Function(List<LedgerDTO> ledgerList)? displayLedgers,
    required TResult orElse(),
  }) {
    if (displayLedgers != null) {
      return displayLedgers(ledgerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ledgerInitial value) ledgerInitial,
    required TResult Function(displayLedgers value) displayLedgers,
  }) {
    return displayLedgers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ledgerInitial value)? ledgerInitial,
    TResult? Function(displayLedgers value)? displayLedgers,
  }) {
    return displayLedgers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ledgerInitial value)? ledgerInitial,
    TResult Function(displayLedgers value)? displayLedgers,
    required TResult orElse(),
  }) {
    if (displayLedgers != null) {
      return displayLedgers(this);
    }
    return orElse();
  }
}

abstract class displayLedgers implements LedgerState {
  const factory displayLedgers({required final List<LedgerDTO> ledgerList}) =
      _$displayLedgersImpl;

  List<LedgerDTO> get ledgerList;
  @JsonKey(ignore: true)
  _$$displayLedgersImplCopyWith<_$displayLedgersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
