// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId) addCustomers,
    required TResult Function() getCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId)? addCustomers,
    TResult? Function()? getCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId)? addCustomers,
    TResult Function()? getCustomerList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addCustomersImplCopyWith<$Res> {
  factory _$$addCustomersImplCopyWith(
          _$addCustomersImpl value, $Res Function(_$addCustomersImpl) then) =
      __$$addCustomersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactId});
}

/// @nodoc
class __$$addCustomersImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$addCustomersImpl>
    implements _$$addCustomersImplCopyWith<$Res> {
  __$$addCustomersImplCopyWithImpl(
      _$addCustomersImpl _value, $Res Function(_$addCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
  }) {
    return _then(_$addCustomersImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addCustomersImpl implements addCustomers {
  const _$addCustomersImpl({required this.contactId});

  @override
  final String contactId;

  @override
  String toString() {
    return 'CustomerEvent.addCustomers(contactId: $contactId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addCustomersImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addCustomersImplCopyWith<_$addCustomersImpl> get copyWith =>
      __$$addCustomersImplCopyWithImpl<_$addCustomersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId) addCustomers,
    required TResult Function() getCustomerList,
  }) {
    return addCustomers(contactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId)? addCustomers,
    TResult? Function()? getCustomerList,
  }) {
    return addCustomers?.call(contactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId)? addCustomers,
    TResult Function()? getCustomerList,
    required TResult orElse(),
  }) {
    if (addCustomers != null) {
      return addCustomers(contactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
  }) {
    return addCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
  }) {
    return addCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    required TResult orElse(),
  }) {
    if (addCustomers != null) {
      return addCustomers(this);
    }
    return orElse();
  }
}

abstract class addCustomers implements CustomerEvent {
  const factory addCustomers({required final String contactId}) =
      _$addCustomersImpl;

  String get contactId;
  @JsonKey(ignore: true)
  _$$addCustomersImplCopyWith<_$addCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCustomerListImplCopyWith<$Res> {
  factory _$$getCustomerListImplCopyWith(_$getCustomerListImpl value,
          $Res Function(_$getCustomerListImpl) then) =
      __$$getCustomerListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getCustomerListImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$getCustomerListImpl>
    implements _$$getCustomerListImplCopyWith<$Res> {
  __$$getCustomerListImplCopyWithImpl(
      _$getCustomerListImpl _value, $Res Function(_$getCustomerListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getCustomerListImpl implements getCustomerList {
  const _$getCustomerListImpl();

  @override
  String toString() {
    return 'CustomerEvent.getCustomerList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getCustomerListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId) addCustomers,
    required TResult Function() getCustomerList,
  }) {
    return getCustomerList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId)? addCustomers,
    TResult? Function()? getCustomerList,
  }) {
    return getCustomerList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId)? addCustomers,
    TResult Function()? getCustomerList,
    required TResult orElse(),
  }) {
    if (getCustomerList != null) {
      return getCustomerList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
  }) {
    return getCustomerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
  }) {
    return getCustomerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    required TResult orElse(),
  }) {
    if (getCustomerList != null) {
      return getCustomerList(this);
    }
    return orElse();
  }
}

abstract class getCustomerList implements CustomerEvent {
  const factory getCustomerList() = _$getCustomerListImpl;
}

/// @nodoc
mixin _$CustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerInitial,
    required TResult Function(List<ContactsDTO> customers) displayCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? customerInitial,
    TResult? Function(List<ContactsDTO> customers)? displayCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerInitial,
    TResult Function(List<ContactsDTO> customers)? displayCustomerList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(customerInitial value) customerInitial,
    required TResult Function(displayCustomerList value) displayCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(customerInitial value)? customerInitial,
    TResult? Function(displayCustomerList value)? displayCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(customerInitial value)? customerInitial,
    TResult Function(displayCustomerList value)? displayCustomerList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$customerInitialImplCopyWith<$Res> {
  factory _$$customerInitialImplCopyWith(_$customerInitialImpl value,
          $Res Function(_$customerInitialImpl) then) =
      __$$customerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$customerInitialImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$customerInitialImpl>
    implements _$$customerInitialImplCopyWith<$Res> {
  __$$customerInitialImplCopyWithImpl(
      _$customerInitialImpl _value, $Res Function(_$customerInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$customerInitialImpl implements customerInitial {
  const _$customerInitialImpl();

  @override
  String toString() {
    return 'CustomerState.customerInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$customerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerInitial,
    required TResult Function(List<ContactsDTO> customers) displayCustomerList,
  }) {
    return customerInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? customerInitial,
    TResult? Function(List<ContactsDTO> customers)? displayCustomerList,
  }) {
    return customerInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerInitial,
    TResult Function(List<ContactsDTO> customers)? displayCustomerList,
    required TResult orElse(),
  }) {
    if (customerInitial != null) {
      return customerInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(customerInitial value) customerInitial,
    required TResult Function(displayCustomerList value) displayCustomerList,
  }) {
    return customerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(customerInitial value)? customerInitial,
    TResult? Function(displayCustomerList value)? displayCustomerList,
  }) {
    return customerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(customerInitial value)? customerInitial,
    TResult Function(displayCustomerList value)? displayCustomerList,
    required TResult orElse(),
  }) {
    if (customerInitial != null) {
      return customerInitial(this);
    }
    return orElse();
  }
}

abstract class customerInitial implements CustomerState {
  const factory customerInitial() = _$customerInitialImpl;
}

/// @nodoc
abstract class _$$displayCustomerListImplCopyWith<$Res> {
  factory _$$displayCustomerListImplCopyWith(_$displayCustomerListImpl value,
          $Res Function(_$displayCustomerListImpl) then) =
      __$$displayCustomerListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactsDTO> customers});
}

/// @nodoc
class __$$displayCustomerListImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$displayCustomerListImpl>
    implements _$$displayCustomerListImplCopyWith<$Res> {
  __$$displayCustomerListImplCopyWithImpl(_$displayCustomerListImpl _value,
      $Res Function(_$displayCustomerListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$displayCustomerListImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<ContactsDTO>,
    ));
  }
}

/// @nodoc

class _$displayCustomerListImpl implements displayCustomerList {
  const _$displayCustomerListImpl({required final List<ContactsDTO> customers})
      : _customers = customers;

  final List<ContactsDTO> _customers;
  @override
  List<ContactsDTO> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomerState.displayCustomerList(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayCustomerListImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayCustomerListImplCopyWith<_$displayCustomerListImpl> get copyWith =>
      __$$displayCustomerListImplCopyWithImpl<_$displayCustomerListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerInitial,
    required TResult Function(List<ContactsDTO> customers) displayCustomerList,
  }) {
    return displayCustomerList(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? customerInitial,
    TResult? Function(List<ContactsDTO> customers)? displayCustomerList,
  }) {
    return displayCustomerList?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerInitial,
    TResult Function(List<ContactsDTO> customers)? displayCustomerList,
    required TResult orElse(),
  }) {
    if (displayCustomerList != null) {
      return displayCustomerList(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(customerInitial value) customerInitial,
    required TResult Function(displayCustomerList value) displayCustomerList,
  }) {
    return displayCustomerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(customerInitial value)? customerInitial,
    TResult? Function(displayCustomerList value)? displayCustomerList,
  }) {
    return displayCustomerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(customerInitial value)? customerInitial,
    TResult Function(displayCustomerList value)? displayCustomerList,
    required TResult orElse(),
  }) {
    if (displayCustomerList != null) {
      return displayCustomerList(this);
    }
    return orElse();
  }
}

abstract class displayCustomerList implements CustomerState {
  const factory displayCustomerList(
      {required final List<ContactsDTO> customers}) = _$displayCustomerListImpl;

  List<ContactsDTO> get customers;
  @JsonKey(ignore: true)
  _$$displayCustomerListImplCopyWith<_$displayCustomerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
