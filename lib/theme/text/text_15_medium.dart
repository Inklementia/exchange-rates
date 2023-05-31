// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_text.dart';

class MyText15m extends StatelessWidget {
  //
  final String? data;

  final Color? color;

  final bool isOverflow;
  final int? maxLines;
  final TextAlign? textAlign;

  final int height;

  MyText15m(
    this.data, {
    this.color = MyColors.black,
    this.maxLines,
    this.textAlign,
    this.isOverflow = true,
    this.height = 18,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      fontSize: 15,
      color: color,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.w500,
    );
  }
}
