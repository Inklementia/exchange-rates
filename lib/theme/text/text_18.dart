// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText18 extends StatelessWidget {
  //
  final String? data;

  final Color? color;

  final int? maxLines;
  final bool isOverflow;
  final TextAlign? textAlign;

  final int height;

  MyText18(
    this.data, {
    this.color,
    this.maxLines,
    this.textAlign,
    this.height = 23,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      color: color,
      fontSize: 18,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
    );
  }
}
