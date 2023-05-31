// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';

class MyProgressIndicator extends StatelessWidget {
  //
  final double? size;
  final double strokeWidth;

  final Color color;
  final EdgeInsets margin;

  MyProgressIndicator({
    this.size,
    this.strokeWidth = 4,
    //
    this.color = MyColors.primary,
    this.margin = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: margin,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
