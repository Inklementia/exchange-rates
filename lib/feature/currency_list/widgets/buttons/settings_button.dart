import 'package:exchangerates/conf/assets/icon_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/core/navigator/routes_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/theme/default/default_icon.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyListSettingsButton extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyIcon(
        icon: MyIcons.settings,
        color: MyColors.primary,
        padding: MyEdgeInsets.right16,
        onTap: onTap,
        size: 24,
      ),
    );
  }

  void onTap() {
    injector<NavigatorService>().pushNamed(MyRoutes.settings);
  }
}
