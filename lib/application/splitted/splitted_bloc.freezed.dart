// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splitted_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplittedEvent {
  String get ledgerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addSplittedTransactions,
    required TResult Function(String ledgerId) getSplittedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addSplittedTransactions,
    TResult? Function(String ledgerId)? getSplittedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addSplittedTransactions,
    TResult Function(String ledgerId)? getSplittedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addSplittedAccount value) addSplittedTransactions,
    required TResult Function(getSplittedList value) getSplittedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSplittedAccount value)? addSplittedTransactions,
    TResult? Function(getSplittedList value)? getSplittedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSplittedAccount value)? addSplittedTransactions,
    TResult Function(getSplittedList value)? getSplittedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplittedEventCopyWith<SplittedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplittedEventCopyWith<$Res> {
  factory $SplittedEventCopyWith(
          SplittedEvent value, $Res Function(SplittedEvent) then) =
      _$SplittedEventCopyWithImpl<$Res, SplittedEvent>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class _$SplittedEventCopyWithImpl<$Res, $Val extends SplittedEvent>
    implements $SplittedEventCopyWith<$Res> {
  _$SplittedEventCopyWithImpl(this._value, this._then);

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
abstract class _$$addSplittedAccountImplCopyWith<$Res>
    implements $SplittedEventCopyWith<$Res> {
  factory _$$addSplittedAccountImplCopyWith(_$addSplittedAccountImpl value,
          $Res Function(_$addSplittedAccountImpl) then) =
      __$$addSplittedAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String splittedAccountId,
      String ledgerId,
      String primaryAccountId,
      double amountSplitted,
      TransactionTypes transactionType,
      DateTime timeOfTrans,
      File? billImage,
      String? userTransactionId,
      String? transactionDetails});
}

/// @nodoc
class __$$addSplittedAccountImplCopyWithImpl<$Res>
    extends _$SplittedEventCopyWithImpl<$Res, _$addSplittedAccountImpl>
    implements _$$addSplittedAccountImplCopyWith<$Res> {
  __$$addSplittedAccountImplCopyWithImpl(_$addSplittedAccountImpl _value,
      $Res Function(_$addSplittedAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splittedAccountId = null,
    Object? ledgerId = null,
    Object? primaryAccountId = null,
    Object? amountSplitted = null,
    Object? transactionType = null,
    Object? timeOfTrans = null,
    Object? billImage = freezed,
    Object? userTransactionId = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_$addSplittedAccountImpl(
      splittedAccountId: null == splittedAccountId
          ? _value.splittedAccountId
          : splittedAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
      primaryAccountId: null == primaryAccountId
          ? _value.primaryAccountId
          : primaryAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      amountSplitted: null == amountSplitted
          ? _value.amountSplitted
          : amountSplitted // ignore: cast_nullable_to_non_nullable
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

class _$addSplittedAccountImpl implements addSplittedAccount {
  const _$addSplittedAccountImpl(
      {required this.splittedAccountId,
      required this.ledgerId,
      required this.primaryAccountId,
      required this.amountSplitted,
      required this.transactionType,
      required this.timeOfTrans,
      required this.billImage,
      required this.userTransactionId,
      required this.transactionDetails});

  @override
  final String splittedAccountId;
  @override
  final String ledgerId;
  @override
  final String primaryAccountId;
  @override
  final double amountSplitted;
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
    return 'SplittedEvent.addSplittedTransactions(splittedAccountId: $splittedAccountId, ledgerId: $ledgerId, primaryAccountId: $primaryAccountId, amountSplitted: $amountSplitted, transactionType: $transactionType, timeOfTrans: $timeOfTrans, billImage: $billImage, userTransactionId: $userTransactionId, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addSplittedAccountImpl &&
            (identical(other.splittedAccountId, splittedAccountId) ||
                other.splittedAccountId == splittedAccountId) &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId) &&
            (identical(other.primaryAccountId, primaryAccountId) ||
                other.primaryAccountId == primaryAccountId) &&
            (identical(other.amountSplitted, amountSplitted) ||
                other.amountSplitted == amountSplitted) &&
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
      splittedAccountId,
      ledgerId,
      primaryAccountId,
      amountSplitted,
      transactionType,
      timeOfTrans,
      billImage,
      userTransactionId,
      transactionDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addSplittedAccountImplCopyWith<_$addSplittedAccountImpl> get copyWith =>
      __$$addSplittedAccountImplCopyWithImpl<_$addSplittedAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addSplittedTransactions,
    required TResult Function(String ledgerId) getSplittedList,
  }) {
    return addSplittedTransactions(
        splittedAccountId,
        ledgerId,
        primaryAccountId,
        amountSplitted,
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
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addSplittedTransactions,
    TResult? Function(String ledgerId)? getSplittedList,
  }) {
    return addSplittedTransactions?.call(
        splittedAccountId,
        ledgerId,
        primaryAccountId,
        amountSplitted,
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
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addSplittedTransactions,
    TResult Function(String ledgerId)? getSplittedList,
    required TResult orElse(),
  }) {
    if (addSplittedTransactions != null) {
      return addSplittedTransactions(
          splittedAccountId,
          ledgerId,
          primaryAccountId,
          amountSplitted,
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
    required TResult Function(addSplittedAccount value) addSplittedTransactions,
    required TResult Function(getSplittedList value) getSplittedList,
  }) {
    return addSplittedTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSplittedAccount value)? addSplittedTransactions,
    TResult? Function(getSplittedList value)? getSplittedList,
  }) {
    return addSplittedTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSplittedAccount value)? addSplittedTransactions,
    TResult Function(getSplittedList value)? getSplittedList,
    required TResult orElse(),
  }) {
    if (addSplittedTransactions != null) {
      return addSplittedTransactions(this);
    }
    return orElse();
  }
}

abstract class addSplittedAccount implements SplittedEvent {
  const factory addSplittedAccount(
      {required final String splittedAccountId,
      required final String ledgerId,
      required final String primaryAccountId,
      required final double amountSplitted,
      required final TransactionTypes transactionType,
      required final DateTime timeOfTrans,
      required final File? billImage,
      required final String? userTransactionId,
      required final String? transactionDetails}) = _$addSplittedAccountImpl;

  String get splittedAccountId;
  @override
  String get ledgerId;
  String get primaryAccountId;
  double get amountSplitted;
  TransactionTypes get transactionType;
  DateTime get timeOfTrans;
  File? get billImage;
  String? get userTransactionId;
  String? get transactionDetails;
  @override
  @JsonKey(ignore: true)
  _$$addSplittedAccountImplCopyWith<_$addSplittedAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSplittedListImplCopyWith<$Res>
    implements $SplittedEventCopyWith<$Res> {
  factory _$$getSplittedListImplCopyWith(_$getSplittedListImpl value,
          $Res Function(_$getSplittedListImpl) then) =
      __$$getSplittedListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$getSplittedListImplCopyWithImpl<$Res>
    extends _$SplittedEventCopyWithImpl<$Res, _$getSplittedListImpl>
    implements _$$getSplittedListImplCopyWith<$Res> {
  __$$getSplittedListImplCopyWithImpl(
      _$getSplittedListImpl _value, $Res Function(_$getSplittedListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$getSplittedListImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getSplittedListImpl implements getSplittedList {
  const _$getSplittedListImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'SplittedEvent.getSplittedList(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSplittedListImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getSplittedListImplCopyWith<_$getSplittedListImpl> get copyWith =>
      __$$getSplittedListImplCopyWithImpl<_$getSplittedListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)
        addSplittedTransactions,
    required TResult Function(String ledgerId) getSplittedList,
  }) {
    return getSplittedList(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addSplittedTransactions,
    TResult? Function(String ledgerId)? getSplittedList,
  }) {
    return getSplittedList?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String splittedAccountId,
            String ledgerId,
            String primaryAccountId,
            double amountSplitted,
            TransactionTypes transactionType,
            DateTime timeOfTrans,
            File? billImage,
            String? userTransactionId,
            String? transactionDetails)?
        addSplittedTransactions,
    TResult Function(String ledgerId)? getSplittedList,
    required TResult orElse(),
  }) {
    if (getSplittedList != null) {
      return getSplittedList(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addSplittedAccount value) addSplittedTransactions,
    required TResult Function(getSplittedList value) getSplittedList,
  }) {
    return getSplittedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSplittedAccount value)? addSplittedTransactions,
    TResult? Function(getSplittedList value)? getSplittedList,
  }) {
    return getSplittedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSplittedAccount value)? addSplittedTransactions,
    TResult Function(getSplittedList value)? getSplittedList,
    required TResult orElse(),
  }) {
    if (getSplittedList != null) {
      return getSplittedList(this);
    }
    return orElse();
  }
}

abstract class getSplittedList implements SplittedEvent {
  const factory getSplittedList({required final String ledgerId}) =
      _$getSplittedListImpl;

  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$getSplittedListImplCopyWith<_$getSplittedListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplittedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splittedInitial,
    required TResult Function(
            List<SplittedAccountsModelDTO> splittedAccountList)
        displaySplittedAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splittedInitial,
    TResult? Function(List<SplittedAccountsModelDTO> splittedAccountList)?
        displaySplittedAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splittedInitial,
    TResult Function(List<SplittedAccountsModelDTO> splittedAccountList)?
        displaySplittedAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(splittedInitial value) splittedInitial,
    required TResult Function(displaySplittedAccounts value)
        displaySplittedAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(splittedInitial value)? splittedInitial,
    TResult? Function(displaySplittedAccounts value)? displaySplittedAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(splittedInitial value)? splittedInitial,
    TResult Function(displaySplittedAccounts value)? displaySplittedAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplittedStateCopyWith<$Res> {
  factory $SplittedStateCopyWith(
          SplittedState value, $Res Function(SplittedState) then) =
      _$SplittedStateCopyWithImpl<$Res, SplittedState>;
}

/// @nodoc
class _$SplittedStateCopyWithImpl<$Res, $Val extends SplittedState>
    implements $SplittedStateCopyWith<$Res> {
  _$SplittedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$splittedInitialImplCopyWith<$Res> {
  factory _$$splittedInitialImplCopyWith(_$splittedInitialImpl value,
          $Res Function(_$splittedInitialImpl) then) =
      __$$splittedInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$splittedInitialImplCopyWithImpl<$Res>
    extends _$SplittedStateCopyWithImpl<$Res, _$splittedInitialImpl>
    implements _$$splittedInitialImplCopyWith<$Res> {
  __$$splittedInitialImplCopyWithImpl(
      _$splittedInitialImpl _value, $Res Function(_$splittedInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$splittedInitialImpl implements splittedInitial {
  const _$splittedInitialImpl();

  @override
  String toString() {
    return 'SplittedState.splittedInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$splittedInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splittedInitial,
    required TResult Function(
            List<SplittedAccountsModelDTO> splittedAccountList)
        displaySplittedAccounts,
  }) {
    return splittedInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splittedInitial,
    TResult? Function(List<SplittedAccountsModelDTO> splittedAccountList)?
        displaySplittedAccounts,
  }) {
    return splittedInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splittedInitial,
    TResult Function(List<SplittedAccountsModelDTO> splittedAccountList)?
        displaySplittedAccounts,
    required TResult orElse(),
  }) {
    if (splittedInitial != null) {
      return splittedInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(splittedInitial value) splittedInitial,
    required TResult Function(displaySplittedAccounts value)
        displaySplittedAccounts,
  }) {
    return splittedInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(splittedInitial value)? splittedInitial,
    TResult? Function(displaySplittedAccounts value)? displaySplittedAccounts,
  }) {
    return splittedInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(splittedInitial value)? splittedInitial,
    TResult Function(displaySplittedAccounts value)? displaySplittedAccounts,
    required TResult orElse(),
  }) {
    if (splittedInitial != null) {
      return splittedInitial(this);
    }
    return orElse();
  }
}

abstract class splittedInitial implements SplittedState {
  const factory splittedInitial() = _$splittedInitialImpl;
}

/// @nodoc
abstract class _$$displaySplittedAccountsImplCopyWith<$Res> {
  factory _$$displaySplittedAccountsImplCopyWith(
          _$displaySplittedAccountsImpl value,
          $Res Function(_$displaySplittedAccountsImpl) then) =
      __$$displaySplittedAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SplittedAccountsModelDTO> splittedAccountList});
}

/// @nodoc
class __$$displaySplittedAccountsImplCopyWithImpl<$Res>
    extends _$SplittedStateCopyWithImpl<$Res, _$displaySplittedAccountsImpl>
    implements _$$displaySplittedAccountsImplCopyWith<$Res> {
  __$$displaySplittedAccountsImplCopyWithImpl(
      _$displaySplittedAccountsImpl _value,
      $Res Function(_$displaySplittedAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splittedAccountList = null,
  }) {
    return _then(_$displaySplittedAccountsImpl(
      splittedAccountList: null == splittedAccountList
          ? _value._splittedAccountList
          : splittedAccountList // ignore: cast_nullable_to_non_nullable
              as List<SplittedAccountsModelDTO>,
    ));
  }
}

/// @nodoc

class _$displaySplittedAccountsImpl implements displaySplittedAccounts {
  const _$displaySplittedAccountsImpl(
      {required final List<SplittedAccountsModelDTO> splittedAccountList})
      : _splittedAccountList = splittedAccountList;

  final List<SplittedAccountsModelDTO> _splittedAccountList;
  @override
  List<SplittedAccountsModelDTO> get splittedAccountList {
    if (_splittedAccountList is EqualUnmodifiableListView)
      return _splittedAccountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_splittedAccountList);
  }

  @override
  String toString() {
    return 'SplittedState.displaySplittedAccounts(splittedAccountList: $splittedAccountList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displaySplittedAccountsImpl &&
            const DeepCollectionEquality()
                .equals(other._splittedAccountList, _splittedAccountList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_splittedAccountList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displaySplittedAccountsImplCopyWith<_$displaySplittedAccountsImpl>
      get copyWith => __$$displaySplittedAccountsImplCopyWithImpl<
          _$displaySplittedAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splittedInitial,
    required TResult Function(
            List<SplittedAccountsModelDTO> splittedAccountList)
        displaySplittedAccounts,
  }) {
    return displaySplittedAccounts(splittedAccountList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splittedInitial,
    TResult? Function(List<SplittedAccountsModelDTO> splittedAccountList)?
        displaySplittedAccounts,
  }) {
    return displaySplittedAccounts?.call(splittedAccountList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splittedInitial,
    TResult Function(List<SplittedAccountsModelDTO> splittedAccountList)?
        displaySplittedAccounts,
    required TResult orElse(),
  }) {
    if (displaySplittedAccounts != null) {
      return displaySplittedAccounts(splittedAccountList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(splittedInitial value) splittedInitial,
    required TResult Function(displaySplittedAccounts value)
        displaySplittedAccounts,
  }) {
    return displaySplittedAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(splittedInitial value)? splittedInitial,
    TResult? Function(displaySplittedAccounts value)? displaySplittedAccounts,
  }) {
    return displaySplittedAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(splittedInitial value)? splittedInitial,
    TResult Function(displaySplittedAccounts value)? displaySplittedAccounts,
    required TResult orElse(),
  }) {
    if (displaySplittedAccounts != null) {
      return displaySplittedAccounts(this);
    }
    return orElse();
  }
}

abstract class displaySplittedAccounts implements SplittedState {
  const factory displaySplittedAccounts(
          {required final List<SplittedAccountsModelDTO> splittedAccountList}) =
      _$displaySplittedAccountsImpl;

  List<SplittedAccountsModelDTO> get splittedAccountList;
  @JsonKey(ignore: true)
  _$$displaySplittedAccountsImplCopyWith<_$displaySplittedAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
