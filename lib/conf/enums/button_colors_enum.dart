// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';

enum MyButtonColor {
  primary,
  secondary,
  red,
  white;
}

extension MyButtonColorExtension on MyButtonColor {
  //
  Color get backgroundColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.primary;
      case MyButtonColor.secondary:
        return MyColors.secondary;
      case MyButtonColor.red:
        return MyColors.red;
      case MyButtonColor.white:
        return MyColors.white;
    }
  }

  Color get textColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.white;
      case MyButtonColor.secondary:
        return MyColors.greyDark;
      case MyButtonColor.red:
        return MyColors.white;
      case MyButtonColor.white:
        return MyColors.black;
    }
  }

  Color get disabledColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.primaryA50;
      case MyButtonColor.secondary:
        return MyColors.greyDark;
      case MyButtonColor.secondary:
        return MyColors.greyDarkA50;
      case MyButtonColor.red:
        return MyColors.redA25;
      case MyButtonColor.white:
        return MyColors.whiteA50;
    }
  }
}
