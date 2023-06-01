import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/box_shadows_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/default/default_container.dart';
import 'package:flutter/cupertino.dart';

class CurrencyDetailsContainer extends StatelessWidget {
  //
  final Widget child;
  final double? height;
  final EdgeInsets? padding;

  CurrencyDetailsContainer({
    required this.child,
    this.height,
    this.padding = MyEdgeInsets.all20,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      height: height,
      padding: padding,
      color: MyColors.white,
      boxShadow: MyBoxShadows.bottom,
      borderRadius: MyBorderRadius.allRounded8,
      child: child,
    );
  }
}
