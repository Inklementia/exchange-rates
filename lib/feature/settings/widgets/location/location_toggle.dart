// Flutter imports:
import 'package:flutter/src/widgets/framework.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:exchangerates/feature/settings/mobx/store.dart';
import 'package:exchangerates/theme/default/default_cupertino_toggle.dart';

class SettingsLocationToggle extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<SettingsStore>();

    return Observer(
      builder: (_) {
        return MyCupertinoToggle(
          isActive: store.isLocationEnabled,
          onChanged: store.setIsLocationEnabled,
        );
      },
    );
  }
}
