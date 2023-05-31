import 'package:flutter/material.dart';

class MySafeAreaB16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SizedBox(height: 16),
    );
  }
}
