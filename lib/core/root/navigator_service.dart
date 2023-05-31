// Flutter imports:
import 'package:exchangerates/conf/enums/alert_type_enum.dart';
import 'package:exchangerates/conf/values/duration_constants.dart';
import 'package:exchangerates/feature/pop_ups/alert_detail.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:flash/flash.dart';

// Project imports:
import 'package:exchangerates/conf/values/border_radius_constants.dart';
import 'package:exchangerates/conf/values/color_constants.dart';

@singleton
class NavigatorService {
  //
  static final key = GlobalKey<NavigatorState>();
  NavigatorState get _currentState => key.currentState!;
  BuildContext get _context => _currentState.context;

  //

  void clearFocus() {
    FocusScope.of(_context).requestFocus(FocusNode());
  }

  Future pushNamed(String routeName, {Object? arguments}) {
    return _currentState.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return _currentState.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    final predicate = ModalRoute.withName(routeName);
    return _currentState.pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  //

  Future<bool> pop([result]) {
    return _currentState.maybePop(result);
  }

  void popUntil(String routeName) {
    final predicate = ModalRoute.withName(routeName);
    _currentState.popUntil(predicate);
  }

  bool canPop([result]) {
    return _currentState.canPop();
  }

  //

  Future showMyModalBottomSheet(
    Widget child, {
    bool isScrollable = false,
  }) {
    return showModalBottomSheet(
      context: _context,
      builder: (_) => child,
      isScrollControlled: true,
      shape: isScrollable ? MyBorderRadius.popUpRounded : null,
      backgroundColor: isScrollable ? MyColors.white : MyColors.transparent,
    );
  }

  // Future showMyCupertinoModalPopup({
  //   required List<Widget> actions,
  //   String? title,
  //   bool isSkip = false,
  // }) {
  //   return showCupertinoModalPopup(
  //     context: _context,
  //     builder: (_) => MyCupertinoActionSheet(
  //       title: title,
  //       actions: actions,
  //       isSkip: isSkip,
  //     ),
  //   );
  // }

  //

  void showAlert(
    String message, {
    String? title,
    void Function()? onTap,
    AlertType type = AlertType.Error,
  }) {
    showFlash(
      context: _context,
      duration: MyDurations.s5,
      builder: (context, controller) {
        return Flash(
          child: AlertDetail(
            type: type,
            onTap: onTap,
            description: message,
            title: title ?? type.title,
            onClose: () => controller.dismiss(),
          ),
          controller: controller,
          position: FlashPosition.bottom,
          behavior: FlashBehavior.floating,
          backgroundColor: MyColors.transparent,
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
        );
      },
    );
  }
}

//

void addPostFrameCallback(Function callback) {
  SchedulerBinding.instance.addPostFrameCallback((_) => callback());
}

void addPostFrameCallbackW(Function callback) {
  WidgetsBinding.instance.addPostFrameCallback((_) => callback());
}
