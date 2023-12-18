// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rolling_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RollingEvent {
  String get ledgerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        addRollingTransactions,
    required TResult Function(String ledgerId) gettingRollingAccountList,
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        rollingRepayments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult? Function(String ledgerId)? gettingRollingAccountList,
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult Function(String ledgerId)? gettingRollingAccountList,
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addRollingTransactions value)
        addRollingTransactions,
    required TResult Function(gettingRollingAccountList value)
        gettingRollingAccountList,
    required TResult Function(rollingRepayments value) rollingRepayments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addRollingTransactions value)? addRollingTransactions,
    TResult? Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult? Function(rollingRepayments value)? rollingRepayments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addRollingTransactions value)? addRollingTransactions,
    TResult Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult Function(rollingRepayments value)? rollingRepayments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RollingEventCopyWith<RollingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RollingEventCopyWith<$Res> {
  factory $RollingEventCopyWith(
          RollingEvent value, $Res Function(RollingEvent) then) =
      _$RollingEventCopyWithImpl<$Res, RollingEvent>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class _$RollingEventCopyWithImpl<$Res, $Val extends RollingEvent>
    implements $RollingEventCopyWith<$Res> {
  _$RollingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_value.copyWith(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$addRollingTransactionsImplCopyWith<$Res>
    implements $RollingEventCopyWith<$Res> {
  factory _$$addRollingTransactionsImplCopyWith(
          _$addRollingTransactionsImpl value,
          $Res Function(_$addRollingTransactionsImpl) then) =
      __$$addRollingTransactionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rollingAccountId,
      String splittingAccountId,
      String splittingPrimaryAccountId,
      double amountRolled,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails,
      String ledgerId});
}

/// @nodoc
class __$$addRollingTransactionsImplCopyWithImpl<$Res>
    extends _$RollingEventCopyWithImpl<$Res, _$addRollingTransactionsImpl>
    implements _$$addRollingTransactionsImplCopyWith<$Res> {
  __$$addRollingTransactionsImplCopyWithImpl(
      _$addRollingTransactionsImpl _value,
      $Res Function(_$addRollingTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rollingAccountId = null,
    Object? splittingAccountId = null,
    Object? splittingPrimaryAccountId = null,
    Object? amountRolled = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
    Object? ledgerId = null,
  }) {
    return _then(_$addRollingTransactionsImpl(
      rollingAccountId: null == rollingAccountId
          ? _value.rollingAccountId
          : rollingAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      splittingAccountId: null == splittingAccountId
          ? _value.splittingAccountId
          : splittingAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      splittingPrimaryAccountId: null == splittingPrimaryAccountId
          ? _value.splittingPrimaryAccountId
          : splittingPrimaryAccountId // ignore: cast_nullable_to_non_nullable
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
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addRollingTransactionsImpl implements addRollingTransactions {
  const _$addRollingTransactionsImpl(
      {required this.rollingAccountId,
      required this.splittingAccountId,
      required this.splittingPrimaryAccountId,
      required this.amountRolled,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails,
      required this.ledgerId});

  @override
  final String rollingAccountId;
  @override
  final String splittingAccountId;
  @override
  final String splittingPrimaryAccountId;
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
  final String ledgerId;

  @override
  String toString() {
    return 'RollingEvent.addRollingTransactions(rollingAccountId: $rollingAccountId, splittingAccountId: $splittingAccountId, splittingPrimaryAccountId: $splittingPrimaryAccountId, amountRolled: $amountRolled, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails, ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addRollingTransactionsImpl &&
            (identical(other.rollingAccountId, rollingAccountId) ||
                other.rollingAccountId == rollingAccountId) &&
            (identical(other.splittingAccountId, splittingAccountId) ||
                other.splittingAccountId == splittingAccountId) &&
            (identical(other.splittingPrimaryAccountId,
                    splittingPrimaryAccountId) ||
                other.splittingPrimaryAccountId == splittingPrimaryAccountId) &&
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
                other.transactionDetails == transactionDetails) &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rollingAccountId,
      splittingAccountId,
      splittingPrimaryAccountId,
      amountRolled,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails,
      ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addRollingTransactionsImplCopyWith<_$addRollingTransactionsImpl>
      get copyWith => __$$addRollingTransactionsImplCopyWithImpl<
          _$addRollingTransactionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        addRollingTransactions,
    required TResult Function(String ledgerId) gettingRollingAccountList,
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        rollingRepayments,
  }) {
    return addRollingTransactions(
        rollingAccountId,
        splittingAccountId,
        splittingPrimaryAccountId,
        amountRolled,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails,
        ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult? Function(String ledgerId)? gettingRollingAccountList,
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
  }) {
    return addRollingTransactions?.call(
        rollingAccountId,
        splittingAccountId,
        splittingPrimaryAccountId,
        amountRolled,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails,
        ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult Function(String ledgerId)? gettingRollingAccountList,
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
    required TResult orElse(),
  }) {
    if (addRollingTransactions != null) {
      return addRollingTransactions(
          rollingAccountId,
          splittingAccountId,
          splittingPrimaryAccountId,
          amountRolled,
          transactionType,
          timeOfTrans,
          billImage,
          userTransactionId,
          transactionDetails,
          ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addRollingTransactions value)
        addRollingTransactions,
    required TResult Function(gettingRollingAccountList value)
        gettingRollingAccountList,
    required TResult Function(rollingRepayments value) rollingRepayments,
  }) {
    return addRollingTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addRollingTransactions value)? addRollingTransactions,
    TResult? Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult? Function(rollingRepayments value)? rollingRepayments,
  }) {
    return addRollingTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addRollingTransactions value)? addRollingTransactions,
    TResult Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult Function(rollingRepayments value)? rollingRepayments,
    required TResult orElse(),
  }) {
    if (addRollingTransactions != null) {
      return addRollingTransactions(this);
    }
    return orElse();
  }
}

abstract class addRollingTransactions implements RollingEvent {
  const factory addRollingTransactions(
      {required final String rollingAccountId,
      required final String splittingAccountId,
      required final String splittingPrimaryAccountId,
      required final double amountRolled,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? userTransactionId,
      required final String? transactionDetails,
      required final String ledgerId}) = _$addRollingTransactionsImpl;

  String get rollingAccountId;
  String get splittingAccountId;
  String get splittingPrimaryAccountId;
  double get amountRolled;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$addRollingTransactionsImplCopyWith<_$addRollingTransactionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$gettingRollingAccountListImplCopyWith<$Res>
    implements $RollingEventCopyWith<$Res> {
  factory _$$gettingRollingAccountListImplCopyWith(
          _$gettingRollingAccountListImpl value,
          $Res Function(_$gettingRollingAccountListImpl) then) =
      __$$gettingRollingAccountListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$gettingRollingAccountListImplCopyWithImpl<$Res>
    extends _$RollingEventCopyWithImpl<$Res, _$gettingRollingAccountListImpl>
    implements _$$gettingRollingAccountListImplCopyWith<$Res> {
  __$$gettingRollingAccountListImplCopyWithImpl(
      _$gettingRollingAccountListImpl _value,
      $Res Function(_$gettingRollingAccountListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$gettingRollingAccountListImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$gettingRollingAccountListImpl implements gettingRollingAccountList {
  const _$gettingRollingAccountListImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'RollingEvent.gettingRollingAccountList(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$gettingRollingAccountListImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$gettingRollingAccountListImplCopyWith<_$gettingRollingAccountListImpl>
      get copyWith => __$$gettingRollingAccountListImplCopyWithImpl<
          _$gettingRollingAccountListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        addRollingTransactions,
    required TResult Function(String ledgerId) gettingRollingAccountList,
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        rollingRepayments,
  }) {
    return gettingRollingAccountList(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult? Function(String ledgerId)? gettingRollingAccountList,
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
  }) {
    return gettingRollingAccountList?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult Function(String ledgerId)? gettingRollingAccountList,
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
    required TResult orElse(),
  }) {
    if (gettingRollingAccountList != null) {
      return gettingRollingAccountList(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addRollingTransactions value)
        addRollingTransactions,
    required TResult Function(gettingRollingAccountList value)
        gettingRollingAccountList,
    required TResult Function(rollingRepayments value) rollingRepayments,
  }) {
    return gettingRollingAccountList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addRollingTransactions value)? addRollingTransactions,
    TResult? Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult? Function(rollingRepayments value)? rollingRepayments,
  }) {
    return gettingRollingAccountList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addRollingTransactions value)? addRollingTransactions,
    TResult Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult Function(rollingRepayments value)? rollingRepayments,
    required TResult orElse(),
  }) {
    if (gettingRollingAccountList != null) {
      return gettingRollingAccountList(this);
    }
    return orElse();
  }
}

abstract class gettingRollingAccountList implements RollingEvent {
  const factory gettingRollingAccountList({required final String ledgerId}) =
      _$gettingRollingAccountListImpl;

  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$gettingRollingAccountListImplCopyWith<_$gettingRollingAccountListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$rollingRepaymentsImplCopyWith<$Res>
    implements $RollingEventCopyWith<$Res> {
  factory _$$rollingRepaymentsImplCopyWith(_$rollingRepaymentsImpl value,
          $Res Function(_$rollingRepaymentsImpl) then) =
      __$$rollingRepaymentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rollingAccountId,
      String splittingAccountId,
      String splittingPrimaryAccountId,
      double amountRepaying,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails,
      String ledgerId});
}

/// @nodoc
class __$$rollingRepaymentsImplCopyWithImpl<$Res>
    extends _$RollingEventCopyWithImpl<$Res, _$rollingRepaymentsImpl>
    implements _$$rollingRepaymentsImplCopyWith<$Res> {
  __$$rollingRepaymentsImplCopyWithImpl(_$rollingRepaymentsImpl _value,
      $Res Function(_$rollingRepaymentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rollingAccountId = null,
    Object? splittingAccountId = null,
    Object? splittingPrimaryAccountId = null,
    Object? amountRepaying = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
    Object? ledgerId = null,
  }) {
    return _then(_$rollingRepaymentsImpl(
      rollingAccountId: null == rollingAccountId
          ? _value.rollingAccountId
          : rollingAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      splittingAccountId: null == splittingAccountId
          ? _value.splittingAccountId
          : splittingAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      splittingPrimaryAccountId: null == splittingPrimaryAccountId
          ? _value.splittingPrimaryAccountId
          : splittingPrimaryAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      amountRepaying: null == amountRepaying
          ? _value.amountRepaying
          : amountRepaying // ignore: cast_nullable_to_non_nullable
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
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$rollingRepaymentsImpl implements rollingRepayments {
  const _$rollingRepaymentsImpl(
      {required this.rollingAccountId,
      required this.splittingAccountId,
      required this.splittingPrimaryAccountId,
      required this.amountRepaying,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails,
      required this.ledgerId});

  @override
  final String rollingAccountId;
  @override
  final String splittingAccountId;
  @override
  final String splittingPrimaryAccountId;
  @override
  final double amountRepaying;
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
  final String ledgerId;

  @override
  String toString() {
    return 'RollingEvent.rollingRepayments(rollingAccountId: $rollingAccountId, splittingAccountId: $splittingAccountId, splittingPrimaryAccountId: $splittingPrimaryAccountId, amountRepaying: $amountRepaying, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails, ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$rollingRepaymentsImpl &&
            (identical(other.rollingAccountId, rollingAccountId) ||
                other.rollingAccountId == rollingAccountId) &&
            (identical(other.splittingAccountId, splittingAccountId) ||
                other.splittingAccountId == splittingAccountId) &&
            (identical(other.splittingPrimaryAccountId,
                    splittingPrimaryAccountId) ||
                other.splittingPrimaryAccountId == splittingPrimaryAccountId) &&
            (identical(other.amountRepaying, amountRepaying) ||
                other.amountRepaying == amountRepaying) &&
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
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rollingAccountId,
      splittingAccountId,
      splittingPrimaryAccountId,
      amountRepaying,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails,
      ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$rollingRepaymentsImplCopyWith<_$rollingRepaymentsImpl> get copyWith =>
      __$$rollingRepaymentsImplCopyWithImpl<_$rollingRepaymentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        addRollingTransactions,
    required TResult Function(String ledgerId) gettingRollingAccountList,
    required TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)
        rollingRepayments,
  }) {
    return rollingRepayments(
        rollingAccountId,
        splittingAccountId,
        splittingPrimaryAccountId,
        amountRepaying,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails,
        ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult? Function(String ledgerId)? gettingRollingAccountList,
    TResult? Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
  }) {
    return rollingRepayments?.call(
        rollingAccountId,
        splittingAccountId,
        splittingPrimaryAccountId,
        amountRepaying,
        transactionType,
        timeOfTrans,
        billImage,
        userTransactionId,
        transactionDetails,
        ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRolled,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        addRollingTransactions,
    TResult Function(String ledgerId)? gettingRollingAccountList,
    TResult Function(
            String rollingAccountId,
            String splittingAccountId,
            String splittingPrimaryAccountId,
            double amountRepaying,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails,
            String ledgerId)?
        rollingRepayments,
    required TResult orElse(),
  }) {
    if (rollingRepayments != null) {
      return rollingRepayments(
          rollingAccountId,
          splittingAccountId,
          splittingPrimaryAccountId,
          amountRepaying,
          transactionType,
          timeOfTrans,
          billImage,
          userTransactionId,
          transactionDetails,
          ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addRollingTransactions value)
        addRollingTransactions,
    required TResult Function(gettingRollingAccountList value)
        gettingRollingAccountList,
    required TResult Function(rollingRepayments value) rollingRepayments,
  }) {
    return rollingRepayments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addRollingTransactions value)? addRollingTransactions,
    TResult? Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult? Function(rollingRepayments value)? rollingRepayments,
  }) {
    return rollingRepayments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addRollingTransactions value)? addRollingTransactions,
    TResult Function(gettingRollingAccountList value)?
        gettingRollingAccountList,
    TResult Function(rollingRepayments value)? rollingRepayments,
    required TResult orElse(),
  }) {
    if (rollingRepayments != null) {
      return rollingRepayments(this);
    }
    return orElse();
  }
}

abstract class rollingRepayments implements RollingEvent {
  const factory rollingRepayments(
      {required final String rollingAccountId,
      required final String splittingAccountId,
      required final String splittingPrimaryAccountId,
      required final double amountRepaying,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? userTransactionId,
      required final String? transactionDetails,
      required final String ledgerId}) = _$rollingRepaymentsImpl;

  String get rollingAccountId;
  String get splittingAccountId;
  String get splittingPrimaryAccountId;
  double get amountRepaying;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$rollingRepaymentsImplCopyWith<_$rollingRepaymentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RollingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rollingInitial,
    required TResult Function(List<RollingAccountsDTO> rollingAccountList)
        displayRollingAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rollingInitial,
    TResult? Function(List<RollingAccountsDTO> rollingAccountList)?
        displayRollingAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rollingInitial,
    TResult Function(List<RollingAccountsDTO> rollingAccountList)?
        displayRollingAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(rollingInitial value) rollingInitial,
    required TResult Function(displayRollingAccounts value)
        displayRollingAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(rollingInitial value)? rollingInitial,
    TResult? Function(displayRollingAccounts value)? displayRollingAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(rollingInitial value)? rollingInitial,
    TResult Function(displayRollingAccounts value)? displayRollingAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RollingStateCopyWith<$Res> {
  factory $RollingStateCopyWith(
          RollingState value, $Res Function(RollingState) then) =
      _$RollingStateCopyWithImpl<$Res, RollingState>;
}

/// @nodoc
class _$RollingStateCopyWithImpl<$Res, $Val extends RollingState>
    implements $RollingStateCopyWith<$Res> {
  _$RollingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$rollingInitialImplCopyWith<$Res> {
  factory _$$rollingInitialImplCopyWith(_$rollingInitialImpl value,
          $Res Function(_$rollingInitialImpl) then) =
      __$$rollingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$rollingInitialImplCopyWithImpl<$Res>
    extends _$RollingStateCopyWithImpl<$Res, _$rollingInitialImpl>
    implements _$$rollingInitialImplCopyWith<$Res> {
  __$$rollingInitialImplCopyWithImpl(
      _$rollingInitialImpl _value, $Res Function(_$rollingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$rollingInitialImpl implements rollingInitial {
  const _$rollingInitialImpl();

  @override
  String toString() {
    return 'RollingState.rollingInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$rollingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rollingInitial,
    required TResult Function(List<RollingAccountsDTO> rollingAccountList)
        displayRollingAccounts,
  }) {
    return rollingInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rollingInitial,
    TResult? Function(List<RollingAccountsDTO> rollingAccountList)?
        displayRollingAccounts,
  }) {
    return rollingInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rollingInitial,
    TResult Function(List<RollingAccountsDTO> rollingAccountList)?
        displayRollingAccounts,
    required TResult orElse(),
  }) {
    if (rollingInitial != null) {
      return rollingInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(rollingInitial value) rollingInitial,
    required TResult Function(displayRollingAccounts value)
        displayRollingAccounts,
  }) {
    return rollingInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(rollingInitial value)? rollingInitial,
    TResult? Function(displayRollingAccounts value)? displayRollingAccounts,
  }) {
    return rollingInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(rollingInitial value)? rollingInitial,
    TResult Function(displayRollingAccounts value)? displayRollingAccounts,
    required TResult orElse(),
  }) {
    if (rollingInitial != null) {
      return rollingInitial(this);
    }
    return orElse();
  }
}

abstract class rollingInitial implements RollingState {
  const factory rollingInitial() = _$rollingInitialImpl;
}

/// @nodoc
abstract class _$$displayRollingAccountsImplCopyWith<$Res> {
  factory _$$displayRollingAccountsImplCopyWith(
          _$displayRollingAccountsImpl value,
          $Res Function(_$displayRollingAccountsImpl) then) =
      __$$displayRollingAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RollingAccountsDTO> rollingAccountList});
}

/// @nodoc
class __$$displayRollingAccountsImplCopyWithImpl<$Res>
    extends _$RollingStateCopyWithImpl<$Res, _$displayRollingAccountsImpl>
    implements _$$displayRollingAccountsImplCopyWith<$Res> {
  __$$displayRollingAccountsImplCopyWithImpl(
      _$displayRollingAccountsImpl _value,
      $Res Function(_$displayRollingAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rollingAccountList = null,
  }) {
    return _then(_$displayRollingAccountsImpl(
      rollingAccountList: null == rollingAccountList
          ? _value._rollingAccountList
          : rollingAccountList // ignore: cast_nullable_to_non_nullable
              as List<RollingAccountsDTO>,
    ));
  }
}

/// @nodoc

class _$displayRollingAccountsImpl implements displayRollingAccounts {
  const _$displayRollingAccountsImpl(
      {required final List<RollingAccountsDTO> rollingAccountList})
      : _rollingAccountList = rollingAccountList;

  final List<RollingAccountsDTO> _rollingAccountList;
  @override
  List<RollingAccountsDTO> get rollingAccountList {
    if (_rollingAccountList is EqualUnmodifiableListView)
      return _rollingAccountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rollingAccountList);
  }

  @override
  String toString() {
    return 'RollingState.displayRollingAccounts(rollingAccountList: $rollingAccountList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayRollingAccountsImpl &&
            const DeepCollectionEquality()
                .equals(other._rollingAccountList, _rollingAccountList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rollingAccountList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayRollingAccountsImplCopyWith<_$displayRollingAccountsImpl>
      get copyWith => __$$displayRollingAccountsImplCopyWithImpl<
          _$displayRollingAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rollingInitial,
    required TResult Function(List<RollingAccountsDTO> rollingAccountList)
        displayRollingAccounts,
  }) {
    return displayRollingAccounts(rollingAccountList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rollingInitial,
    TResult? Function(List<RollingAccountsDTO> rollingAccountList)?
        displayRollingAccounts,
  }) {
    return displayRollingAccounts?.call(rollingAccountList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rollingInitial,
    TResult Function(List<RollingAccountsDTO> rollingAccountList)?
        displayRollingAccounts,
    required TResult orElse(),
  }) {
    if (displayRollingAccounts != null) {
      return displayRollingAccounts(rollingAccountList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(rollingInitial value) rollingInitial,
    required TResult Function(displayRollingAccounts value)
        displayRollingAccounts,
  }) {
    return displayRollingAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(rollingInitial value)? rollingInitial,
    TResult? Function(displayRollingAccounts value)? displayRollingAccounts,
  }) {
    return displayRollingAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(rollingInitial value)? rollingInitial,
    TResult Function(displayRollingAccounts value)? displayRollingAccounts,
    required TResult orElse(),
  }) {
    if (displayRollingAccounts != null) {
      return displayRollingAccounts(this);
    }
    return orElse();
  }
}

abstract class displayRollingAccounts implements RollingState {
  const factory displayRollingAccounts(
          {required final List<RollingAccountsDTO> rollingAccountList}) =
      _$displayRollingAccountsImpl;

  List<RollingAccountsDTO> get rollingAccountList;
  @JsonKey(ignore: true)
  _$$displayRollingAccountsImplCopyWith<_$displayRollingAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
