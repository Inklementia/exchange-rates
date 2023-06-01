// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/duration_constants.dart';
import 'package:exchangerates/conf/enums/button_colors_enum.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'default_progress_indicator.dart';
import 'default_inkwell.dart';

class MyButton extends StatelessWidget {
  //
  final String label;
  final MyButtonColor color;

  final void Function()? onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final bool enable;
  final bool isLoading;

  MyButton.primary({
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.h32v16,
    //
    this.enable = true,
    this.isLoading = false,
  }) : color = MyButtonColor.primary;

  MyButton.secondary({
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = MyEdgeInsets.h32v16,
    this.margin = MyEdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
  }) : color = MyButtonColor.secondary;

  MyButton.lite({
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = MyEdgeInsets.h32v16,
    this.margin = MyEdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
  }) : color = MyButtonColor.secondary;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: MyInkWell(
        margin: margin,
        padding: padding,
        borderRadius: MyBorderRadius.allRounded10,
        onTap: enable && !isLoading ? onTap : null,
        color:
            enable || isLoading ? color.backgroundColor : color.disabledColor,
        child: Stack(
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconLeft != null) ...[
                    iconLeft!,
                    SizedBox(width: 8),
                  ],
                  MyText16m(
                    label,
                    isOverflow: true,
                    color: color.textColor,
                  ),
                  if (iconRight != null) ...[
                    SizedBox(width: 8),
                    iconRight!,
                  ],
                ],
              )
            else
              Center(
                child: MyProgressIndicator(
                  size: 20,
                  color: color.textColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
