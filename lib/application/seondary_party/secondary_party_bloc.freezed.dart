// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_party_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecondaryPartyEvent {
  List<NestedSecondaryTransactionsDTO> get transactionList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        addSecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSecondaryPartyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addSecondaryPartyList value)
        addSecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSecondaryPartyList value)? addSecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSecondaryPartyList value)? addSecondaryPartyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondaryPartyEventCopyWith<SecondaryPartyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryPartyEventCopyWith<$Res> {
  factory $SecondaryPartyEventCopyWith(
          SecondaryPartyEvent value, $Res Function(SecondaryPartyEvent) then) =
      _$SecondaryPartyEventCopyWithImpl<$Res, SecondaryPartyEvent>;
  @useResult
  $Res call({List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class _$SecondaryPartyEventCopyWithImpl<$Res, $Val extends SecondaryPartyEvent>
    implements $SecondaryPartyEventCopyWith<$Res> {
  _$SecondaryPartyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_value.copyWith(
      transactionList: null == transactionList
          ? _value.transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<NestedSecondaryTransactionsDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$addSecondaryPartyListImplCopyWith<$Res>
    implements $SecondaryPartyEventCopyWith<$Res> {
  factory _$$addSecondaryPartyListImplCopyWith(
          _$addSecondaryPartyListImpl value,
          $Res Function(_$addSecondaryPartyListImpl) then) =
      __$$addSecondaryPartyListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class __$$addSecondaryPartyListImplCopyWithImpl<$Res>
    extends _$SecondaryPartyEventCopyWithImpl<$Res, _$addSecondaryPartyListImpl>
    implements _$$addSecondaryPartyListImplCopyWith<$Res> {
  __$$addSecondaryPartyListImplCopyWithImpl(_$addSecondaryPartyListImpl _value,
      $Res Function(_$addSecondaryPartyListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_$addSecondaryPartyListImpl(
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<NestedSecondaryTransactionsDTO>,
    ));
  }
}

/// @nodoc

class _$addSecondaryPartyListImpl implements addSecondaryPartyList {
  const _$addSecondaryPartyListImpl(
      {required final List<NestedSecondaryTransactionsDTO> transactionList})
      : _transactionList = transactionList;

  final List<NestedSecondaryTransactionsDTO> _transactionList;
  @override
  List<NestedSecondaryTransactionsDTO> get transactionList {
    if (_transactionList is EqualUnmodifiableListView) return _transactionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionList);
  }

  @override
  String toString() {
    return 'SecondaryPartyEvent.addSecondaryPartyList(transactionList: $transactionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addSecondaryPartyListImpl &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addSecondaryPartyListImplCopyWith<_$addSecondaryPartyListImpl>
      get copyWith => __$$addSecondaryPartyListImplCopyWithImpl<
          _$addSecondaryPartyListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        addSecondaryPartyList,
  }) {
    return addSecondaryPartyList(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSecondaryPartyList,
  }) {
    return addSecondaryPartyList?.call(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSecondaryPartyList,
    required TResult orElse(),
  }) {
    if (addSecondaryPartyList != null) {
      return addSecondaryPartyList(transactionList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addSecondaryPartyList value)
        addSecondaryPartyList,
  }) {
    return addSecondaryPartyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSecondaryPartyList value)? addSecondaryPartyList,
  }) {
    return addSecondaryPartyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSecondaryPartyList value)? addSecondaryPartyList,
    required TResult orElse(),
  }) {
    if (addSecondaryPartyList != null) {
      return addSecondaryPartyList(this);
    }
    return orElse();
  }
}

abstract class addSecondaryPartyList implements SecondaryPartyEvent {
  const factory addSecondaryPartyList(
      {required final List<NestedSecondaryTransactionsDTO>
          transactionList}) = _$addSecondaryPartyListImpl;

  @override
  List<NestedSecondaryTransactionsDTO> get transactionList;
  @override
  @JsonKey(ignore: true)
  _$$addSecondaryPartyListImplCopyWith<_$addSecondaryPartyListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SecondaryPartyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() secondaryPartyInitial,
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        displaySecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? secondaryPartyInitial,
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? secondaryPartyInitial,
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySecondaryPartyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(secondaryPartyInitial value)
        secondaryPartyInitial,
    required TResult Function(displaySecondaryPartyList value)
        displaySecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(secondaryPartyInitial value)? secondaryPartyInitial,
    TResult? Function(displaySecondaryPartyList value)?
        displaySecondaryPartyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(secondaryPartyInitial value)? secondaryPartyInitial,
    TResult Function(displaySecondaryPartyList value)?
        displaySecondaryPartyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryPartyStateCopyWith<$Res> {
  factory $SecondaryPartyStateCopyWith(
          SecondaryPartyState value, $Res Function(SecondaryPartyState) then) =
      _$SecondaryPartyStateCopyWithImpl<$Res, SecondaryPartyState>;
}

/// @nodoc
class _$SecondaryPartyStateCopyWithImpl<$Res, $Val extends SecondaryPartyState>
    implements $SecondaryPartyStateCopyWith<$Res> {
  _$SecondaryPartyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$secondaryPartyInitialImplCopyWith<$Res> {
  factory _$$secondaryPartyInitialImplCopyWith(
          _$secondaryPartyInitialImpl value,
          $Res Function(_$secondaryPartyInitialImpl) then) =
      __$$secondaryPartyInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$secondaryPartyInitialImplCopyWithImpl<$Res>
    extends _$SecondaryPartyStateCopyWithImpl<$Res, _$secondaryPartyInitialImpl>
    implements _$$secondaryPartyInitialImplCopyWith<$Res> {
  __$$secondaryPartyInitialImplCopyWithImpl(_$secondaryPartyInitialImpl _value,
      $Res Function(_$secondaryPartyInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$secondaryPartyInitialImpl implements secondaryPartyInitial {
  const _$secondaryPartyInitialImpl();

  @override
  String toString() {
    return 'SecondaryPartyState.secondaryPartyInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$secondaryPartyInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() secondaryPartyInitial,
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        displaySecondaryPartyList,
  }) {
    return secondaryPartyInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? secondaryPartyInitial,
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySecondaryPartyList,
  }) {
    return secondaryPartyInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? secondaryPartyInitial,
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySecondaryPartyList,
    required TResult orElse(),
  }) {
    if (secondaryPartyInitial != null) {
      return secondaryPartyInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(secondaryPartyInitial value)
        secondaryPartyInitial,
    required TResult Function(displaySecondaryPartyList value)
        displaySecondaryPartyList,
  }) {
    return secondaryPartyInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(secondaryPartyInitial value)? secondaryPartyInitial,
    TResult? Function(displaySecondaryPartyList value)?
        displaySecondaryPartyList,
  }) {
    return secondaryPartyInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(secondaryPartyInitial value)? secondaryPartyInitial,
    TResult Function(displaySecondaryPartyList value)?
        displaySecondaryPartyList,
    required TResult orElse(),
  }) {
    if (secondaryPartyInitial != null) {
      return secondaryPartyInitial(this);
    }
    return orElse();
  }
}

abstract class secondaryPartyInitial implements SecondaryPartyState {
  const factory secondaryPartyInitial() = _$secondaryPartyInitialImpl;
}

/// @nodoc
abstract class _$$displaySecondaryPartyListImplCopyWith<$Res> {
  factory _$$displaySecondaryPartyListImplCopyWith(
          _$displaySecondaryPartyListImpl value,
          $Res Function(_$displaySecondaryPartyListImpl) then) =
      __$$displaySecondaryPartyListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class __$$displaySecondaryPartyListImplCopyWithImpl<$Res>
    extends _$SecondaryPartyStateCopyWithImpl<$Res,
        _$displaySecondaryPartyListImpl>
    implements _$$displaySecondaryPartyListImplCopyWith<$Res> {
  __$$displaySecondaryPartyListImplCopyWithImpl(
      _$displaySecondaryPartyListImpl _value,
      $Res Function(_$displaySecondaryPartyListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_$displaySecondaryPartyListImpl(
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<NestedSecondaryTransactionsDTO>,
    ));
  }
}

/// @nodoc

class _$displaySecondaryPartyListImpl implements displaySecondaryPartyList {
  const _$displaySecondaryPartyListImpl(
      {required final List<NestedSecondaryTransactionsDTO> transactionList})
      : _transactionList = transactionList;

  final List<NestedSecondaryTransactionsDTO> _transactionList;
  @override
  List<NestedSecondaryTransactionsDTO> get transactionList {
    if (_transactionList is EqualUnmodifiableListView) return _transactionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionList);
  }

  @override
  String toString() {
    return 'SecondaryPartyState.displaySecondaryPartyList(transactionList: $transactionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displaySecondaryPartyListImpl &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displaySecondaryPartyListImplCopyWith<_$displaySecondaryPartyListImpl>
      get copyWith => __$$displaySecondaryPartyListImplCopyWithImpl<
          _$displaySecondaryPartyListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() secondaryPartyInitial,
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        displaySecondaryPartyList,
  }) {
    return displaySecondaryPartyList(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? secondaryPartyInitial,
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySecondaryPartyList,
  }) {
    return displaySecondaryPartyList?.call(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? secondaryPartyInitial,
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySecondaryPartyList,
    required TResult orElse(),
  }) {
    if (displaySecondaryPartyList != null) {
      return displaySecondaryPartyList(transactionList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(secondaryPartyInitial value)
        secondaryPartyInitial,
    required TResult Function(displaySecondaryPartyList value)
        displaySecondaryPartyList,
  }) {
    return displaySecondaryPartyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(secondaryPartyInitial value)? secondaryPartyInitial,
    TResult? Function(displaySecondaryPartyList value)?
        displaySecondaryPartyList,
  }) {
    return displaySecondaryPartyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(secondaryPartyInitial value)? secondaryPartyInitial,
    TResult Function(displaySecondaryPartyList value)?
        displaySecondaryPartyList,
    required TResult orElse(),
  }) {
    if (displaySecondaryPartyList != null) {
      return displaySecondaryPartyList(this);
    }
    return orElse();
  }
}

abstract class displaySecondaryPartyList implements SecondaryPartyState {
  const factory displaySecondaryPartyList(
      {required final List<NestedSecondaryTransactionsDTO>
          transactionList}) = _$displaySecondaryPartyListImpl;

  List<NestedSecondaryTransactionsDTO> get transactionList;
  @JsonKey(ignore: true)
  _$$displaySecondaryPartyListImplCopyWith<_$displaySecondaryPartyListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
