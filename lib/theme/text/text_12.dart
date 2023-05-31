// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText12 extends StatelessWidget {
  //
  final String data;

  final Color? color;
  final int height;

  final int? maxLines;
  final TextAlign? textAlign;

  final TextDecoration decoration;

  final bool isOverflow;
  final bool toUpperCase;

  MyText12(
    this.data, {
    this.height = 15,
    this.color,
    this.maxLines,
    this.textAlign,
    this.isOverflow = true,
    this.toUpperCase = false,
    this.decoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      color: color,
      fontSize: 12,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      decoration: decoration,
      toUpperCase: toUpperCase,
    );
  }
}
