// Flutter imports:
import 'package:exchangerates/feature/currency_details/currency_details_screen.dart';
import 'package:exchangerates/feature/currency_list/currency_list_screen.dart';
import 'package:exchangerates/feature/error/error_screen.dart';
import 'package:exchangerates/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'routes_constants.dart';

class RouteGenerator {
  //

  static Route route(
    String? name,
    Widget widget, {
    bool isFade = false,
    bool isSlide = false,
    bool opaque = true,
  }) {
    if (isFade)
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(curve: Curves.ease, parent: animation);
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    else if (isSlide)
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return new SlideTransition(
            position: new Tween<Offset>(
              begin: Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      );
    else
      return MaterialPageRoute(
        builder: (_) => widget,
        settings: RouteSettings(name: name),
      );
  }

  //

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case MyRoutes.splash:
        return route(
          settings.name,
          SplashScreen(),
          isFade: true,
        );

      case MyRoutes.currencyList:
        return route(
          settings.name,
          CurrencyListScreen(),
          isFade: true,
        );

      case MyRoutes.currencyDetails:
        if (args is String)
          return route(
            settings.name,
            CurrencyDetailsScreen(code: args),
          );
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => ErrorScreen());
  }
}
