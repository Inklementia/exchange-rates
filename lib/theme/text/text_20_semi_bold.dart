// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText20s extends StatelessWidget {
  //
  final String data;

  final Color? color;

  final bool isOverflow;
  final int? maxLines;
  final TextAlign? textAlign;

  MyText20s(
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
      height: 24,
      fontSize: 20,
      color: color,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.w600,
    );
  }
}
