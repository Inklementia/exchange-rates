// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/theme/text/text_18_semi_bold.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/assets/icon_constants.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/utils/media_helper.dart';
import 'default_container.dart';
import 'default_gesture.dart';
import 'default_icon.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final List<Widget>? actions;

  final void Function()? onTap;
  final void Function()? onPop;

  MyAppBar({
    required this.title,
    this.canPop = true,
    this.actions,
    this.onTap,
    this.onPop,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      border: Border(
        bottom: BorderSide(color: MyColors.greyLite),
      ),
      child: AppBar(
        elevation: 0.0,
        actions: actions,
        leadingWidth: 40,
        centerTitle: true,
        backgroundColor: MyColors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MyColors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false,
        ),
        automaticallyImplyLeading: false,
        leading: canPop
            ? MyIcon(
                size: 24,
                icon: MyIcons.arrowLeft,
                color: MyColors.greyDark,
                padding: MyEdgeInsets.left16,
                onTap: onPop ?? injector<NavigatorService>().pop,
              )
            : null,
        title: MyGestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText18s(
                title,
                isOverflow: true,
                color: MyColors.greyDark,
              ),
              if (onTap != null) ...[
                SizedBox(width: 8),
                MyIcon(
                  size: 16,
                  icon: MyIcons.arrowDown,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
