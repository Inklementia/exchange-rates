import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/feature/settings/widgets/location/location_toggle.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:exchangerates/theme/text/text_16_medium.dart';
import 'package:flutter/material.dart';

class SettingsLocationItem extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MyText16m(
                MyStrings.trackLocation,
                color: MyColors.greyDark,
              ),
            ),
            SettingsLocationToggle(),
          ],
        ),
        SizedBox(height: 12),
        MyText14(
          MyStrings.locationDesc,
          color: MyColors.greyDarkA60,
          maxLines: 6,
          height: 18,
        )
      ],
    );
  }
}
