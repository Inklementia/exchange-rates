import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/box_shadows_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/core/navigator/routes_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/theme/default/default_inkwell.dart';
import 'package:exchangerates/theme/items/item_country.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:flutter/material.dart';

class CurrecyItem extends StatelessWidget {
  //
  final Currency model;

  CurrecyItem({required this.model});

  @override
  Widget build(BuildContext context) {
    List<double> rates = model.exchangeRates;
    double lastRate = double.parse(rates.last.toStringAsFixed(4));
    double previousRate = rates[rates.length - 2];
    double ratio = (lastRate - previousRate) / previousRate * 100;
    String sign = ratio >= 0 ? '+' : '';
    Color color = ratio >= 0 ? MyColors.green : MyColors.red;

    return MyInkWell(
      onTap: onTap,
      color: MyColors.white,
      padding: MyEdgeInsets.all16,
      margin: MyEdgeInsets.bottom16,
      boxShadow: MyBoxShadows.bottom,
      borderRadius: MyBorderRadius.allRounded8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CurrencyCountry(
              currencyCode: model.code,
              countryCode: model.countryCode!,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText14(
                  lastRate.toString(),
                  height: 21,
                  textAlign: TextAlign.start,
                ),
                SizedBox(width: 12),
                MyText14(
                  sign + ratio.toStringAsFixed(2) + '%',
                  color: color,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTap() {
    injector<NavigatorService>().pushNamed(
      MyRoutes.currencyDetails,
      arguments: model.code,
    );
  }
}
