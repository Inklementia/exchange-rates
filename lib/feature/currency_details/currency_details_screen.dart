import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'package:flutter/material.dart';

class CurrencyDetailsScreen extends StatelessWidget {
  //
  final String code;

  CurrencyDetailsScreen({required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: code,
        canPop: false,
      ),
      body: Center(
        child: MyText16m('Hello World'),
      ),
    );
  }
}
