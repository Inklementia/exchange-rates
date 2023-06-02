// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/assets/icon_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';

enum AlertType {
  Error,
  Success,
}

extension AlertTypeExtension on AlertType {
  //
  String get icon {
    switch (this) {
      case AlertType.Error:
        return MyIcons.error;
      case AlertType.Success:
        return MyIcons.success;
    }
  }

  String get title {
    switch (this) {
      case AlertType.Error:
        return MyStrings.error;
      case AlertType.Success:
        return MyStrings.success;
    }
  }

  //

  Color get color {
    switch (this) {
      case AlertType.Error:
        return MyColors.redA25;
      case AlertType.Success:
        return MyColors.primaryLite;
    }
  }

  Color get borderColor {
    switch (this) {
      case AlertType.Error:
        return MyColors.red;
      case AlertType.Success:
        return MyColors.primary;
    }
  }
}
