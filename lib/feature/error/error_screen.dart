// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';

class ErrorScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: MyStrings.routingErrorTitle),
      body: Center(
        child: MyText16m(
          MyStrings.routingErrorDesc,
          maxLines: 2,
        ),
      ),
    );
  }
}
