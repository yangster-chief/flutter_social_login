// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:flutter_social_login/core/app_module.dart' as _i6;
import 'package:flutter_social_login/core/firebase_service.dart' as _i4;
import 'package:flutter_social_login/core/hive_service.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.FirebaseAuth>(() => appModule.auth);
    await gh.factoryAsync<_i4.FirebaseService>(
      () => appModule.fireService,
      preResolve: true,
    );
    await gh.factoryAsync<_i5.HiveService>(
      () => appModule.hiveService,
      preResolve: true,
    );
    return this;
  }
}

class _$AppModule extends _i6.AppModule {}
