import 'package:flutter/material.dart';
import 'package:onestop_kit/onestop_kit.dart';

class ErrorReloadScreen extends StatefulWidget {
  final Function apiFunction;

  const ErrorReloadScreen({required this.apiFunction, super.key});

  @override
  State<ErrorReloadScreen> createState() => _ErrorReloadPageState();
}

class _ErrorReloadPageState extends State<ErrorReloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "Oops!",
              style: OneStopStyles.fontStyle2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Looks like you’ve run into an error. Please reload to resolve the issue.",
              style: OneStopStyles.bottomNavStyle1,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: () {
              widget.apiFunction();
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
          )
        ],
      ),
    );
  }
}
