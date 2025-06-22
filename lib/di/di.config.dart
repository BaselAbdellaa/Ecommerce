// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

import '../api/dataSource/categories_online_data_source_impl.dart' as _i45;
import '../api/di.dart' as _i691;
import '../api/web_services.dart' as _i682;
import '../data/dataSource/categories_online_data_source.dart' as _i722;
import '../data/repos/categories_repo_impl.dart' as _i872;
import '../domain/repos/categories_repo.dart' as _i776;
import '../domain/use_case/get_categories_use_case.dart' as _i1024;
import '../presentation/features/main_layout/home/presentation/home_view_model.dart'
    as _i979;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.singleton<_i361.BaseOptions>(() => networkModule.provideBaseOptions());
    gh.singleton<_i528.PrettyDioLogger>(
      () => networkModule.providePrettyDioLogger(),
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.provideDio(
        gh<_i361.BaseOptions>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.singleton<_i682.WebServices>(
      () => networkModule.provideWebServices(gh<_i361.Dio>()),
    );
    gh.factory<_i722.CategoriesOnlineDataSource>(
      () => _i45.CategoriesOnlineDataSourceImpl(gh<_i682.WebServices>()),
    );
    gh.factory<_i776.CategoriesRepo>(
      () => _i872.CategoriesRepoImpl(gh<_i722.CategoriesOnlineDataSource>()),
    );
    gh.factory<_i1024.GetCategoriesUseCase>(
      () => _i1024.GetCategoriesUseCase(gh<_i776.CategoriesRepo>()),
    );
    gh.factory<_i979.HomeViewModel>(
      () => _i979.HomeViewModel(gh<_i1024.GetCategoriesUseCase>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i691.NetworkModule {}
