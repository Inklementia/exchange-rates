// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/text/text_12.dart';

class CurrencyDetailsChartLabel extends StatelessWidget {
  //
  final String title;
  final EdgeInsets padding;

  CurrencyDetailsChartLabel({
    required this.title,
    this.padding = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: MyText12(
        title,
        color: MyColors.greyDarkA50,
      ),
    );
  }
}
