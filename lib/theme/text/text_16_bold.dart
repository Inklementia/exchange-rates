// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_text.dart';

class MyText16b extends StatelessWidget {
  //
  final String data;

  final Color? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;
  MyText16b(
    this.data, {
    this.color,
    this.maxLines,
    this.textAlign,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      height: 20,
      fontSize: 16,
      color: color ?? MyColors.greyDark,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.bold,
    );
  }
}
