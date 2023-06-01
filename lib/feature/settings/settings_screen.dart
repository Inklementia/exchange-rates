import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/feature/settings/mobx/store.dart';
import 'package:exchangerates/feature/settings/widgets/content.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = SettingsStore();

    return Provider(
      create: (_) => store,
      child: Scaffold(
        appBar: MyAppBar(
          title: MyStrings.settings,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.white,
        body: SettingsContent(),
      ),
    );
  }
}
