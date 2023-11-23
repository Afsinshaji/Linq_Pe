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
        addGiveTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
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
        addGiveTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
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
        addGiveTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addGiveTransctions value) addGiveTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addGiveTransctions value)? addGiveTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addGiveTransctions value)? addGiveTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
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
        addGiveTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
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
        addGiveTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
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
        addGiveTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
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
    required TResult Function(addGiveTransctions value) addGiveTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
  }) {
    return addGetTransctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addGiveTransctions value)? addGiveTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
  }) {
    return addGetTransctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addGiveTransctions value)? addGiveTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
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
abstract class _$$addGiveTransctionsImplCopyWith<$Res> {
  factory _$$addGiveTransctionsImplCopyWith(_$addGiveTransctionsImpl value,
          $Res Function(_$addGiveTransctionsImpl) then) =
      __$$addGiveTransctionsImplCopyWithImpl<$Res>;
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
class __$$addGiveTransctionsImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$addGiveTransctionsImpl>
    implements _$$addGiveTransctionsImplCopyWith<$Res> {
  __$$addGiveTransctionsImplCopyWithImpl(_$addGiveTransctionsImpl _value,
      $Res Function(_$addGiveTransctionsImpl) _then)
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
    return _then(_$addGiveTransctionsImpl(
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

class _$addGiveTransctionsImpl implements addGiveTransctions {
  const _$addGiveTransctionsImpl(
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
    return 'TransactionsEvent.addGiveTransctions(transactionDetails: $transactionDetails, fromContactId: $fromContactId, toContactId: $toContactId, amount: $amount, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addGiveTransctionsImpl &&
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
  _$$addGiveTransctionsImplCopyWith<_$addGiveTransctionsImpl> get copyWith =>
      __$$addGiveTransctionsImplCopyWithImpl<_$addGiveTransctionsImpl>(
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
        addGiveTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
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
  }) {
    return addGiveTransctions(transactionDetails, fromContactId, toContactId,
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
        addGiveTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
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
  }) {
    return addGiveTransctions?.call(
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
        addGiveTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
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
    required TResult orElse(),
  }) {
    if (addGiveTransctions != null) {
      return addGiveTransctions(transactionDetails, fromContactId, toContactId,
          amount, transactionType, timeOfTrans, billImage, transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addGetTransctions value) addGetTransctions,
    required TResult Function(addGiveTransctions value) addGiveTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
  }) {
    return addGiveTransctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addGiveTransctions value)? addGiveTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
  }) {
    return addGiveTransctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addGiveTransctions value)? addGiveTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
    required TResult orElse(),
  }) {
    if (addGiveTransctions != null) {
      return addGiveTransctions(this);
    }
    return orElse();
  }
}

abstract class addGiveTransctions implements TransactionsEvent {
  const factory addGiveTransctions(
      {required final String? transactionDetails,
      required final String fromContactId,
      required final String toContactId,
      required final double amount,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? transactionId}) = _$addGiveTransctionsImpl;

  String? get transactionDetails;
  String get fromContactId;
  String get toContactId;
  double get amount;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get transactionId;
  @JsonKey(ignore: true)
  _$$addGiveTransctionsImplCopyWith<_$addGiveTransctionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
        addGiveTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
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
        addGiveTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
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
        addGiveTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
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
    required TResult Function(addGiveTransctions value) addGiveTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
  }) {
    return getTransactionsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addGiveTransctions value)? addGiveTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
  }) {
    return getTransactionsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addGiveTransctions value)? addGiveTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
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
      {String primaryContactId,
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
      {required this.primaryContactId,
      required this.secondaryContactId,
      required this.payedToId,
      required this.amountPayed,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.transactionId,
      required this.transactionDetails});

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
    return 'TransactionsEvent.addSecondaryPartyPayment(primaryContactId: $primaryContactId, secondaryContactId: $secondaryContactId, payedToId: $payedToId, amountPayed: $amountPayed, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, transactionId: $transactionId, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addSecondaryPartyPaymentImpl &&
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
        addGiveTransctions,
    required TResult Function(String contactId) getTransactionsList,
    required TResult Function(
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
  }) {
    return addSecondaryPartyPayment(
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
        addGiveTransctions,
    TResult? Function(String contactId)? getTransactionsList,
    TResult? Function(
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
  }) {
    return addSecondaryPartyPayment?.call(
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
        addGiveTransctions,
    TResult Function(String contactId)? getTransactionsList,
    TResult Function(
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
    required TResult orElse(),
  }) {
    if (addSecondaryPartyPayment != null) {
      return addSecondaryPartyPayment(
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
    required TResult Function(addGiveTransctions value) addGiveTransctions,
    required TResult Function(getTransactionsList value) getTransactionsList,
    required TResult Function(addSecondaryPartyPayment value)
        addSecondaryPartyPayment,
  }) {
    return addSecondaryPartyPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addGetTransctions value)? addGetTransctions,
    TResult? Function(addGiveTransctions value)? addGiveTransctions,
    TResult? Function(getTransactionsList value)? getTransactionsList,
    TResult? Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
  }) {
    return addSecondaryPartyPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addGetTransctions value)? addGetTransctions,
    TResult Function(addGiveTransctions value)? addGiveTransctions,
    TResult Function(getTransactionsList value)? getTransactionsList,
    TResult Function(addSecondaryPartyPayment value)? addSecondaryPartyPayment,
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
          {required final String primaryContactId,
          required final String secondaryContactId,
          required final String payedToId,
          required final double amountPayed,
          required final TransactionTypes transactionType,
          required final DateTime timeOfTrans,
          required final File? billImage,
          required final String? transactionId,
          required final String? transactionDetails}) =
      _$addSecondaryPartyPaymentImpl;

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
mixin _$TransactionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionInitial,
    required TResult Function(TransactionsDTO? transaction) displayTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionInitial,
    TResult? Function(TransactionsDTO? transaction)? displayTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionInitial,
    TResult Function(TransactionsDTO? transaction)? displayTransactions,
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
    required TResult Function(TransactionsDTO? transaction) displayTransactions,
  }) {
    return transactionInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionInitial,
    TResult? Function(TransactionsDTO? transaction)? displayTransactions,
  }) {
    return transactionInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionInitial,
    TResult Function(TransactionsDTO? transaction)? displayTransactions,
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
  $Res call({TransactionsDTO? transaction});
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
    Object? transaction = freezed,
  }) {
    return _then(_$displayTransactionsImpl(
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionsDTO?,
    ));
  }
}

/// @nodoc

class _$displayTransactionsImpl implements displayTransactions {
  const _$displayTransactionsImpl({required this.transaction});

  @override
  final TransactionsDTO? transaction;

  @override
  String toString() {
    return 'TransactionsState.displayTransactions(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayTransactionsImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

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
    required TResult Function(TransactionsDTO? transaction) displayTransactions,
  }) {
    return displayTransactions(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionInitial,
    TResult? Function(TransactionsDTO? transaction)? displayTransactions,
  }) {
    return displayTransactions?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionInitial,
    TResult Function(TransactionsDTO? transaction)? displayTransactions,
    required TResult orElse(),
  }) {
    if (displayTransactions != null) {
      return displayTransactions(transaction);
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
          {required final TransactionsDTO? transaction}) =
      _$displayTransactionsImpl;

  TransactionsDTO? get transaction;
  @JsonKey(ignore: true)
  _$$displayTransactionsImplCopyWith<_$displayTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
