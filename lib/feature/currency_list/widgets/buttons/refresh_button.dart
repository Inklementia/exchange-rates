import 'package:exchangerates/conf/assets/icon_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/theme/default/default_icon.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyListRefreshButton extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyIcon(
        icon: MyIcons.refresh,
        color: MyColors.primary,
        padding: MyEdgeInsets.right16,
        onTap: onTap,
        size: 24,
      ),
    );
  }

  void onTap() {
    injector<CurrencyService>().refreshRates();
  }
}
