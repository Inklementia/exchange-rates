import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/theme/default/default_shrimmer.dart';
import 'package:exchangerates/theme/text/text_18_semi_bold.dart';
import 'package:flutter/material.dart';

class CurrencyDetailsLoadingState extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: MyEdgeInsets.h20,
      children: [
        MyText18s(
          MyStrings.trend,
          color: MyColors.greyDark,
        ),
        SizedBox(height: 12),
        MyShrimmer(height: 250),
        SizedBox(height: 24),
        MyText18s(
          MyStrings.stats,
          color: MyColors.greyDark,
        ),
        SizedBox(height: 12),
        MyShrimmer(height: 90),
        SizedBox(height: 24),
        MyText18s(
          MyStrings.currency,
          color: MyColors.greyDark,
        ),
        SizedBox(height: 12),
        MyShrimmer(height: 120),
      ],
    );
  }
}
