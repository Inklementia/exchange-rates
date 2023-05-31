// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_text.dart';

class MyText18m extends StatelessWidget {
  //
  final String? data;

  final Color? color;

  final int? maxLines;
  final bool isOverflow;
  final TextAlign? textAlign;
  final TextOverflow? overFlowType;

  MyText18m(
    this.data, {
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
      height: 20,
      fontSize: 18,
      color: color,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      overFlowType: overFlowType,
      fontWeight: FontWeight.w500,
    );
  }
}
