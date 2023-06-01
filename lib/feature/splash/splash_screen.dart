// Flutter imports:

import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/system_ui_overlay_style_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/feature/splash/widgets/content.dart';
import 'package:exchangerates/theme/default/default_no_app_bar.dart';
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
    addPostFrameCallback(() => service.refreshRates());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNoAppBar(isLight: true),
      backgroundColor: MyColors.greyLite,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: MySystemUiOverlayStyle.light,
        child: SplashContent(),
      ),
    );
  }
}
