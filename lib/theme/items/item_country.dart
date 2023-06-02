// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:country_flags/country_flags.dart';

// Project imports:
import 'package:exchangerates/theme/text/text_14_semi_bold.dart';

class CurrencyCountry extends StatelessWidget {
  //
  final String currencyCode;
  final String countryCode;

  CurrencyCountry({
    required this.currencyCode,
    required this.countryCode,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 48,
          height: 28,
          child: CountryFlags.flag(
            countryCode.toLowerCase(),
          ),
        ),
        SizedBox(width: 12),
        MyText14s(
          currencyCode,
          height: 21,
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
