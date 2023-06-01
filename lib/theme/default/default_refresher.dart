// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyRefresher extends StatelessWidget {
  //

  final Widget child;
  final void Function() onRefresh;

  MyRefresher({
    required this.child,
    required this.onRefresh,
  });

  final controller = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      onRefresh: () => {
        onRefresh(),
        controller.refreshCompleted(),
      },
      header: MaterialClassicHeader(),
      controller: controller,
      child: child,
    );
  }
}
