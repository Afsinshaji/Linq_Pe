// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseEvent {
  String get ledgerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) getExpenseAccountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? getExpenseAccountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? getExpenseAccountList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getExpenseAccountList value)
        getExpenseAccountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getExpenseAccountList value)? getExpenseAccountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getExpenseAccountList value)? getExpenseAccountList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseEventCopyWith<ExpenseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEventCopyWith<$Res> {
  factory $ExpenseEventCopyWith(
          ExpenseEvent value, $Res Function(ExpenseEvent) then) =
      _$ExpenseEventCopyWithImpl<$Res, ExpenseEvent>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class _$ExpenseEventCopyWithImpl<$Res, $Val extends ExpenseEvent>
    implements $ExpenseEventCopyWith<$Res> {
  _$ExpenseEventCopyWithImpl(this._value, this._then);

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
abstract class _$$getExpenseAccountListImplCopyWith<$Res>
    implements $ExpenseEventCopyWith<$Res> {
  factory _$$getExpenseAccountListImplCopyWith(
          _$getExpenseAccountListImpl value,
          $Res Function(_$getExpenseAccountListImpl) then) =
      __$$getExpenseAccountListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$getExpenseAccountListImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$getExpenseAccountListImpl>
    implements _$$getExpenseAccountListImplCopyWith<$Res> {
  __$$getExpenseAccountListImplCopyWithImpl(_$getExpenseAccountListImpl _value,
      $Res Function(_$getExpenseAccountListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$getExpenseAccountListImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getExpenseAccountListImpl implements getExpenseAccountList {
  const _$getExpenseAccountListImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'ExpenseEvent.getExpenseAccountList(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getExpenseAccountListImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getExpenseAccountListImplCopyWith<_$getExpenseAccountListImpl>
      get copyWith => __$$getExpenseAccountListImplCopyWithImpl<
          _$getExpenseAccountListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) getExpenseAccountList,
  }) {
    return getExpenseAccountList(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? getExpenseAccountList,
  }) {
    return getExpenseAccountList?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? getExpenseAccountList,
    required TResult orElse(),
  }) {
    if (getExpenseAccountList != null) {
      return getExpenseAccountList(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getExpenseAccountList value)
        getExpenseAccountList,
  }) {
    return getExpenseAccountList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getExpenseAccountList value)? getExpenseAccountList,
  }) {
    return getExpenseAccountList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getExpenseAccountList value)? getExpenseAccountList,
    required TResult orElse(),
  }) {
    if (getExpenseAccountList != null) {
      return getExpenseAccountList(this);
    }
    return orElse();
  }
}

abstract class getExpenseAccountList implements ExpenseEvent {
  const factory getExpenseAccountList({required final String ledgerId}) =
      _$getExpenseAccountListImpl;

  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$getExpenseAccountListImplCopyWith<_$getExpenseAccountListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function(List<ContactsDTO> expenseAccountsList)
        displayExpenseAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function(List<ContactsDTO> expenseAccountsList)?
        displayExpenseAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function(List<ContactsDTO> expenseAccountsList)?
        displayExpenseAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(displayExpenseAccounts value)
        displayExpenseAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(displayExpenseAccounts value)? displayExpenseAccounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(displayExpenseAccounts value)? displayExpenseAccounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$expenseInitialImplCopyWith<$Res> {
  factory _$$expenseInitialImplCopyWith(_$expenseInitialImpl value,
          $Res Function(_$expenseInitialImpl) then) =
      __$$expenseInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$expenseInitialImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$expenseInitialImpl>
    implements _$$expenseInitialImplCopyWith<$Res> {
  __$$expenseInitialImplCopyWithImpl(
      _$expenseInitialImpl _value, $Res Function(_$expenseInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$expenseInitialImpl implements expenseInitial {
  const _$expenseInitialImpl();

  @override
  String toString() {
    return 'ExpenseState.expenseInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$expenseInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function(List<ContactsDTO> expenseAccountsList)
        displayExpenseAccounts,
  }) {
    return expenseInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function(List<ContactsDTO> expenseAccountsList)?
        displayExpenseAccounts,
  }) {
    return expenseInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function(List<ContactsDTO> expenseAccountsList)?
        displayExpenseAccounts,
    required TResult orElse(),
  }) {
    if (expenseInitial != null) {
      return expenseInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(displayExpenseAccounts value)
        displayExpenseAccounts,
  }) {
    return expenseInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(displayExpenseAccounts value)? displayExpenseAccounts,
  }) {
    return expenseInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(displayExpenseAccounts value)? displayExpenseAccounts,
    required TResult orElse(),
  }) {
    if (expenseInitial != null) {
      return expenseInitial(this);
    }
    return orElse();
  }
}

abstract class expenseInitial implements ExpenseState {
  const factory expenseInitial() = _$expenseInitialImpl;
}

/// @nodoc
abstract class _$$displayExpenseAccountsImplCopyWith<$Res> {
  factory _$$displayExpenseAccountsImplCopyWith(
          _$displayExpenseAccountsImpl value,
          $Res Function(_$displayExpenseAccountsImpl) then) =
      __$$displayExpenseAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactsDTO> expenseAccountsList});
}

/// @nodoc
class __$$displayExpenseAccountsImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$displayExpenseAccountsImpl>
    implements _$$displayExpenseAccountsImplCopyWith<$Res> {
  __$$displayExpenseAccountsImplCopyWithImpl(
      _$displayExpenseAccountsImpl _value,
      $Res Function(_$displayExpenseAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseAccountsList = null,
  }) {
    return _then(_$displayExpenseAccountsImpl(
      expenseAccountsList: null == expenseAccountsList
          ? _value._expenseAccountsList
          : expenseAccountsList // ignore: cast_nullable_to_non_nullable
              as List<ContactsDTO>,
    ));
  }
}

/// @nodoc

class _$displayExpenseAccountsImpl implements displayExpenseAccounts {
  const _$displayExpenseAccountsImpl(
      {required final List<ContactsDTO> expenseAccountsList})
      : _expenseAccountsList = expenseAccountsList;

  final List<ContactsDTO> _expenseAccountsList;
  @override
  List<ContactsDTO> get expenseAccountsList {
    if (_expenseAccountsList is EqualUnmodifiableListView)
      return _expenseAccountsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseAccountsList);
  }

  @override
  String toString() {
    return 'ExpenseState.displayExpenseAccounts(expenseAccountsList: $expenseAccountsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayExpenseAccountsImpl &&
            const DeepCollectionEquality()
                .equals(other._expenseAccountsList, _expenseAccountsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expenseAccountsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayExpenseAccountsImplCopyWith<_$displayExpenseAccountsImpl>
      get copyWith => __$$displayExpenseAccountsImplCopyWithImpl<
          _$displayExpenseAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function(List<ContactsDTO> expenseAccountsList)
        displayExpenseAccounts,
  }) {
    return displayExpenseAccounts(expenseAccountsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function(List<ContactsDTO> expenseAccountsList)?
        displayExpenseAccounts,
  }) {
    return displayExpenseAccounts?.call(expenseAccountsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function(List<ContactsDTO> expenseAccountsList)?
        displayExpenseAccounts,
    required TResult orElse(),
  }) {
    if (displayExpenseAccounts != null) {
      return displayExpenseAccounts(expenseAccountsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(displayExpenseAccounts value)
        displayExpenseAccounts,
  }) {
    return displayExpenseAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(displayExpenseAccounts value)? displayExpenseAccounts,
  }) {
    return displayExpenseAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(displayExpenseAccounts value)? displayExpenseAccounts,
    required TResult orElse(),
  }) {
    if (displayExpenseAccounts != null) {
      return displayExpenseAccounts(this);
    }
    return orElse();
  }
}

abstract class displayExpenseAccounts implements ExpenseState {
  const factory displayExpenseAccounts(
          {required final List<ContactsDTO> expenseAccountsList}) =
      _$displayExpenseAccountsImpl;

  List<ContactsDTO> get expenseAccountsList;
  @JsonKey(ignore: true)
  _$$displayExpenseAccountsImplCopyWith<_$displayExpenseAccountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
