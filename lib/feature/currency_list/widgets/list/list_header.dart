import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:flutter/material.dart';

class CurrencyListHeader extends StatelessWidget {
//
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.h16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText14(
            MyStrings.currencies,
            color: MyColors.greyDarkA50,
          ),
          MyText14(
            MyStrings.rates,
            color: MyColors.greyDarkA50,
          ),
        ],
      ),
    );
  }
}
