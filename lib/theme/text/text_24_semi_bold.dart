// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText24s extends StatelessWidget {
  //
  final String data;

  final Color? color;

  final bool isOverflow;
  final int? maxLines;
  final TextAlign? textAlign;

  MyText24s(
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
      height: 35,
      color: color,
      fontSize: 24,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.w600,
    );
  }
}
