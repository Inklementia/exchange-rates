// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText20b extends StatelessWidget {
  //
  final String data;

  final Color color;

  final bool isOverflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final String? fontFamily;

  MyText20b(
    this.data, {
    required this.color,
    this.maxLines,
    this.textAlign,
    this.fontFamily,
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
      fontWeight: FontWeight.bold,
    );
  }
}
