import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/core/failure.dart';
import '../../domain/entry/entry.dart';
import '../../domain/entry/i_entry_repository.dart';

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
        return const Left(FormatFailure());
      }
    } else {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateCache({@required Entry entry}) async {
    try {
      await _sharedPreferences.setString(cachedEntryKey, entry.toJson());
      return const Right(unit);
    } on Exception catch (_) {
      return const Left(CacheFailure());
    }
  }
}
