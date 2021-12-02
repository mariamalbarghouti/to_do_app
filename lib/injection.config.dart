// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/display_notes_cubit/display_note_inside_pages_cubit/display_note_inside_pages_cubit.dart'
    as _i6;
import 'application/note_form_bottom_sheet_cubit/note_form_cubit.dart' as _i7;
import 'domain/note/note_repo.dart' as _i3;
import 'infrastructure/core/sql_module.dart' as _i8;
import 'infrastructure/notes/note_repo_impl.dart' as _i4;
import 'local_database/database_helper.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sQLModule = _$SQLModule();
  gh.singleton<_i3.NoteRepository>(_i4.NoteRepositoryImp());
  gh.singleton<_i5.SQLHelper>(sQLModule.dbHelper);
  gh.factory<_i6.DisplayNoteInsidePagesCubit>(
      () => _i6.DisplayNoteInsidePagesCubit(get<_i3.NoteRepository>()));
  gh.factory<_i7.NoteFormCubit>(
      () => _i7.NoteFormCubit(get<_i3.NoteRepository>()));
  return get;
}

class _$SQLModule extends _i8.SQLModule {}
