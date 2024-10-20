import 'package:flutter/material.dart';
import 'package:onestop_kit/onestop_kit.dart';

class ErrorReloadButton extends StatelessWidget {
  final void Function() reloadCallback;

  const ErrorReloadButton({required this.reloadCallback, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: OneStopColors.kYellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: reloadCallback,
        borderRadius: BorderRadius.circular(20),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rotate_right,
                size: 16,
                color: OneStopColors.kBlack,
              ),
              Text(
                "Try again",
                style: TextStyle(
                  color: OneStopColors.kBlack,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
