// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText16 extends StatelessWidget {
  //
  final String data;

  final Color? color;

  final bool isOverflow;
  final int? maxLines;
  final TextAlign? textAlign;

  final int height;

  MyText16(
    this.data, {
    this.color,
    this.maxLines,
    this.textAlign,
    this.isOverflow = false,
    this.height = 20,
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
    );
  }
}
