// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_container.dart';

class MyShrimmer extends StatelessWidget {
  //
  final double? height;
  final bool isOverflow;

  MyShrimmer({
    this.height = 20,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[200]!,
        highlightColor: Colors.grey[100]!,
        direction: ShimmerDirection.ltr,
        child: MyContainer(
          height: height,
          color: MyColors.grey,
          borderRadius: MyBorderRadius.allRounded10,
        ),
      ),
    );
  }
}
