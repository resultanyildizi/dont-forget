import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'application/entry/entry_bloc.dart';
import 'domain/entry/i_entry_repository.dart';
import 'infrastructure/entry/entry_repository.dart';

final g = GetIt.instance;

Future<void> setup() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  g.registerFactory<EntryBloc>(() => EntryBloc(g<IEntryRepository>()));
  g.registerLazySingleton<IEntryRepository>(() => EntryRepository(g()));
  g.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
