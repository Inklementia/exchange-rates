// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/feature/currency_list/widgets/buttons/refresh_button.dart';
import 'package:exchangerates/feature/currency_list/widgets/buttons/settings_button.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:exchangerates/utils/media_helper.dart';

class CurrencyListAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: MyStrings.currency,
      canPop: false,
      centerTitle: false,
      actions: [
        CurrencyListRefreshButton(),
        CurrencyListSettingsButton(),
      ],
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
