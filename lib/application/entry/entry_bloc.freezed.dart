// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'entry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EntryEventTearOff {
  const _$EntryEventTearOff();

// ignore: unused_element
  _ReadFromCache readFromCache() {
    return const _ReadFromCache();
  }

// ignore: unused_element
  _UpdatedCache updateCache({@required DateTime updatedAt}) {
    return _UpdatedCache(
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EntryEvent = _$EntryEventTearOff();

/// @nodoc
mixin _$EntryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult readFromCache(),
    @required TResult updateCache(DateTime updatedAt),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult readFromCache(),
    TResult updateCache(DateTime updatedAt),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult readFromCache(_ReadFromCache value),
    @required TResult updateCache(_UpdatedCache value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult readFromCache(_ReadFromCache value),
    TResult updateCache(_UpdatedCache value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EntryEventCopyWith<$Res> {
  factory $EntryEventCopyWith(
          EntryEvent value, $Res Function(EntryEvent) then) =
      _$EntryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEventCopyWithImpl<$Res> implements $EntryEventCopyWith<$Res> {
  _$EntryEventCopyWithImpl(this._value, this._then);

  final EntryEvent _value;
  // ignore: unused_field
  final $Res Function(EntryEvent) _then;
}

/// @nodoc
abstract class _$ReadFromCacheCopyWith<$Res> {
  factory _$ReadFromCacheCopyWith(
          _ReadFromCache value, $Res Function(_ReadFromCache) then) =
      __$ReadFromCacheCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReadFromCacheCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$ReadFromCacheCopyWith<$Res> {
  __$ReadFromCacheCopyWithImpl(
      _ReadFromCache _value, $Res Function(_ReadFromCache) _then)
      : super(_value, (v) => _then(v as _ReadFromCache));

  @override
  _ReadFromCache get _value => super._value as _ReadFromCache;
}

/// @nodoc
class _$_ReadFromCache implements _ReadFromCache {
  const _$_ReadFromCache();

  @override
  String toString() {
    return 'EntryEvent.readFromCache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReadFromCache);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult readFromCache(),
    @required TResult updateCache(DateTime updatedAt),
  }) {
    assert(readFromCache != null);
    assert(updateCache != null);
    return readFromCache();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult readFromCache(),
    TResult updateCache(DateTime updatedAt),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (readFromCache != null) {
      return readFromCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult readFromCache(_ReadFromCache value),
    @required TResult updateCache(_UpdatedCache value),
  }) {
    assert(readFromCache != null);
    assert(updateCache != null);
    return readFromCache(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult readFromCache(_ReadFromCache value),
    TResult updateCache(_UpdatedCache value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (readFromCache != null) {
      return readFromCache(this);
    }
    return orElse();
  }
}

abstract class _ReadFromCache implements EntryEvent {
  const factory _ReadFromCache() = _$_ReadFromCache;
}

/// @nodoc
abstract class _$UpdatedCacheCopyWith<$Res> {
  factory _$UpdatedCacheCopyWith(
          _UpdatedCache value, $Res Function(_UpdatedCache) then) =
      __$UpdatedCacheCopyWithImpl<$Res>;
  $Res call({DateTime updatedAt});
}

/// @nodoc
class __$UpdatedCacheCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$UpdatedCacheCopyWith<$Res> {
  __$UpdatedCacheCopyWithImpl(
      _UpdatedCache _value, $Res Function(_UpdatedCache) _then)
      : super(_value, (v) => _then(v as _UpdatedCache));

  @override
  _UpdatedCache get _value => super._value as _UpdatedCache;

  @override
  $Res call({
    Object updatedAt = freezed,
  }) {
    return _then(_UpdatedCache(
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_UpdatedCache implements _UpdatedCache {
  const _$_UpdatedCache({@required this.updatedAt}) : assert(updatedAt != null);

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'EntryEvent.updateCache(updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedCache &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UpdatedCacheCopyWith<_UpdatedCache> get copyWith =>
      __$UpdatedCacheCopyWithImpl<_UpdatedCache>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult readFromCache(),
    @required TResult updateCache(DateTime updatedAt),
  }) {
    assert(readFromCache != null);
    assert(updateCache != null);
    return updateCache(updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult readFromCache(),
    TResult updateCache(DateTime updatedAt),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCache != null) {
      return updateCache(updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult readFromCache(_ReadFromCache value),
    @required TResult updateCache(_UpdatedCache value),
  }) {
    assert(readFromCache != null);
    assert(updateCache != null);
    return updateCache(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult readFromCache(_ReadFromCache value),
    TResult updateCache(_UpdatedCache value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCache != null) {
      return updateCache(this);
    }
    return orElse();
  }
}

abstract class _UpdatedCache implements EntryEvent {
  const factory _UpdatedCache({@required DateTime updatedAt}) = _$_UpdatedCache;

  DateTime get updatedAt;
  @JsonKey(ignore: true)
  _$UpdatedCacheCopyWith<_UpdatedCache> get copyWith;
}

/// @nodoc
class _$EntryStateTearOff {
  const _$EntryStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({@required Entry entry}) {
    return _Loaded(
      entry: entry,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

/// @nodoc
// ignore: unused_element
const $EntryState = _$EntryStateTearOff();

/// @nodoc
mixin _$EntryState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Entry entry),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Entry entry),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EntryStateCopyWith<$Res> {
  factory $EntryStateCopyWith(
          EntryState value, $Res Function(EntryState) then) =
      _$EntryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryStateCopyWithImpl<$Res> implements $EntryStateCopyWith<$Res> {
  _$EntryStateCopyWithImpl(this._value, this._then);

  final EntryState _value;
  // ignore: unused_field
  final $Res Function(EntryState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EntryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Entry entry),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Entry entry),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EntryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'EntryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Entry entry),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Entry entry),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EntryState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Entry entry});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object entry = freezed,
  }) {
    return _then(_Loaded(
      entry: entry == freezed ? _value.entry : entry as Entry,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.entry}) : assert(entry != null);

  @override
  final Entry entry;

  @override
  String toString() {
    return 'EntryState.loaded(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entry);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Entry entry),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Entry entry),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EntryState {
  const factory _Loaded({@required Entry entry}) = _$_Loaded;

  Entry get entry;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'EntryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Entry entry),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Entry entry),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EntryState {
  const factory _Error() = _$_Error;
}
