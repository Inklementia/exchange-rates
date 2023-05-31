// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText20 extends StatelessWidget {
  //
  final String data;

  final Color? color;

  final bool isOverflow;
  final int? maxLines;
  final int? height;
  final TextAlign? textAlign;
  final String? fontFamily;

  MyText20(
    this.data, {
    this.color,
    this.maxLines,
    this.textAlign,
    this.fontFamily,
    this.isOverflow = false,
    this.height = 24,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      height: height,
      fontSize: 20,
      color: color,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
    );
  }
}
