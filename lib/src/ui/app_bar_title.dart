import 'package:flutter/material.dart';
import 'package:onestop_kit/onestop_kit.dart';

class AppBarTitle extends StatelessWidget {
  final String title;

  const AppBarTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: OneStopStyles.headingStyle1),
        const Text('.', style: OneStopStyles.headingStyle2),
      ],
    );
  }
}
