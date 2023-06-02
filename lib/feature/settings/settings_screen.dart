// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/feature/settings/mobx/store.dart';
import 'package:exchangerates/feature/settings/widgets/content.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';

class SettingsScreen extends StatefulWidget {
  //
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //
  late SettingsStore store;

  @override
  void initState() {
    store = SettingsStore();
    store.setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
