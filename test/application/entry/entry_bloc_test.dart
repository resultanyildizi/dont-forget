import 'package:dartz/dartz.dart';
import 'package:dont_forget/application/entry/entry_bloc.dart';
import 'package:dont_forget/domain/core/failure.dart';
import 'package:dont_forget/domain/entry/entry.dart';
import 'package:dont_forget/domain/entry/i_entry_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockEntryRepository extends Mock implements IEntryRepository {}

void main() {
  MockEntryRepository mockEntryRepository;
  EntryBloc entryBloc;
  Entry tEntry;

  setUp(() {
    mockEntryRepository = MockEntryRepository();
    entryBloc = EntryBloc(mockEntryRepository);
    tEntry = Entry(value: true, updatedAt: DateTime(2021, 2, 9, 11, 20));
  });

  tearDown(() {
    entryBloc?.close();
  });
  group('EntryBloc', () {
    test('should have [EntryInitial] state at the beginning', () {
      expect(
        entryBloc.state,
        equals(const EntryState.initial()),
      );
    });

    test('should not emit new events when closed', () {
      // arrange
      final expectedStates = [emitsDone];

      // assert
      expectLater(entryBloc, emitsInOrder(expectedStates));

      // act
      entryBloc.close();
      entryBloc.add(const EntryEvent.readFromCache());
    });

    /* ------------------------------------------------------------------------------------------------------------------ */

    group('EntryReadFromCache event is added', () {
      test(
        'should call entryRepository.readFromCache();',
        () async {
          // arrange
          when(mockEntryRepository.readFromCache())
              .thenAnswer((_) async => Right<Failure, Entry>(tEntry));
          // act
          entryBloc.add(const EntryEvent.readFromCache());
          await untilCalled(mockEntryRepository.readFromCache());

          // assert
          verify(mockEntryRepository.readFromCache());
        },
      );
      test(
        'should emit [EntryLoading, EntryLoaded] with toggled tEntry when reading is successful',
        () {
          // arrange
          final expectedStates = [
            const EntryState.loading(),
            EntryState.loaded(entry: tEntry)
          ];

          when(mockEntryRepository.readFromCache())
              .thenAnswer((_) async => Right<Failure, Entry>(tEntry));

          // assert
          expectLater(entryBloc, emitsInOrder(expectedStates));

          // act
          entryBloc.add(const EntryEvent.readFromCache());
        },
      );

      group('for failure types', () {
        final failures = [const CacheFailure(), const FormatFailure()];

        for (final failure in failures) {
          test(
            'failure ${failure.toString()}: should emit [EntryLoading, EntryError]',
            () {
              // arrange
              final expectedStates = [
                const EntryState.loading(),
                const EntryState.error(),
              ];

              when(mockEntryRepository.readFromCache())
                  .thenAnswer((_) async => Left<Failure, Entry>(failure));

              // assert
              expectLater(entryBloc, emitsInOrder(expectedStates));

              // act
              entryBloc.add(const EntryEvent.readFromCache());
            },
          );
        }
      });
    });

    /* ------------------------------------------------------------------------------------------------------------------ */

    group('EntryUpdateCache event is added', () {
      test(
        'should call entryRepository.updateCache() and entryRepository.readFromCache() when reading is successful',
        () async {
          // arrange
          final time = DateTime.now();
          final toggledTEntry =
              tEntry.copyWith(value: !tEntry.value, updatedAt: time);

          when(mockEntryRepository.readFromCache())
              .thenAnswer((_) async => Right<Failure, Entry>(tEntry));

          when(mockEntryRepository.updateCache(entry: anyNamed('entry')))
              .thenAnswer((_) async => const Right<Failure, Unit>(unit));

          // act
          entryBloc.add(EntryEvent.updateCache(updatedAt: time));
          await untilCalled(
              mockEntryRepository.updateCache(entry: toggledTEntry));

          // assert
          verify(mockEntryRepository.readFromCache());
        },
      );

      test(
        'should call entryRepository.updateCache() and entryRepository.readFromCache() when reading is not successful',
        () async {
          // arrange
          final time = DateTime.now();
          final newEntry = Entry(value: true, updatedAt: time);

          when(mockEntryRepository.readFromCache()).thenAnswer(
              (_) async => const Left<Failure, Entry>(Failure.cacheFailure()));

          when(mockEntryRepository.updateCache(entry: anyNamed('entry')))
              .thenAnswer((_) async => const Right<Failure, Unit>(unit));

          // act
          entryBloc.add(EntryEvent.updateCache(updatedAt: time));
          await untilCalled(mockEntryRepository.updateCache(entry: newEntry));

          // assert
          verify(mockEntryRepository.readFromCache());
        },
      );

      test(
        'should emit [EntryError] if update is not successful',
        () {
          // arrange
          final expectedStates = [
            const EntryState.error(),
          ];

          when(mockEntryRepository.readFromCache())
              .thenAnswer((_) async => Right<Failure, Entry>(tEntry));

          when(mockEntryRepository.updateCache(entry: anyNamed('entry')))
              .thenAnswer((_) async =>
                  const Left<Failure, Unit>(Failure.cacheFailure()));

          // assert
          expectLater(entryBloc, emitsInOrder(expectedStates));

          // act
          entryBloc.add(EntryEvent.updateCache(updatedAt: DateTime.now()));
        },
      );

      group('for failure types', () {
        final failures = [const CacheFailure(), const FormatFailure()];

        for (final failure in failures) {
          test(
            'failure ${failure.toString()}: should emit [EntryLoading, EntryError]',
            () {
              // arrange
              final expectedStates = [
                const EntryState.loading(),
                const EntryState.error(),
              ];

              when(mockEntryRepository.readFromCache())
                  .thenAnswer((_) async => Left<Failure, Entry>(failure));

              // assert
              expectLater(entryBloc, emitsInOrder(expectedStates));

              // act
              entryBloc.add(const EntryEvent.readFromCache());
            },
          );
        }
      });
    });
  });
}
