// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/download_bloc.dart' as _i9;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i10;
import '../../../application/home/home_screen_bloc.dart' as _i11;
import '../../../application/hotandnew/hotand_new_bloc.dart' as _i12;
import '../../../application/search/search_bloc.dart' as _i13;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i6;
import '../../../infrastructure/hot&new/hot&new_repository.dart' as _i4;
import '../../../infrastructure/search/search_repository.dart' as _i8;
import '../../downloads/i_downloads_repo.dart' as _i5;
import '../../new&hot/services/hot&new_services.dart' as _i3;
import '../../search/search_services/search_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.HotandNewServices>(() => _i4.HotandNewRepository());
  gh.lazySingleton<_i5.IdownloadsRepo>(() => _i6.DownloadsRepository());
  gh.lazySingleton<_i7.SearchServices>(() => _i8.SearchRepository());
  gh.factory<_i9.DownloadBloc>(
      () => _i9.DownloadBloc(get<_i5.IdownloadsRepo>()));
  gh.factory<_i10.FastLaughBloc>(
      () => _i10.FastLaughBloc(get<_i5.IdownloadsRepo>()));
  gh.factory<_i11.HomeScreenBloc>(
      () => _i11.HomeScreenBloc(get<_i3.HotandNewServices>()));
  gh.factory<_i12.HotandNewBloc>(
      () => _i12.HotandNewBloc(get<_i3.HotandNewServices>()));
  gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
        get<_i5.IdownloadsRepo>(),
        get<_i7.SearchServices>(),
      ));
  return get;
}
