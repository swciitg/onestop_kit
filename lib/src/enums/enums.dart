part 'package:onestop_kit/src/enums/branch_enum.dart';
part 'package:onestop_kit/src/enums/program_enum.dart';
part 'package:onestop_kit/src/enums/hostel_enum.dart';

extension BranchExtension on List<Branch> {
  List<String> displayStrings() {
    return map((e) => e.displayString).toList();
  }

  List<String?> databaseStrings() {
    return map((e) => e.databaseString).toList();
  }
}

extension HostelExtension on List<Hostel> {
  List<String> displayStrings() {
    return map((e) => e.displayString).toList();
  }

  List<String?> databaseStrings() {
    return map((e) => e.databaseString).toList();
  }
}

extension ProgramExtension on List<Program> {
  List<String> displayStrings() {
    return map((e) => e.displayString).toList();
  }

  List<String?> databaseStrings() {
    return map((e) => e.databaseString).toList();
  }
}

extension EnumExtension on String {
  Branch? getBranchFromDisplayString(String displayStr) {
    return Branch.values
        .firstWhere((element) => element.displayString == displayStr);
  }

  Branch? getBranchFromDatabaseString(String dbStr) {
    return Branch.values
        .firstWhere((element) => element.databaseString == dbStr);
  }

  Program? getProgramFromDisplayString(String displayStr) {
    return Program.values
        .firstWhere((element) => element.displayString == displayStr);
  }

  Program? getProgramFromDatabaseString(String dbStr) {
    return Program.values
        .firstWhere((element) => element.databaseString == dbStr);
  }

  Hostel? getHostelFromDisplayString(String displayStr) {
    return Hostel.values
        .firstWhere((element) => element.displayString == displayStr);
  }

  Hostel? getHostelFromDatabaseString(String dbStr) {
    return Hostel.values
        .firstWhere((element) => element.databaseString == dbStr);
  }
}
