// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_text.dart';

class MyText24 extends StatelessWidget {
  //
  final String data;

  final Color color;

  final bool isOverflow;
  final int? maxLines;
  final TextAlign? textAlign;

  MyText24(
    this.data, {
    this.color = MyColors.greyDark,
    this.maxLines,
    this.textAlign,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      height: 35,
      fontSize: 24,
      color: color,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
    );
  }
}
