// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText12m extends StatelessWidget {
  //
  final String data;

  final Color? color;
  final int height;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;
  final bool toUpperCase;

  MyText12m(
    this.data, {
    this.height = 15,
    this.color,
    this.maxLines,
    this.textAlign,
    this.isOverflow = true,
    this.toUpperCase = false,
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
      toUpperCase: toUpperCase,
      fontWeight: FontWeight.w500,
    );
  }
}
