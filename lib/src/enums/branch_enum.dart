enum Branch {
  none("Select", null),
  cse("Computer Science and Engineering", "CSE"),
  dsai("Data Science and Artificial Intelligence", "DSAI"),
  mnc("Mathematics and Computing", "MNC"),
  eee("Electronics and Electrical Engineering", "EEE"),
  ece("Electronics and Communication Engineering", "ECE"),
  mech("Mechanical Engineering", "MECH"),
  phy("Engineering Physics", "PHY"),
  civil("Civil Engineering", "CIVIL"),
  cst("Chemical Science and Technology", "CST"),
  cl("Chemical Engineering", "CL"),
  dod("Design Department", "DOD"),
  hss("Humanities and Social Sciences", "HSS"),
  bsbe("Biosciences and Bioengineering", "BSBE");

  final String displayString;
  final String? databaseString;

  const Branch(this.displayString, this.databaseString);
}
