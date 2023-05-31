// Package imports:
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
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
