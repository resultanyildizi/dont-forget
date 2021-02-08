import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../core/failure.dart';
import 'entry.dart';

abstract class IEntryRepository {
  Future<Either<Failure, Entry>> readFromCache();
  Future<Either<Failure, Unit>> updateCache({@required Entry entry});
}
