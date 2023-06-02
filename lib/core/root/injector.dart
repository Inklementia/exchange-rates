// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'injector.config.dart';

final injector = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
  preferRelativeImports: true,
)
void configureDependencies() => injector.init();

Future<void> resetDependencies() async {
  await injector.reset();
  configureDependencies();
}
