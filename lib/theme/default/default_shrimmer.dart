// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';

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
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        direction: ShimmerDirection.ltr,
        child: Container(height: height, color: MyColors.greyDark),
      ),
    );
  }
}
