// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';

class MyDivider extends StatelessWidget {
  //
  final Color color;

  final double height;
  final double hPadding;
  final double thickness;

  final double? leftPadding, rightPadding;

  MyDivider({
    this.height = 1,
    //
    this.leftPadding,
    this.rightPadding,
    //
    this.hPadding = 0,
    this.thickness = 1,
    //
    this.color = MyColors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
      thickness: thickness,
      indent: leftPadding ?? hPadding,
      endIndent: rightPadding ?? hPadding,
    );
  }
}
