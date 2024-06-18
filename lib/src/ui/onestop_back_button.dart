import 'package:flutter/material.dart';
import 'package:onestop_kit/onestop_kit.dart';

class OneStopBackButton extends StatelessWidget {
  final void Function() onTap;

  const OneStopBackButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 80,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: OneStopColors.cardColor1),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_outlined,
              size: 16,
              color: OneStopColors.primaryColor,
            ),
            SizedBox(
              width: 8,
            ),
            Text('One', style: OneStopStyles.cardStageStyle2),
            Text('.', style: OneStopStyles.cardStageStyle1),
          ],
        ),
      ),
    );
  }
}
