import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/feature/settings/widgets/location/location_item.dart';
import 'package:flutter/widgets.dart';

class SettingsContent extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: MyEdgeInsets.all20,
      children: [
        SettingsLocationItem(),
      ],
    );
  }
}
