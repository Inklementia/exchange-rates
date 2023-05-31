// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/default/default_inkwell.dart';
import 'package:exchangerates/conf/values/color_constants.dart';

class MyInfoContainer extends StatelessWidget {
  //
  final Widget child;
  final Color? color;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  final bool showBorder;
  final Color borderColor;

  final void Function()? onTap;

  MyInfoContainer({
    required this.child,
    this.color = MyColors.white,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.all16,
    //
    this.showBorder = false,
    this.borderColor = MyColors.greyLite,
    //
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MyInkWell(
      onTap: onTap,
      color: color,
      child: child,
      margin: margin,
      padding: padding,
      borderRadius: MyBorderRadius.allRounded10,
      border: showBorder ? Border.all(color: borderColor) : null,
    );
  }
}
