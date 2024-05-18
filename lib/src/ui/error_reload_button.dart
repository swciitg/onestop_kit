import 'package:flutter/material.dart';
import 'package:onestop_kit/onestop_kit.dart';

class ErrorReloadButton extends StatelessWidget {
  final Function reloadCallback;

  const ErrorReloadButton({required this.reloadCallback, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            reloadCallback();
          },
          icon: const Icon(
            Icons.rotate_right,
            size: 16,
            color: OneStopColors.kBlack,
          ),
          label: const Text(
            "Try again",
            style: TextStyle(
              color: OneStopColors.kBlack,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(OneStopColors.kYellow),
          ),
        ),
      ],
    );
  }
}
