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
  String get ledgerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId, String ledgerId) addCustomers,
    required TResult Function(String ledgerId) getCustomerList,
    required TResult Function(String contactId, String ledgerId)
        deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId, String ledgerId)? addCustomers,
    TResult? Function(String ledgerId)? getCustomerList,
    TResult? Function(String contactId, String ledgerId)? deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId, String ledgerId)? addCustomers,
    TResult Function(String ledgerId)? getCustomerList,
    TResult Function(String contactId, String ledgerId)? deleteCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
    required TResult Function(deleteCustomers value) deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
    TResult? Function(deleteCustomers value)? deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    TResult Function(deleteCustomers value)? deleteCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerEventCopyWith<CustomerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$addCustomersImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$addCustomersImplCopyWith(
          _$addCustomersImpl value, $Res Function(_$addCustomersImpl) then) =
      __$$addCustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contactId, String ledgerId});
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
    Object? ledgerId = null,
  }) {
    return _then(_$addCustomersImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addCustomersImpl implements addCustomers {
  const _$addCustomersImpl({required this.contactId, required this.ledgerId});

  @override
  final String contactId;
  @override
  final String ledgerId;

  @override
  String toString() {
    return 'CustomerEvent.addCustomers(contactId: $contactId, ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addCustomersImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addCustomersImplCopyWith<_$addCustomersImpl> get copyWith =>
      __$$addCustomersImplCopyWithImpl<_$addCustomersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId, String ledgerId) addCustomers,
    required TResult Function(String ledgerId) getCustomerList,
    required TResult Function(String contactId, String ledgerId)
        deleteCustomers,
  }) {
    return addCustomers(contactId, ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId, String ledgerId)? addCustomers,
    TResult? Function(String ledgerId)? getCustomerList,
    TResult? Function(String contactId, String ledgerId)? deleteCustomers,
  }) {
    return addCustomers?.call(contactId, ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId, String ledgerId)? addCustomers,
    TResult Function(String ledgerId)? getCustomerList,
    TResult Function(String contactId, String ledgerId)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (addCustomers != null) {
      return addCustomers(contactId, ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
    required TResult Function(deleteCustomers value) deleteCustomers,
  }) {
    return addCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
    TResult? Function(deleteCustomers value)? deleteCustomers,
  }) {
    return addCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    TResult Function(deleteCustomers value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (addCustomers != null) {
      return addCustomers(this);
    }
    return orElse();
  }
}

abstract class addCustomers implements CustomerEvent {
  const factory addCustomers(
      {required final String contactId,
      required final String ledgerId}) = _$addCustomersImpl;

  String get contactId;
  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$addCustomersImplCopyWith<_$addCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCustomerListImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$getCustomerListImplCopyWith(_$getCustomerListImpl value,
          $Res Function(_$getCustomerListImpl) then) =
      __$$getCustomerListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$getCustomerListImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$getCustomerListImpl>
    implements _$$getCustomerListImplCopyWith<$Res> {
  __$$getCustomerListImplCopyWithImpl(
      _$getCustomerListImpl _value, $Res Function(_$getCustomerListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$getCustomerListImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getCustomerListImpl implements getCustomerList {
  const _$getCustomerListImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'CustomerEvent.getCustomerList(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCustomerListImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCustomerListImplCopyWith<_$getCustomerListImpl> get copyWith =>
      __$$getCustomerListImplCopyWithImpl<_$getCustomerListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId, String ledgerId) addCustomers,
    required TResult Function(String ledgerId) getCustomerList,
    required TResult Function(String contactId, String ledgerId)
        deleteCustomers,
  }) {
    return getCustomerList(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId, String ledgerId)? addCustomers,
    TResult? Function(String ledgerId)? getCustomerList,
    TResult? Function(String contactId, String ledgerId)? deleteCustomers,
  }) {
    return getCustomerList?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId, String ledgerId)? addCustomers,
    TResult Function(String ledgerId)? getCustomerList,
    TResult Function(String contactId, String ledgerId)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (getCustomerList != null) {
      return getCustomerList(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
    required TResult Function(deleteCustomers value) deleteCustomers,
  }) {
    return getCustomerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
    TResult? Function(deleteCustomers value)? deleteCustomers,
  }) {
    return getCustomerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    TResult Function(deleteCustomers value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (getCustomerList != null) {
      return getCustomerList(this);
    }
    return orElse();
  }
}

abstract class getCustomerList implements CustomerEvent {
  const factory getCustomerList({required final String ledgerId}) =
      _$getCustomerListImpl;

  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$getCustomerListImplCopyWith<_$getCustomerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteCustomersImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$deleteCustomersImplCopyWith(_$deleteCustomersImpl value,
          $Res Function(_$deleteCustomersImpl) then) =
      __$$deleteCustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contactId, String ledgerId});
}

/// @nodoc
class __$$deleteCustomersImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$deleteCustomersImpl>
    implements _$$deleteCustomersImplCopyWith<$Res> {
  __$$deleteCustomersImplCopyWithImpl(
      _$deleteCustomersImpl _value, $Res Function(_$deleteCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? ledgerId = null,
  }) {
    return _then(_$deleteCustomersImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteCustomersImpl implements deleteCustomers {
  const _$deleteCustomersImpl(
      {required this.contactId, required this.ledgerId});

  @override
  final String contactId;
  @override
  final String ledgerId;

  @override
  String toString() {
    return 'CustomerEvent.deleteCustomers(contactId: $contactId, ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteCustomersImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteCustomersImplCopyWith<_$deleteCustomersImpl> get copyWith =>
      __$$deleteCustomersImplCopyWithImpl<_$deleteCustomersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactId, String ledgerId) addCustomers,
    required TResult Function(String ledgerId) getCustomerList,
    required TResult Function(String contactId, String ledgerId)
        deleteCustomers,
  }) {
    return deleteCustomers(contactId, ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactId, String ledgerId)? addCustomers,
    TResult? Function(String ledgerId)? getCustomerList,
    TResult? Function(String contactId, String ledgerId)? deleteCustomers,
  }) {
    return deleteCustomers?.call(contactId, ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactId, String ledgerId)? addCustomers,
    TResult Function(String ledgerId)? getCustomerList,
    TResult Function(String contactId, String ledgerId)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (deleteCustomers != null) {
      return deleteCustomers(contactId, ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addCustomers value) addCustomers,
    required TResult Function(getCustomerList value) getCustomerList,
    required TResult Function(deleteCustomers value) deleteCustomers,
  }) {
    return deleteCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addCustomers value)? addCustomers,
    TResult? Function(getCustomerList value)? getCustomerList,
    TResult? Function(deleteCustomers value)? deleteCustomers,
  }) {
    return deleteCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addCustomers value)? addCustomers,
    TResult Function(getCustomerList value)? getCustomerList,
    TResult Function(deleteCustomers value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (deleteCustomers != null) {
      return deleteCustomers(this);
    }
    return orElse();
  }
}

abstract class deleteCustomers implements CustomerEvent {
  const factory deleteCustomers(
      {required final String contactId,
      required final String ledgerId}) = _$deleteCustomersImpl;

  String get contactId;
  @override
  String get ledgerId;
  @override
  @JsonKey(ignore: true)
  _$$deleteCustomersImplCopyWith<_$deleteCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
