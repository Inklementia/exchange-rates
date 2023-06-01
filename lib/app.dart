// Flutter imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/font_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/core/navigator/route_generator.dart';
import 'package:exchangerates/core/navigator/routes_constants.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/utils/media_helper.dart';
import 'package:exchangerates/utils/my_scroll_behavior.dart';
import 'package:flutter/material.dart';

// Project imports:

class MyApp extends StatefulWidget {
  //
  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  //
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: MyFonts.main,
        primaryColor: MyColors.primary,
        colorScheme: ColorScheme.light(
          primary: MyColors.primary,
          secondary: MyColors.secondary,
        ),
      ),
      //
      builder: builder,
      initialRoute: MyRoutes.splash,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (_) => MyStrings.appName,
      //
      navigatorKey: NavigatorService.key,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorObservers: <NavigatorObserver>[],
    );
  }

  Widget builder(context, child) {
    MediaHelper.init(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Builder(
        builder: (_) => ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: child,
        ),
      ),
    );
  }
}
