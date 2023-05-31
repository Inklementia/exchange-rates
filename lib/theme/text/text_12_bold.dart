// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText12b extends StatelessWidget {
  //
  final String data;

  final Color? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;
  final bool toUpperCase;

  MyText12b(
    this.data, {
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
      height: 15,
      color: color,
      fontSize: 12,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      toUpperCase: toUpperCase,
      fontWeight: FontWeight.w600,
    );
  }
}
