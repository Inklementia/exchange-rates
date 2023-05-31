// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText18b extends StatelessWidget {
  //
  final String? data;

  final Color color;

  final int? maxLines;
  final bool isOverflow;
  final TextAlign? textAlign;
  final String? fontFamily;

  MyText18b(
    this.data, {
    required this.color,
    this.maxLines,
    this.fontFamily,
    this.textAlign,
    this.isOverflow = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      height: 23,
      fontSize: 18,
      color: color,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      fontWeight: FontWeight.bold,
    );
  }
}
