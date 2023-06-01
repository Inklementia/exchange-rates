import 'package:exchangerates/feature/settings/mobx/store.dart';
import 'package:exchangerates/theme/default/default_cupertino_toggle.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SettingsLocationToggle extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<SettingsStore>();

    return Observer(
      builder: (_) {
        return MyCupertinoToggle(
          isActive: store.isActive,
          onChanged: (value) {
            store.setIsActive(value);
            if (value)
              store.startLocationTracking();
            else
              store.stopLocationTracking();
          },
        );
      },
    );
  }
}
