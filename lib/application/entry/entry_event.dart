part of 'entry_bloc.dart';

@freezed
abstract class EntryEvent with _$EntryEvent {
  const factory EntryEvent.readFromCache() = _ReadFromCache;
  const factory EntryEvent.updateCache({@required DateTime updatedAt}) =
      _UpdatedCache;
}
