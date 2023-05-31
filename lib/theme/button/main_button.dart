// Flutter imports:
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/duration_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/default/default_button.dart';
import 'package:exchangerates/theme/text/text_16_semi_bold.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  //

  final String label;
  final void Function() onTap;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets padding;

  final Color color;
  final Color textColor;

  final bool enabled;
  final bool isLoading;

  MainButton({
    required this.label,
    required this.onTap,
    this.iconLeft,
    this.iconRight,
    this.padding = MyEdgeInsets.h32v16,
    this.enabled = true,
    this.isLoading = false,
    //
    this.color = MyColors.accent,
    this.textColor = MyColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: MyButton.primary(
        padding: padding,
        onTap: onTap,
        label: label,
      ),
    );
  }
}
