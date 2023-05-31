// Flutter imports:
import 'package:flutter/material.dart';
import 'color_constants.dart';

class MyGradients {
  ///
  static const LinearGradient stepHeader = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      MyColors.white,
      MyColors.transparent,
    ],
  );

  static const LinearGradient white = LinearGradient(
    colors: [
      MyColors.transparent,
      MyColors.white,
    ],
    stops: [0.0, 0.2],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  static const LinearGradient greenLiner = LinearGradient(
    colors: [
      MyColors.primary,
      MyColors.emeraldLight,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
