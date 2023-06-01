// Flutter imports:

import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/conf/values/system_ui_overlay_style_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/theme/container/empty_container.dart';
import 'package:exchangerates/theme/default/default_no_app_bar.dart';
import 'package:exchangerates/theme/text/text_16_semi_bold.dart';
import 'package:exchangerates/utils/collection_seeder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //
  late CurrencyService service;

  @override
  void initState() {
    //
    service = injector<CurrencyService>();

    addPostFrameCallback(() => service.resetTable());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNoAppBar(isLight: true),
      backgroundColor: MyColors.primary,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: MySystemUiOverlayStyle.lightNavBar,
        child: StreamBuilder<bool>(
          stream: service.loading$,
          initialData: service.loading,
          builder: (context, snapshot) {
            final isLoading = snapshot.data ?? false;
            if (isLoading)
              return MyText16s(
                MyStrings.populatingTableWithRandomValues,
                maxLines: 2,
              );
            return EmptyContainer();
          },
        ),
      ),
    );
  }
}
