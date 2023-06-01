import 'package:exchangerates/conf/values/duration_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/theme/container/empty_container.dart';
import 'package:exchangerates/theme/text/text_16.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
//
  @override
  Widget build(BuildContext context) {
    final service = injector<CurrencyService>();

    return StreamBuilder<bool>(
      stream: service.loading$,
      initialData: service.loading,
      builder: (context, snapshot) {
        final isLoading = snapshot.data ?? false;

        return AnimatedSwitcher(
          duration: MyDurations.ms300,
          child: isLoading
              ? Padding(
                  padding: MyEdgeInsets.all32,
                  child: Center(
                    child: MyText16(
                      MyStrings.refreshingRates,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      height: 21,
                    ),
                  ),
                )
              : EmptyContainer(),
        );
      },
    );
  }
}
