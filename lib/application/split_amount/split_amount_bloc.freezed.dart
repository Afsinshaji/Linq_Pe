// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_amount_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplitAmountEvent {
  List<NestedSecondaryTransactionsDTO> get transactionList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        addSplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSplitAmountList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addSplitAmountList value) addSplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSplitAmountList value)? addSplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSplitAmountList value)? addSplitAmountList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplitAmountEventCopyWith<SplitAmountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitAmountEventCopyWith<$Res> {
  factory $SplitAmountEventCopyWith(
          SplitAmountEvent value, $Res Function(SplitAmountEvent) then) =
      _$SplitAmountEventCopyWithImpl<$Res, SplitAmountEvent>;
  @useResult
  $Res call({List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class _$SplitAmountEventCopyWithImpl<$Res, $Val extends SplitAmountEvent>
    implements $SplitAmountEventCopyWith<$Res> {
  _$SplitAmountEventCopyWithImpl(this._value, this._then);

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
abstract class _$$addSplitAmountListImplCopyWith<$Res>
    implements $SplitAmountEventCopyWith<$Res> {
  factory _$$addSplitAmountListImplCopyWith(_$addSplitAmountListImpl value,
          $Res Function(_$addSplitAmountListImpl) then) =
      __$$addSplitAmountListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class __$$addSplitAmountListImplCopyWithImpl<$Res>
    extends _$SplitAmountEventCopyWithImpl<$Res, _$addSplitAmountListImpl>
    implements _$$addSplitAmountListImplCopyWith<$Res> {
  __$$addSplitAmountListImplCopyWithImpl(_$addSplitAmountListImpl _value,
      $Res Function(_$addSplitAmountListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_$addSplitAmountListImpl(
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<NestedSecondaryTransactionsDTO>,
    ));
  }
}

/// @nodoc

class _$addSplitAmountListImpl implements addSplitAmountList {
  const _$addSplitAmountListImpl(
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
    return 'SplitAmountEvent.addSplitAmountList(transactionList: $transactionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addSplitAmountListImpl &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addSplitAmountListImplCopyWith<_$addSplitAmountListImpl> get copyWith =>
      __$$addSplitAmountListImplCopyWithImpl<_$addSplitAmountListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        addSplitAmountList,
  }) {
    return addSplitAmountList(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSplitAmountList,
  }) {
    return addSplitAmountList?.call(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        addSplitAmountList,
    required TResult orElse(),
  }) {
    if (addSplitAmountList != null) {
      return addSplitAmountList(transactionList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addSplitAmountList value) addSplitAmountList,
  }) {
    return addSplitAmountList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addSplitAmountList value)? addSplitAmountList,
  }) {
    return addSplitAmountList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addSplitAmountList value)? addSplitAmountList,
    required TResult orElse(),
  }) {
    if (addSplitAmountList != null) {
      return addSplitAmountList(this);
    }
    return orElse();
  }
}

abstract class addSplitAmountList implements SplitAmountEvent {
  const factory addSplitAmountList(
      {required final List<NestedSecondaryTransactionsDTO>
          transactionList}) = _$addSplitAmountListImpl;

  @override
  List<NestedSecondaryTransactionsDTO> get transactionList;
  @override
  @JsonKey(ignore: true)
  _$$addSplitAmountListImplCopyWith<_$addSplitAmountListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplitAmountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splitamountInitial,
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        displaySplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splitamountInitial,
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splitamountInitial,
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySplitAmountList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(splitamountInitial value) splitamountInitial,
    required TResult Function(displaySplitAmountList value)
        displaySplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(splitamountInitial value)? splitamountInitial,
    TResult? Function(displaySplitAmountList value)? displaySplitAmountList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(splitamountInitial value)? splitamountInitial,
    TResult Function(displaySplitAmountList value)? displaySplitAmountList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitAmountStateCopyWith<$Res> {
  factory $SplitAmountStateCopyWith(
          SplitAmountState value, $Res Function(SplitAmountState) then) =
      _$SplitAmountStateCopyWithImpl<$Res, SplitAmountState>;
}

/// @nodoc
class _$SplitAmountStateCopyWithImpl<$Res, $Val extends SplitAmountState>
    implements $SplitAmountStateCopyWith<$Res> {
  _$SplitAmountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$splitamountInitialImplCopyWith<$Res> {
  factory _$$splitamountInitialImplCopyWith(_$splitamountInitialImpl value,
          $Res Function(_$splitamountInitialImpl) then) =
      __$$splitamountInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$splitamountInitialImplCopyWithImpl<$Res>
    extends _$SplitAmountStateCopyWithImpl<$Res, _$splitamountInitialImpl>
    implements _$$splitamountInitialImplCopyWith<$Res> {
  __$$splitamountInitialImplCopyWithImpl(_$splitamountInitialImpl _value,
      $Res Function(_$splitamountInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$splitamountInitialImpl implements splitamountInitial {
  const _$splitamountInitialImpl();

  @override
  String toString() {
    return 'SplitAmountState.splitamountInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$splitamountInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splitamountInitial,
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        displaySplitAmountList,
  }) {
    return splitamountInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splitamountInitial,
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySplitAmountList,
  }) {
    return splitamountInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splitamountInitial,
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySplitAmountList,
    required TResult orElse(),
  }) {
    if (splitamountInitial != null) {
      return splitamountInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(splitamountInitial value) splitamountInitial,
    required TResult Function(displaySplitAmountList value)
        displaySplitAmountList,
  }) {
    return splitamountInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(splitamountInitial value)? splitamountInitial,
    TResult? Function(displaySplitAmountList value)? displaySplitAmountList,
  }) {
    return splitamountInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(splitamountInitial value)? splitamountInitial,
    TResult Function(displaySplitAmountList value)? displaySplitAmountList,
    required TResult orElse(),
  }) {
    if (splitamountInitial != null) {
      return splitamountInitial(this);
    }
    return orElse();
  }
}

abstract class splitamountInitial implements SplitAmountState {
  const factory splitamountInitial() = _$splitamountInitialImpl;
}

/// @nodoc
abstract class _$$displaySplitAmountListImplCopyWith<$Res> {
  factory _$$displaySplitAmountListImplCopyWith(
          _$displaySplitAmountListImpl value,
          $Res Function(_$displaySplitAmountListImpl) then) =
      __$$displaySplitAmountListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NestedSecondaryTransactionsDTO> transactionList});
}

/// @nodoc
class __$$displaySplitAmountListImplCopyWithImpl<$Res>
    extends _$SplitAmountStateCopyWithImpl<$Res, _$displaySplitAmountListImpl>
    implements _$$displaySplitAmountListImplCopyWith<$Res> {
  __$$displaySplitAmountListImplCopyWithImpl(
      _$displaySplitAmountListImpl _value,
      $Res Function(_$displaySplitAmountListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_$displaySplitAmountListImpl(
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<NestedSecondaryTransactionsDTO>,
    ));
  }
}

/// @nodoc

class _$displaySplitAmountListImpl implements displaySplitAmountList {
  const _$displaySplitAmountListImpl(
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
    return 'SplitAmountState.displaySplitAmountList(transactionList: $transactionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displaySplitAmountListImpl &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displaySplitAmountListImplCopyWith<_$displaySplitAmountListImpl>
      get copyWith => __$$displaySplitAmountListImplCopyWithImpl<
          _$displaySplitAmountListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splitamountInitial,
    required TResult Function(
            List<NestedSecondaryTransactionsDTO> transactionList)
        displaySplitAmountList,
  }) {
    return displaySplitAmountList(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splitamountInitial,
    TResult? Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySplitAmountList,
  }) {
    return displaySplitAmountList?.call(transactionList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splitamountInitial,
    TResult Function(List<NestedSecondaryTransactionsDTO> transactionList)?
        displaySplitAmountList,
    required TResult orElse(),
  }) {
    if (displaySplitAmountList != null) {
      return displaySplitAmountList(transactionList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(splitamountInitial value) splitamountInitial,
    required TResult Function(displaySplitAmountList value)
        displaySplitAmountList,
  }) {
    return displaySplitAmountList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(splitamountInitial value)? splitamountInitial,
    TResult? Function(displaySplitAmountList value)? displaySplitAmountList,
  }) {
    return displaySplitAmountList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(splitamountInitial value)? splitamountInitial,
    TResult Function(displaySplitAmountList value)? displaySplitAmountList,
    required TResult orElse(),
  }) {
    if (displaySplitAmountList != null) {
      return displaySplitAmountList(this);
    }
    return orElse();
  }
}

abstract class displaySplitAmountList implements SplitAmountState {
  const factory displaySplitAmountList(
      {required final List<NestedSecondaryTransactionsDTO>
          transactionList}) = _$displaySplitAmountListImpl;

  List<NestedSecondaryTransactionsDTO> get transactionList;
  @JsonKey(ignore: true)
  _$$displaySplitAmountListImplCopyWith<_$displaySplitAmountListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
