part 'package:onestop_kit/src/enums/branch_enum.dart';
part 'package:onestop_kit/src/enums/hostel_enum.dart';
part 'package:onestop_kit/src/enums/program_enum.dart';
part 'package:onestop_kit/src/enums/mess_enum.dart';

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

extension MessExtension on List<Mess> {
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
  Branch? getBranchFromDisplayString() {
    return Branch.values.firstWhere((element) => element.displayString == this);
  }

  Branch? getBranchFromDatabaseString() {
    return Branch.values
        .firstWhere((element) => element.databaseString == this);
  }

  Program? getProgramFromDisplayString() {
    return Program.values
        .firstWhere((element) => element.displayString == this);
  }

  Program? getProgramFromDatabaseString() {
    return Program.values
        .firstWhere((element) => element.databaseString == this);
  }

  Hostel? getHostelFromDisplayString() {
    return Hostel.values.firstWhere((element) => element.displayString == this);
  }

  Hostel? getHostelFromDatabaseString() {
    return Hostel.values
        .firstWhere((element) => element.databaseString == this);
  }

  Mess? getMessFromDisplayString() {
    return Mess.values.firstWhere((element) => element.displayString == this);
  }

  Mess? getMessFromDatabaseString() {
    return Mess.values.firstWhere((element) => element.databaseString == this);
  }
}
