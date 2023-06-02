// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/feature/currency_list/redux/service.dart';
import 'package:exchangerates/feature/currency_list/widgets/app_bar/app_bar.dart';
import 'package:exchangerates/feature/currency_list/widgets/content.dart';
import 'package:exchangerates/theme/states/loading_state.dart';

class CurrencyListScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final service = injector<CurrencyService>();

    return Scaffold(
      appBar: CurrencyListAppBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.greyLite,
      body: StreamBuilder<bool>(
        stream: service.loading$,
        initialData: service.loading,
        builder: (context, snapshot) {
          final isLoading = snapshot.data!;

          if (isLoading) return MyLoadingState();
          return CurrencyListContent();
        },
      ),
    );
  }
}
