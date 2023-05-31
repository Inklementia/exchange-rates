// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'color_constants.dart';

abstract class MySystemUiOverlayStyle {
  //
  static const splash = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    //
    systemNavigationBarColor: MyColors.primary,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarDividerColor: MyColors.primary,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const lightStatusBar = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  );

  static const lightNavBar = SystemUiOverlayStyle(
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarDividerColor: MyColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const darkNavBar = SystemUiOverlayStyle(
    systemNavigationBarColor: MyColors.greyDark,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: MyColors.greyDark,
  );
}
