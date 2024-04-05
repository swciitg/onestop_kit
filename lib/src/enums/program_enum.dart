part of 'package:onestop_kit/src/enums/enums.dart';

enum Program {
  none("Select", null),
  bTech("B.Tech", "BTECH"),
  bDes("B.Des", "BDES"),
  mTech("M.Tech", "MTECH"),
  mDes("M.Des", "MDES"),
  mba("MBA", "MBA"),
  ma("MA", "MA"),
  mSc("MSc", "MSC"),
  dualPhD("PhD (Dual)", "DUALPHD"),
  phD("PhD", "PHD");

  final String displayString;
  final String? databaseString;

  const Program(this.displayString, this.databaseString);
}
