part of 'package:onestop_kit/src/enums/enums.dart';

enum Mess {
  none("None", "NONE"),
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
  subansiri("Subansiri", "SUBANSIRI"),
  gaurang("Gaurang", "GAURANG"),
  dibang("Dibang", "DIBANG");

  final String displayString;
  final String? databaseString;

  const Mess(this.displayString, this.databaseString);
}
