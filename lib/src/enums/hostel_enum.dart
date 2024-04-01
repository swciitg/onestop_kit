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

  static List<String> getDisplayStringList() {
    return Hostel.values.map((e) => e.displayString.toString()).toList();
  }

  static List<String> getDatabaseStringList() {
    return Hostel.values.map((e) => e.databaseString.toString()).toList();
  }

  static Hostel? getEnumFromDisplayString(String displayStr) {
    return Hostel.values
        .firstWhere((element) => element.displayString == displayStr);
  }

  static Hostel? getEnumFromDatabaseString(String dbStr) {
    return Hostel.values
        .firstWhere((element) => element.databaseString == dbStr);
  }
}
