// Flutte imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/theme/default/default_progress_indicator.dart';
import 'package:flutter/material.dart';

class MyLoadingState extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyProgressIndicator(
        color: MyColors.primary,
      ),
    );
  }
}
