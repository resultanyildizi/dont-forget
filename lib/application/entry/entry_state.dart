part of 'entry_bloc.dart';

@freezed
abstract class EntryState with _$EntryState {
  const factory EntryState.initial() = _Initial;
  const factory EntryState.loading() = _Loading;
  const factory EntryState.loaded({@required Entry entry}) = _Loaded;
  const factory EntryState.error() = _Error;
}
