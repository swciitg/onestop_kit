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

enum Hostel {
  none("Select", null),
  lohit("Lohit", "LOHIT"),
  brahma("Brahmaputra", "BRAHMAPUTRA"),
  disang("Disang", "DISANG"),
  kameng("Kameng", "KAMENG"),
  barak("Barak", "BARAK"),
  manas("Manas", "MANAS"),
  dihing("Dihing", "DIHING"),
  umiam("Umiam", "UMIAM"),
  siang("Siang", "SIANG"),
  kapili("Kapili", "KAPILI"),
  dhansiri("Dhansiri", "DHANSIRI"),
  subhansiri("Subhansiri", "SUBHANSIRI"),
  msh("Married Scholars' Hostel", "MSH"),
  gaurang("Gaurang", "GAURANG"),
  dibang("Dibang", "DIBANG");

  final String displayString;
  final String? databaseString;

  const Hostel(this.displayString, this.databaseString);
}
