import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/feature/currency_details/mobx/store.dart';
import 'package:exchangerates/feature/currency_details/widgets/content.dart';
import 'package:exchangerates/feature/currency_details/widgets/state/loading_state.dart';
import 'package:exchangerates/theme/default/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CurrencyDetailsScreen extends StatefulWidget {
  //
  final String code;

  CurrencyDetailsScreen({required this.code});

  @override
  State<CurrencyDetailsScreen> createState() => _CurrencyDetailsScreenState();
}

class _CurrencyDetailsScreenState extends State<CurrencyDetailsScreen> {
  //
  final store = CurrencyDetailsStore();

  @override
  void initState() {
    store.setData(widget.code);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: widget.code),
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.greyLite,
      body: Provider(
        create: (_) => store,
        child: Observer(
          builder: (_) {
            final isLoading = store.isLoading;
            if (isLoading) return CurrencyDetailsLoadingState();

            return CurrencyDetailsContent();
          },
        ),
      ),
    );
  }
}
