// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'color_constants.dart';

abstract class MySystemUiOverlayStyle {
  //

  static const light = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    //
    systemNavigationBarColor: MyColors.greyLite,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarDividerColor: MyColors.greyLite,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
}
