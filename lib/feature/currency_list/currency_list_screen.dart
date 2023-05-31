// Flutter imports:
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/core/repository/currency_repository.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'package:exchangerates/core/root/injector.dart';

class CurrencyListScreen extends StatefulWidget {
  @override
  State<CurrencyListScreen> createState() => _CurrencyListScreenState();
}

class _CurrencyListScreenState extends State<CurrencyListScreen> {
  //
  final repository = injector<CurrencyRepository>();

  @override
  void initState() {
    repository.fetchList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: MyStrings.currencies,
        canPop: false,
      ),
      body: Center(
        child: MyText16m('Hello World'),
      ),
    );
  }
}
