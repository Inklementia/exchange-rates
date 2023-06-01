import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/feature/currency_details/mobx/store.dart';
import 'package:exchangerates/feature/currency_details/widgets/chart/chart.dart';
import 'package:exchangerates/feature/currency_details/widgets/containers/details_container.dart';
import 'package:exchangerates/feature/currency_details/widgets/items/stat_item.dart';
import 'package:exchangerates/theme/items/item_country.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:exchangerates/theme/text/text_18_semi_bold.dart';
import 'package:exchangerates/utils/currency_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CurrencyDetailsContent extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<CurrencyDetailsStore>();

    return Observer(
      builder: (_) {
        final model = store.model!;

        return ListView(
          padding: MyEdgeInsets.h20,
          children: [
            MyText18s(
              MyStrings.trend,
              color: MyColors.greyDark,
            ),
            SizedBox(height: 12),
            CurrencyDetailsContainer(
              height: 250,
              child: CurrencyDetailsChart(
                rates: model.exchangeRates,
              ),
            ),
            SizedBox(height: 24),
            MyText18s(
              MyStrings.stats,
              color: MyColors.greyDark,
            ),
            SizedBox(height: 12),
            CurrencyDetailsContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CurrencyDetailsStatItem(
                    stat: MyStrings.high,
                    value: MyCurrencyHelper.highestValue(model.exchangeRates)
                        .toStringAsFixed(4),
                  ),
                  CurrencyDetailsStatItem(
                    stat: MyStrings.low,
                    value: MyCurrencyHelper.lowestValue(model.exchangeRates)
                        .toStringAsFixed(4),
                  ),
                  CurrencyDetailsStatItem(
                    stat: MyStrings.average,
                    value: MyCurrencyHelper.avgValue(model.exchangeRates)
                        .toStringAsFixed(4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            MyText18s(
              MyStrings.currency,
              color: MyColors.greyDark,
            ),
            SizedBox(height: 12),
            CurrencyDetailsContainer(
              child: Column(
                children: [
                  CurrencyCountry(
                    currencyCode: model.code,
                    countryCode: model.countryCode!,
                  ),
                  SizedBox(height: 16),
                  MyText14(
                    model.description!,
                    color: MyColors.greyDarkA60,
                    maxLines: 10,
                    height: 21,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
