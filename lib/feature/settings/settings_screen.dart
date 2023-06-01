import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/theme/container/empty_container.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: MyStrings.settings,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.greyLite,
      body: EmptyContainer(),
    );
  }
}
