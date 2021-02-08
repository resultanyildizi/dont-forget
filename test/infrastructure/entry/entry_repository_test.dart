import 'package:dartz/dartz.dart';
import 'package:dont_forget/domain/core/failure.dart';
import 'package:dont_forget/domain/entry/entry.dart';
import 'package:dont_forget/domain/entry/i_entry_repository.dart';
import 'package:dont_forget/infrastructure/entry/entry_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  final tEntry = Entry(value: true, updatedAt: DateTime.now());
  final tEntryJson = tEntry.toJson();
  MockSharedPreferences mockSharedPreferences;
  EntryRepository entryRepository;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    entryRepository = EntryRepository(mockSharedPreferences);
  });

  group('EntryRepository', () {
    test('should implement IEntryRepository', () {
      // assert
      expect(entryRepository, isA<IEntryRepository>());
    });

    group('readFromCache', () {
      test(
        'should return [Right<Failure, Entry>] when mockSharedPreferences.getString() is successful',
        () async {
          // arrange
          final tEntryFromJson = Entry.fromJson(tEntryJson);
          when(mockSharedPreferences.getString(any)).thenReturn(tEntryJson);
          // act
          final result = await entryRepository.readFromCache();
          // assert
          verify(
            mockSharedPreferences.getString(EntryRepository.cachedEntryKey),
          );

          expect(result, equals(Right<Failure, Entry>(tEntryFromJson)));
        },
      );
      test(
        'should return [Left<Failure, Entry>] when mockSharedPreferences.getString() is not successful',
        () async {
          // arrange
          when(mockSharedPreferences.getString(any)).thenReturn(null);
          // act
          final result = await entryRepository.readFromCache();
          // assert
          verify(
            mockSharedPreferences.getString(EntryRepository.cachedEntryKey),
          );

          expect(result, equals(const Left<Failure, Entry>(CacheFailure())));
        },
      );

      test(
        'should return [Left<Failure, Entry>] when mockSharedPreferences.getString() returns invalid json string',
        () async {
          // arrange
          when(mockSharedPreferences.getString(any))
              .thenReturn('adfas, asdfa, asdf');
          // act
          final result = await entryRepository.readFromCache();
          // assert
          verify(
            mockSharedPreferences.getString(EntryRepository.cachedEntryKey),
          );

          expect(result, equals(const Left<Failure, Entry>(FormatFailure())));
        },
      );
    });

    group('updateCache', () {
      test(
        'should return [Right<Failure, Unit>]  when mockSharedPreferences.setString() is successful',
        () async {
          // act
          final result = await entryRepository.updateCache(entry: tEntry);
          // assert
          verify(
            mockSharedPreferences.setString(
              EntryRepository.cachedEntryKey,
              tEntryJson,
            ),
          );

          expect(result, equals(const Right<Failure, Unit>(unit)));
        },
      );

      test(
        'should return [Left<Failure, Unit>]  when mockSharedPreferences.setString() throws an exception',
        () async {
          // arrange
          when(mockSharedPreferences.setString(any, any))
              .thenThrow(Exception());
          // act
          final result = await entryRepository.updateCache(entry: tEntry);
          // assert

          expect(result, equals(const Left<Failure, Unit>(CacheFailure())));
        },
      );
    });
  });
}
