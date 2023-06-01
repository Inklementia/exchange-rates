// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/currency_list/redux/service.dart' as _i7;
import '../../feature/currency_list/redux/store.dart' as _i4;
import '../repository/currency_repository.dart' as _i3;
import '../repository/location_repository.dart' as _i5;
import 'navigator_service.dart' as _i6;

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
    gh.factory<_i3.CurrencyRepository>(() => _i3.CurrencyRepository());
    gh.singleton<_i4.CurrencyStore>(_i4.CurrencyStore());
    gh.factory<_i5.LocationRepository>(() => _i5.LocationRepository());
    gh.singleton<_i6.NavigatorService>(_i6.NavigatorService());
    gh.singleton<_i7.CurrencyService>(
        _i7.CurrencyService(gh<_i4.CurrencyStore>()));
    return this;
  }
}
