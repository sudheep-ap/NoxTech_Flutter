// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:noxtech_flutter/data/data_sources/Home/home_data_source_impl.dart'
    as _i4;
import 'package:noxtech_flutter/data/repositories/Home/home_repository_impl.dart'
    as _i7;
import 'package:noxtech_flutter/domain/data_sources/Home/home_data_source.dart'
    as _i3;
import 'package:noxtech_flutter/domain/repositories/Home/home_repository.dart'
    as _i6;
import 'package:noxtech_flutter/domain/use_cases/Home/home_use_case.dart'
    as _i8;
import 'package:noxtech_flutter/domain/use_cases/Home/home_use_case_impl.dart'
    as _i9;
import 'package:noxtech_flutter/presentation/screens/Home/bloc/home_bloc.dart'
    as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HomeDataSource>(
        () => _i4.HomeRepositoryImpl(gh<_i5.Client>()));
    gh.lazySingleton<_i6.HomeRepository>(
        () => _i7.HomeRepositoryImpl(homeDataSource: gh<_i3.HomeDataSource>()));
    gh.lazySingleton<_i8.HomeUseCase>(
        () => _i9.HomeUseCaseImpl(gh<_i6.HomeRepository>()));
    gh.lazySingleton<_i10.HomeBloc>(() => _i10.HomeBloc(gh<_i8.HomeUseCase>()));
    return this;
  }
}
