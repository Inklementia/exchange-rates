// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_text.dart';

class MyText16m extends StatelessWidget {
  //
  final data;

  final Color? color;

  final int height;
  final int? maxLines;
  final bool isOverflow;
  final TextAlign? textAlign;

  MyText16m(
    this.data, {
    this.maxLines,
    this.textAlign,
    this.height = 20,
    this.isOverflow = true,
    this.color = MyColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      fontSize: 16,
      color: color,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.w500,
    );
  }
}
