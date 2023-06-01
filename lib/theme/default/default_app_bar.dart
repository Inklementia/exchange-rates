// Flutter imports:
import 'package:exchangerates/conf/assets/icon_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/conf/values/system_ui_overlay_style_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/theme/text/text_18_semi_bold.dart';
import 'package:exchangerates/utils/media_helper.dart';
import 'package:flutter/material.dart';

import 'default_icon.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;

  final Color toolbarWidgetColor;
  final Color color;
  final void Function()? onTap;

  final String? leftIcon;

  const MyAppBar({
    required this.title,
    this.centerTitle = true,
    this.canPop = true,
    this.actions,
    this.color = MyColors.greyLite,
    this.toolbarWidgetColor = MyColors.primary,
    this.onTap,
    this.leftIcon = MyIcons.arrowLeft,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      actions: actions,
      leadingWidth: 40,
      backgroundColor: color,
      centerTitle: centerTitle,
      systemOverlayStyle: MySystemUiOverlayStyle.light,
      automaticallyImplyLeading: false,
      leading: canPop
          ? MyIcon(
              size: 24,
              icon: leftIcon!,
              padding: MyEdgeInsets.left16,
              onTap: onTap ?? injector<NavigatorService>().pop,
              color: toolbarWidgetColor,
            )
          : null,
      title: MyText18s(
        title,
        isOverflow: true,
        color: MyColors.black,
      ),
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
