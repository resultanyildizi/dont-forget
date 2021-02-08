import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entry/entry.dart';
import '../../domain/entry/i_entry_repository.dart';

part 'entry_bloc.freezed.dart';
part 'entry_event.dart';
part 'entry_state.dart';

class EntryBloc extends Bloc<EntryEvent, EntryState> {
  final IEntryRepository _iEntryRepository;
  EntryBloc(this._iEntryRepository) : super(const EntryState.initial());

  @override
  Stream<EntryState> mapEventToState(
    EntryEvent event,
  ) async* {
    yield* event.map(
      readFromCache: (_) async* {
        yield const EntryState.loading();
        final failureOrEntry = await _iEntryRepository.readFromCache();

        yield failureOrEntry.fold(
          (_) => const EntryState.error(),
          (entry) => EntryState.loaded(entry: entry),
        );
      },
      updateCache: (e) async* {
        Entry toggledEntry;
        final failureOrEntry = await _iEntryRepository.readFromCache();
        failureOrEntry.fold(
          (_) {
            toggledEntry = Entry(value: true, updatedAt: e.updatedAt);
          },
          (entry) {
            toggledEntry =
                entry.copyWith(value: !entry.value, updatedAt: e.updatedAt);
          },
        );

        final failureOrUnit =
            await _iEntryRepository.updateCache(entry: toggledEntry);

        if (failureOrUnit.isLeft()) {
          yield const EntryState.error();
        } else {
          add(const EntryEvent.readFromCache());
        }
      },
    );
  }
}
