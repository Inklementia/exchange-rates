// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_text.dart';

class MyText14s extends StatelessWidget {
  //
  final String data;

  final Color color;

  final int height;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;

  MyText14s(
    this.data, {
    this.color = MyColors.greyDark,
    this.maxLines,
    this.textAlign,
    this.height = 18,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      color: color,
      fontSize: 14,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.w600,
    );
  }
}
