// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_text.dart';

class MyText14s extends StatelessWidget {
  //
  final String data;

  final Color color;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;

  MyText14s(
    this.data, {
    this.color = MyColors.navi,
    this.maxLines,
    this.textAlign,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      height: 16,
      fontSize: 14,
      color: color,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.w600,
    );
  }
}
