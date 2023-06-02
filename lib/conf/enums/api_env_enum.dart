// Flutter imports:
import 'package:flutter/foundation.dart' show kDebugMode;

enum Env { Prod }

// const String _domain = '';

extension EnvExtension on Env {
  //

  bool get isRelease => this == Env.Prod && !kDebugMode;
}
