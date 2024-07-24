import 'package:flutter/material.dart';
import 'package:onestop_kit/onestop_kit.dart';
import 'package:onestop_kit/src/constants/onestop_fonts.dart';

class GuestRestrictAccess extends StatelessWidget {
  const GuestRestrictAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Not Accessible in Guest Mode",
          style: OnestopFonts.w400.setColor(OneStopColors.kWhite),
        ),
      ),
    );
  }
}
