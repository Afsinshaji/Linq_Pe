// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) addContactsList,
    required TResult Function(ContactsDTO contact) addContact,
    required TResult Function(String ledgerId) getContacts,
    required TResult Function(String contactId, String ledgerId, double amount)
        addNonSplittingBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? addContactsList,
    TResult? Function(ContactsDTO contact)? addContact,
    TResult? Function(String ledgerId)? getContacts,
    TResult? Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? addContactsList,
    TResult Function(ContactsDTO contact)? addContact,
    TResult Function(String ledgerId)? getContacts,
    TResult Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addContactsList value) addContactsList,
    required TResult Function(addContact value) addContact,
    required TResult Function(getContacts value) getContacts,
    required TResult Function(addNonSplittingBalance value)
        addNonSplittingBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addContactsList value)? addContactsList,
    TResult? Function(addContact value)? addContact,
    TResult? Function(getContacts value)? getContacts,
    TResult? Function(addNonSplittingBalance value)? addNonSplittingBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addContactsList value)? addContactsList,
    TResult Function(addContact value)? addContact,
    TResult Function(getContacts value)? getContacts,
    TResult Function(addNonSplittingBalance value)? addNonSplittingBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addContactsListImplCopyWith<$Res> {
  factory _$$addContactsListImplCopyWith(_$addContactsListImpl value,
          $Res Function(_$addContactsListImpl) then) =
      __$$addContactsListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$addContactsListImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$addContactsListImpl>
    implements _$$addContactsListImplCopyWith<$Res> {
  __$$addContactsListImplCopyWithImpl(
      _$addContactsListImpl _value, $Res Function(_$addContactsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$addContactsListImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addContactsListImpl implements addContactsList {
  const _$addContactsListImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'ContactsEvent.addContactsList(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addContactsListImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addContactsListImplCopyWith<_$addContactsListImpl> get copyWith =>
      __$$addContactsListImplCopyWithImpl<_$addContactsListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) addContactsList,
    required TResult Function(ContactsDTO contact) addContact,
    required TResult Function(String ledgerId) getContacts,
    required TResult Function(String contactId, String ledgerId, double amount)
        addNonSplittingBalance,
  }) {
    return addContactsList(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? addContactsList,
    TResult? Function(ContactsDTO contact)? addContact,
    TResult? Function(String ledgerId)? getContacts,
    TResult? Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
  }) {
    return addContactsList?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? addContactsList,
    TResult Function(ContactsDTO contact)? addContact,
    TResult Function(String ledgerId)? getContacts,
    TResult Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (addContactsList != null) {
      return addContactsList(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addContactsList value) addContactsList,
    required TResult Function(addContact value) addContact,
    required TResult Function(getContacts value) getContacts,
    required TResult Function(addNonSplittingBalance value)
        addNonSplittingBalance,
  }) {
    return addContactsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addContactsList value)? addContactsList,
    TResult? Function(addContact value)? addContact,
    TResult? Function(getContacts value)? getContacts,
    TResult? Function(addNonSplittingBalance value)? addNonSplittingBalance,
  }) {
    return addContactsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addContactsList value)? addContactsList,
    TResult Function(addContact value)? addContact,
    TResult Function(getContacts value)? getContacts,
    TResult Function(addNonSplittingBalance value)? addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (addContactsList != null) {
      return addContactsList(this);
    }
    return orElse();
  }
}

abstract class addContactsList implements ContactsEvent {
  const factory addContactsList({required final String ledgerId}) =
      _$addContactsListImpl;

  String get ledgerId;
  @JsonKey(ignore: true)
  _$$addContactsListImplCopyWith<_$addContactsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addContactImplCopyWith<$Res> {
  factory _$$addContactImplCopyWith(
          _$addContactImpl value, $Res Function(_$addContactImpl) then) =
      __$$addContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactsDTO contact});
}

/// @nodoc
class __$$addContactImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$addContactImpl>
    implements _$$addContactImplCopyWith<$Res> {
  __$$addContactImplCopyWithImpl(
      _$addContactImpl _value, $Res Function(_$addContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$addContactImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactsDTO,
    ));
  }
}

/// @nodoc

class _$addContactImpl implements addContact {
  const _$addContactImpl({required this.contact});

  @override
  final ContactsDTO contact;

  @override
  String toString() {
    return 'ContactsEvent.addContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addContactImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addContactImplCopyWith<_$addContactImpl> get copyWith =>
      __$$addContactImplCopyWithImpl<_$addContactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) addContactsList,
    required TResult Function(ContactsDTO contact) addContact,
    required TResult Function(String ledgerId) getContacts,
    required TResult Function(String contactId, String ledgerId, double amount)
        addNonSplittingBalance,
  }) {
    return addContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? addContactsList,
    TResult? Function(ContactsDTO contact)? addContact,
    TResult? Function(String ledgerId)? getContacts,
    TResult? Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
  }) {
    return addContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? addContactsList,
    TResult Function(ContactsDTO contact)? addContact,
    TResult Function(String ledgerId)? getContacts,
    TResult Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addContactsList value) addContactsList,
    required TResult Function(addContact value) addContact,
    required TResult Function(getContacts value) getContacts,
    required TResult Function(addNonSplittingBalance value)
        addNonSplittingBalance,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addContactsList value)? addContactsList,
    TResult? Function(addContact value)? addContact,
    TResult? Function(getContacts value)? getContacts,
    TResult? Function(addNonSplittingBalance value)? addNonSplittingBalance,
  }) {
    return addContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addContactsList value)? addContactsList,
    TResult Function(addContact value)? addContact,
    TResult Function(getContacts value)? getContacts,
    TResult Function(addNonSplittingBalance value)? addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class addContact implements ContactsEvent {
  const factory addContact({required final ContactsDTO contact}) =
      _$addContactImpl;

  ContactsDTO get contact;
  @JsonKey(ignore: true)
  _$$addContactImplCopyWith<_$addContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getContactsImplCopyWith<$Res> {
  factory _$$getContactsImplCopyWith(
          _$getContactsImpl value, $Res Function(_$getContactsImpl) then) =
      __$$getContactsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ledgerId});
}

/// @nodoc
class __$$getContactsImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$getContactsImpl>
    implements _$$getContactsImplCopyWith<$Res> {
  __$$getContactsImplCopyWithImpl(
      _$getContactsImpl _value, $Res Function(_$getContactsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledgerId = null,
  }) {
    return _then(_$getContactsImpl(
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getContactsImpl implements getContacts {
  const _$getContactsImpl({required this.ledgerId});

  @override
  final String ledgerId;

  @override
  String toString() {
    return 'ContactsEvent.getContacts(ledgerId: $ledgerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getContactsImpl &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ledgerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getContactsImplCopyWith<_$getContactsImpl> get copyWith =>
      __$$getContactsImplCopyWithImpl<_$getContactsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) addContactsList,
    required TResult Function(ContactsDTO contact) addContact,
    required TResult Function(String ledgerId) getContacts,
    required TResult Function(String contactId, String ledgerId, double amount)
        addNonSplittingBalance,
  }) {
    return getContacts(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? addContactsList,
    TResult? Function(ContactsDTO contact)? addContact,
    TResult? Function(String ledgerId)? getContacts,
    TResult? Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
  }) {
    return getContacts?.call(ledgerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? addContactsList,
    TResult Function(ContactsDTO contact)? addContact,
    TResult Function(String ledgerId)? getContacts,
    TResult Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (getContacts != null) {
      return getContacts(ledgerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addContactsList value) addContactsList,
    required TResult Function(addContact value) addContact,
    required TResult Function(getContacts value) getContacts,
    required TResult Function(addNonSplittingBalance value)
        addNonSplittingBalance,
  }) {
    return getContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addContactsList value)? addContactsList,
    TResult? Function(addContact value)? addContact,
    TResult? Function(getContacts value)? getContacts,
    TResult? Function(addNonSplittingBalance value)? addNonSplittingBalance,
  }) {
    return getContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addContactsList value)? addContactsList,
    TResult Function(addContact value)? addContact,
    TResult Function(getContacts value)? getContacts,
    TResult Function(addNonSplittingBalance value)? addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (getContacts != null) {
      return getContacts(this);
    }
    return orElse();
  }
}

abstract class getContacts implements ContactsEvent {
  const factory getContacts({required final String ledgerId}) =
      _$getContactsImpl;

  String get ledgerId;
  @JsonKey(ignore: true)
  _$$getContactsImplCopyWith<_$getContactsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addNonSplittingBalanceImplCopyWith<$Res> {
  factory _$$addNonSplittingBalanceImplCopyWith(
          _$addNonSplittingBalanceImpl value,
          $Res Function(_$addNonSplittingBalanceImpl) then) =
      __$$addNonSplittingBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactId, String ledgerId, double amount});
}

/// @nodoc
class __$$addNonSplittingBalanceImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$addNonSplittingBalanceImpl>
    implements _$$addNonSplittingBalanceImplCopyWith<$Res> {
  __$$addNonSplittingBalanceImplCopyWithImpl(
      _$addNonSplittingBalanceImpl _value,
      $Res Function(_$addNonSplittingBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? ledgerId = null,
    Object? amount = null,
  }) {
    return _then(_$addNonSplittingBalanceImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      ledgerId: null == ledgerId
          ? _value.ledgerId
          : ledgerId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$addNonSplittingBalanceImpl implements addNonSplittingBalance {
  const _$addNonSplittingBalanceImpl(
      {required this.contactId, required this.ledgerId, required this.amount});

  @override
  final String contactId;
  @override
  final String ledgerId;
  @override
  final double amount;

  @override
  String toString() {
    return 'ContactsEvent.addNonSplittingBalance(contactId: $contactId, ledgerId: $ledgerId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addNonSplittingBalanceImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.ledgerId, ledgerId) ||
                other.ledgerId == ledgerId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId, ledgerId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addNonSplittingBalanceImplCopyWith<_$addNonSplittingBalanceImpl>
      get copyWith => __$$addNonSplittingBalanceImplCopyWithImpl<
          _$addNonSplittingBalanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ledgerId) addContactsList,
    required TResult Function(ContactsDTO contact) addContact,
    required TResult Function(String ledgerId) getContacts,
    required TResult Function(String contactId, String ledgerId, double amount)
        addNonSplittingBalance,
  }) {
    return addNonSplittingBalance(contactId, ledgerId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ledgerId)? addContactsList,
    TResult? Function(ContactsDTO contact)? addContact,
    TResult? Function(String ledgerId)? getContacts,
    TResult? Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
  }) {
    return addNonSplittingBalance?.call(contactId, ledgerId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ledgerId)? addContactsList,
    TResult Function(ContactsDTO contact)? addContact,
    TResult Function(String ledgerId)? getContacts,
    TResult Function(String contactId, String ledgerId, double amount)?
        addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (addNonSplittingBalance != null) {
      return addNonSplittingBalance(contactId, ledgerId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addContactsList value) addContactsList,
    required TResult Function(addContact value) addContact,
    required TResult Function(getContacts value) getContacts,
    required TResult Function(addNonSplittingBalance value)
        addNonSplittingBalance,
  }) {
    return addNonSplittingBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addContactsList value)? addContactsList,
    TResult? Function(addContact value)? addContact,
    TResult? Function(getContacts value)? getContacts,
    TResult? Function(addNonSplittingBalance value)? addNonSplittingBalance,
  }) {
    return addNonSplittingBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addContactsList value)? addContactsList,
    TResult Function(addContact value)? addContact,
    TResult Function(getContacts value)? getContacts,
    TResult Function(addNonSplittingBalance value)? addNonSplittingBalance,
    required TResult orElse(),
  }) {
    if (addNonSplittingBalance != null) {
      return addNonSplittingBalance(this);
    }
    return orElse();
  }
}

abstract class addNonSplittingBalance implements ContactsEvent {
  const factory addNonSplittingBalance(
      {required final String contactId,
      required final String ledgerId,
      required final double amount}) = _$addNonSplittingBalanceImpl;

  String get contactId;
  String get ledgerId;
  double get amount;
  @JsonKey(ignore: true)
  _$$addNonSplittingBalanceImplCopyWith<_$addNonSplittingBalanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contactsInitial,
    required TResult Function(List<ContactsDTO> contactList) displayContacts,
    required TResult Function(bool isLoading) displayaddingContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contactsInitial,
    TResult? Function(List<ContactsDTO> contactList)? displayContacts,
    TResult? Function(bool isLoading)? displayaddingContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contactsInitial,
    TResult Function(List<ContactsDTO> contactList)? displayContacts,
    TResult Function(bool isLoading)? displayaddingContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(contactsInitial value) contactsInitial,
    required TResult Function(displayContacts value) displayContacts,
    required TResult Function(displayaddingContact value) displayaddingContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(contactsInitial value)? contactsInitial,
    TResult? Function(displayContacts value)? displayContacts,
    TResult? Function(displayaddingContact value)? displayaddingContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(contactsInitial value)? contactsInitial,
    TResult Function(displayContacts value)? displayContacts,
    TResult Function(displayaddingContact value)? displayaddingContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$contactsInitialImplCopyWith<$Res> {
  factory _$$contactsInitialImplCopyWith(_$contactsInitialImpl value,
          $Res Function(_$contactsInitialImpl) then) =
      __$$contactsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$contactsInitialImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$contactsInitialImpl>
    implements _$$contactsInitialImplCopyWith<$Res> {
  __$$contactsInitialImplCopyWithImpl(
      _$contactsInitialImpl _value, $Res Function(_$contactsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$contactsInitialImpl implements contactsInitial {
  const _$contactsInitialImpl();

  @override
  String toString() {
    return 'ContactsState.contactsInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$contactsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contactsInitial,
    required TResult Function(List<ContactsDTO> contactList) displayContacts,
    required TResult Function(bool isLoading) displayaddingContact,
  }) {
    return contactsInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contactsInitial,
    TResult? Function(List<ContactsDTO> contactList)? displayContacts,
    TResult? Function(bool isLoading)? displayaddingContact,
  }) {
    return contactsInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contactsInitial,
    TResult Function(List<ContactsDTO> contactList)? displayContacts,
    TResult Function(bool isLoading)? displayaddingContact,
    required TResult orElse(),
  }) {
    if (contactsInitial != null) {
      return contactsInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(contactsInitial value) contactsInitial,
    required TResult Function(displayContacts value) displayContacts,
    required TResult Function(displayaddingContact value) displayaddingContact,
  }) {
    return contactsInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(contactsInitial value)? contactsInitial,
    TResult? Function(displayContacts value)? displayContacts,
    TResult? Function(displayaddingContact value)? displayaddingContact,
  }) {
    return contactsInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(contactsInitial value)? contactsInitial,
    TResult Function(displayContacts value)? displayContacts,
    TResult Function(displayaddingContact value)? displayaddingContact,
    required TResult orElse(),
  }) {
    if (contactsInitial != null) {
      return contactsInitial(this);
    }
    return orElse();
  }
}

abstract class contactsInitial implements ContactsState {
  const factory contactsInitial() = _$contactsInitialImpl;
}

/// @nodoc
abstract class _$$displayContactsImplCopyWith<$Res> {
  factory _$$displayContactsImplCopyWith(_$displayContactsImpl value,
          $Res Function(_$displayContactsImpl) then) =
      __$$displayContactsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactsDTO> contactList});
}

/// @nodoc
class __$$displayContactsImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$displayContactsImpl>
    implements _$$displayContactsImplCopyWith<$Res> {
  __$$displayContactsImplCopyWithImpl(
      _$displayContactsImpl _value, $Res Function(_$displayContactsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactList = null,
  }) {
    return _then(_$displayContactsImpl(
      contactList: null == contactList
          ? _value._contactList
          : contactList // ignore: cast_nullable_to_non_nullable
              as List<ContactsDTO>,
    ));
  }
}

/// @nodoc

class _$displayContactsImpl implements displayContacts {
  const _$displayContactsImpl({required final List<ContactsDTO> contactList})
      : _contactList = contactList;

  final List<ContactsDTO> _contactList;
  @override
  List<ContactsDTO> get contactList {
    if (_contactList is EqualUnmodifiableListView) return _contactList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactList);
  }

  @override
  String toString() {
    return 'ContactsState.displayContacts(contactList: $contactList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayContactsImpl &&
            const DeepCollectionEquality()
                .equals(other._contactList, _contactList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_contactList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayContactsImplCopyWith<_$displayContactsImpl> get copyWith =>
      __$$displayContactsImplCopyWithImpl<_$displayContactsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contactsInitial,
    required TResult Function(List<ContactsDTO> contactList) displayContacts,
    required TResult Function(bool isLoading) displayaddingContact,
  }) {
    return displayContacts(contactList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contactsInitial,
    TResult? Function(List<ContactsDTO> contactList)? displayContacts,
    TResult? Function(bool isLoading)? displayaddingContact,
  }) {
    return displayContacts?.call(contactList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contactsInitial,
    TResult Function(List<ContactsDTO> contactList)? displayContacts,
    TResult Function(bool isLoading)? displayaddingContact,
    required TResult orElse(),
  }) {
    if (displayContacts != null) {
      return displayContacts(contactList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(contactsInitial value) contactsInitial,
    required TResult Function(displayContacts value) displayContacts,
    required TResult Function(displayaddingContact value) displayaddingContact,
  }) {
    return displayContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(contactsInitial value)? contactsInitial,
    TResult? Function(displayContacts value)? displayContacts,
    TResult? Function(displayaddingContact value)? displayaddingContact,
  }) {
    return displayContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(contactsInitial value)? contactsInitial,
    TResult Function(displayContacts value)? displayContacts,
    TResult Function(displayaddingContact value)? displayaddingContact,
    required TResult orElse(),
  }) {
    if (displayContacts != null) {
      return displayContacts(this);
    }
    return orElse();
  }
}

abstract class displayContacts implements ContactsState {
  const factory displayContacts(
      {required final List<ContactsDTO> contactList}) = _$displayContactsImpl;

  List<ContactsDTO> get contactList;
  @JsonKey(ignore: true)
  _$$displayContactsImplCopyWith<_$displayContactsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$displayaddingContactImplCopyWith<$Res> {
  factory _$$displayaddingContactImplCopyWith(_$displayaddingContactImpl value,
          $Res Function(_$displayaddingContactImpl) then) =
      __$$displayaddingContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$displayaddingContactImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$displayaddingContactImpl>
    implements _$$displayaddingContactImplCopyWith<$Res> {
  __$$displayaddingContactImplCopyWithImpl(_$displayaddingContactImpl _value,
      $Res Function(_$displayaddingContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$displayaddingContactImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$displayaddingContactImpl implements displayaddingContact {
  const _$displayaddingContactImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ContactsState.displayaddingContact(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayaddingContactImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayaddingContactImplCopyWith<_$displayaddingContactImpl>
      get copyWith =>
          __$$displayaddingContactImplCopyWithImpl<_$displayaddingContactImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contactsInitial,
    required TResult Function(List<ContactsDTO> contactList) displayContacts,
    required TResult Function(bool isLoading) displayaddingContact,
  }) {
    return displayaddingContact(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contactsInitial,
    TResult? Function(List<ContactsDTO> contactList)? displayContacts,
    TResult? Function(bool isLoading)? displayaddingContact,
  }) {
    return displayaddingContact?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contactsInitial,
    TResult Function(List<ContactsDTO> contactList)? displayContacts,
    TResult Function(bool isLoading)? displayaddingContact,
    required TResult orElse(),
  }) {
    if (displayaddingContact != null) {
      return displayaddingContact(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(contactsInitial value) contactsInitial,
    required TResult Function(displayContacts value) displayContacts,
    required TResult Function(displayaddingContact value) displayaddingContact,
  }) {
    return displayaddingContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(contactsInitial value)? contactsInitial,
    TResult? Function(displayContacts value)? displayContacts,
    TResult? Function(displayaddingContact value)? displayaddingContact,
  }) {
    return displayaddingContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(contactsInitial value)? contactsInitial,
    TResult Function(displayContacts value)? displayContacts,
    TResult Function(displayaddingContact value)? displayaddingContact,
    required TResult orElse(),
  }) {
    if (displayaddingContact != null) {
      return displayaddingContact(this);
    }
    return orElse();
  }
}

abstract class displayaddingContact implements ContactsState {
  const factory displayaddingContact({required final bool isLoading}) =
      _$displayaddingContactImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$displayaddingContactImplCopyWith<_$displayaddingContactImpl>
      get copyWith => throw _privateConstructorUsedError;
}
