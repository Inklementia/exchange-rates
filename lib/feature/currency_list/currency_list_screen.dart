// Flutter imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/utils/currency_helper.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'package:exchangerates/core/root/injector.dart';

class CurrencyListScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final service = injector<CurrencyService>();

    return Scaffold(
      appBar: MyAppBar(
        title: MyStrings.currencies,
        canPop: false,
      ),
      body: StreamBuilder<List<Currency>>(
        stream: service.list$,
        initialData: service.list,
        builder: (context, snapshot) {
          final list = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            padding: MyEdgeInsets.bottom16,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final model = list[index];
              return Row(
                children: [
                  MyText16m(
                    model.code,
                    color: MyColors.black,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
