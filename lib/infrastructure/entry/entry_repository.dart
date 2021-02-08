import 'package:dartz/dartz.dart';
import 'package:dont_forget/domain/core/failure.dart';
import 'package:dont_forget/domain/entry/entry.dart';
import 'package:dont_forget/domain/entry/i_entry_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EntryRepository implements IEntryRepository {
  static const cachedEntryKey = 'CACHED_ENTRY_KEY';
  final SharedPreferences _sharedPreferences;

  EntryRepository(this._sharedPreferences);

  @override
  Future<Either<Failure, Entry>> readFromCache() async {
    final entryJsonStr = _sharedPreferences.getString(cachedEntryKey);

    if (entryJsonStr != null) {
      try {
        return Right(Entry.fromJson(entryJsonStr));
      } on FormatException catch (_) {
        return Left(FormatFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  updateCache() {
    // TODO: implement updateCache
    throw UnimplementedError();
  }
}
