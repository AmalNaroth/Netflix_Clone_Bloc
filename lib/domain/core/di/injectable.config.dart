// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/bloc/download_bloc.dart' as _i5;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i4;
import '../../downloads/i_downloads_repo.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IdownloadsRepo>(() => _i4.DownloadsRepository());
  gh.factory<_i5.DownloadBloc>(
      () => _i5.DownloadBloc(get<_i3.IdownloadsRepo>()));
  return get;
}