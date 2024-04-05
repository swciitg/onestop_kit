part of 'package:onestop_kit/src/enums/enums.dart';

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
