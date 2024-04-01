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

  List<String> getDisplayStringList() {
    return Program.values.map((e) => e.displayString.toString()).toList();
  }

  List<String> getDatabaseStringList() {
    return Program.values.map((e) => e.databaseString.toString()).toList();
  }

  Program? getEnumFromDisplayString(String displayStr) {
    return Program.values
        .firstWhere((element) => element.displayString == displayStr);
  }

  Program? getEnumFromDatabaseString(String dbStr) {
    return Program.values
        .firstWhere((element) => element.databaseString == dbStr);
  }
}
