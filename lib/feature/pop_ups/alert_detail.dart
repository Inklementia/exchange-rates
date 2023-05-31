// Flutter imports:
import 'package:exchangerates/conf/assets/icon_constants.dart';
import 'package:exchangerates/conf/enums/alert_type_enum.dart';
import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/default/default_container.dart';
import 'package:exchangerates/theme/default/default_gesture.dart';
import 'package:exchangerates/theme/default/default_icon.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'package:flutter/material.dart';

class AlertDetail extends StatelessWidget {
  //
  final AlertType type;

  final String title;
  final String description;

  final void Function() onClose;
  final void Function()? onTap;

  AlertDetail({
    required this.type,
    required this.title,
    required this.description,
    //

    required this.onClose,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: MyEdgeInsets.bottom32,
      child: MyGestureDetector(
        onTap: onTap,
        child: MyContainer(
          color: type.color,
          margin: MyEdgeInsets.h16,
          padding: MyEdgeInsets.all16,
          border: Border.all(color: type.borderColor),
          borderRadius: MyBorderRadius.allRounded10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyIcon(
                size: 24,
                icon: type.icon,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText16m(
                      title,
                      color: MyColors.greyDark,
                    ),
                    if (description.isNotEmpty) ...[
                      SizedBox(height: 8),
                      MyText14(
                        description,
                        isOverflow: false,
                        color: MyColors.greyDark,
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(width: 12),
              MyIcon(
                onTap: onClose,
                icon: MyIcons.close,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
