import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/text/text_12_medium.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'package:flutter/material.dart';

class CurrencyDetailsStatItem extends StatelessWidget {
  //
  final String stat;
  final String value;

  CurrencyDetailsStatItem({
    required this.stat,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText12m(
          stat,
          color: MyColors.greyDarkA50,
        ),
        SizedBox(height: 8),
        MyText16m(
          value,
          color: MyColors.greyDark,
        ),
      ],
    );
  }
}
