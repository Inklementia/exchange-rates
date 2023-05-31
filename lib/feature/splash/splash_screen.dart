// Flutter imports:
import 'dart:math';

import 'package:exchangerates/conf/assets/image_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/conf/values/system_ui_overlay_style_constants.dart';
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/core/navigator/routes_constants.dart';
import 'package:exchangerates/core/repository/currency_repository.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/theme/default/default_button.dart';
import 'package:exchangerates/theme/default/default_no_app_bar.dart';
import 'package:exchangerates/theme/text/text_16_semi_bold.dart';
import 'package:exchangerates/utils/media_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //
  List<double> generateRandomValues() {
    Random random = Random();
    List<double> randomValues =
        List.generate(5, (_) => random.nextDouble() * 9 + 1);
    return randomValues;
  }

  @override
  void initState() {
    injector<CurrencyRepository>().clearCollection();

    List<double> randomValues = generateRandomValues();

    List<Currency> currencies = [
      Currency(
        code: 'USD',
        description:
            'United States Dollar: The official currency of the United States, widely used in global trade and finance.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'EUR',
        description:
            'Euro: The official currency of the European Union, used by many European countries.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'JPY',
        description:
            'Japanese Yen: The currency of Japan, known for its stability and importance in the Asian economy.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'GBP',
        description:
            'British Pound Sterling: The currency of the United Kingdom, commonly used in international markets.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'AUD',
        description:
            'Australian Dollar: The currency of Australia, influenced by commodity prices and the country\'s economic performance.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'CAD',
        description:
            'Canadian Dollar: The currency of Canada, known for its correlation with oil prices and trade with the United States.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'CHF',
        description:
            'Swiss Franc: The currency of Switzerland, known for its stability and use as a safe-haven currency.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'CNY',
        description:
            'Chinese Yuan Renminbi: The currency of China, tightly controlled by the government and influential in global trade.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'INR',
        description:
            'Indian Rupee: The currency of India, widely used in South Asia and influenced by the country\'s economic policies.',
        exchangeRates: randomValues,
      ),
      Currency(
        code: 'BRL',
        description:
            'Brazilian Real: The currency of Brazil, influenced by commodity prices, economic reforms, and political developments.',
        exchangeRates: randomValues,
      )
    ];
    injector<CurrencyRepository>().populateCollection(currencies);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNoAppBar(isLight: true),
      backgroundColor: MyColors.primary,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: MySystemUiOverlayStyle.lightNavBar,
        child: Center(
          child: Column(
            children: [
              MyText16s(
                MyStrings.populatingTableWithRandomValues,
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
              MyButton.primary(
                label: 'label',
                onTap: () => injector<NavigatorService>()
                    .pushNamed(MyRoutes.currencyList),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
