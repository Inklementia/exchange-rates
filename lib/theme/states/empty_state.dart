// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/assets/image_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/default/default_refresher.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:exchangerates/utils/media_helper.dart';

class MyEmptyState extends StatelessWidget {
  //
  final String text;
  final void Function()? onRefresh;

  MyEmptyState({
    required this.text,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: MyEdgeInsets.h32,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  MyImages.warning,
                  width: MediaHelper.width * 0.3,
                ),
                SizedBox(height: 24),
                MyText14(
                  text,
                  color: MyColors.greyDarkA50,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        if (onRefresh != null)
          MyRefresher(
            onRefresh: onRefresh!,
            child: ListView(physics: ClampingScrollPhysics()),
          ),
      ],
    );
  }
}
