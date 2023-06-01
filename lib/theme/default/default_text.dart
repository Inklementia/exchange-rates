// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/font_constants.dart';
import 'default_shrimmer.dart';

class MyText extends StatelessWidget {
  //
  final String? data;

  final int height;
  final int fontSize;
  final double? letterSpacing;

  final Color? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;
  final bool toUpperCase;

  final FontWeight fontWeight;
  final TextDecoration decoration;
  final TextOverflow? overFlowType;

  MyText(
    this.data, {
    height,
    this.fontSize = 14,
    this.letterSpacing,
    //
    this.color = MyColors.greyDark,
    //
    this.maxLines,
    this.textAlign,
    //
    this.isOverflow = true,
    this.toUpperCase = false,
    //
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
    this.overFlowType = TextOverflow.ellipsis,
    //
  }) : this.height = height ?? fontSize;

  @override
  Widget build(BuildContext context) {
    if (data == null) return MyShrimmer(height: height.toDouble());

    return Text(
      toUpperCase ? data!.toUpperCase() : data!,
      style: TextStyle(
        color: color ?? MyColors.greyDark,
        fontWeight: fontWeight,
        decoration: decoration,
        fontFamily: MyFonts.main,
        letterSpacing: letterSpacing,
        fontSize: fontSize.toDouble(),
        height: (height / fontSize).toDouble(),
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: isOverflow ? overFlowType : null,
    );
  }
}
