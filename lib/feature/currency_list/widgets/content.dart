// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/feature/currency_list/widgets/items/item.dart';
import 'package:exchangerates/feature/currency_list/widgets/list/list_header.dart';
import 'package:exchangerates/theme/default/default_refresher.dart';
import 'package:exchangerates/theme/states/empty_state.dart';

class CurrencyListContent extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final service = injector<CurrencyService>();

    return StreamBuilder<List<Currency>>(
      stream: service.list$,
      initialData: service.list,
      builder: (context, snapshot) {
        final list = snapshot.data ?? [];

        if (list.isEmpty)
          return MyEmptyState(text: MyStrings.emptyCurrencyList);

        return MyRefresher(
          onRefresh: service.refreshRates,
          child: ListView(
            shrinkWrap: true,
            padding: MyEdgeInsets.h20,
            physics: ClampingScrollPhysics(),
            children: [
              SizedBox(height: 8),
              CurrencyListHeader(),
              SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                padding: MyEdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  final model = list[index];
                  return CurrecyItem(model: model);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
