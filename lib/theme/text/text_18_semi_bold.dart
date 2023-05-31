// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText18s extends StatelessWidget {
  //
  final String? data;

  final Color? color;

  final int height;

  final int? maxLines;
  final bool isOverflow;
  final TextAlign? textAlign;
  final TextOverflow? overFlowType;

  MyText18s(
    this.data, {
    this.height = 20,
    this.color,
    this.maxLines,
    this.textAlign,
    this.overFlowType,
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
      overFlowType: overFlowType,
      fontWeight: FontWeight.w600,
    );
  }
}
