import 'package:freezed_annotation/freezed_annotation.dart';

part 'onestop_user.freezed.dart';
part 'onestop_user.g.dart';

@freezed
class OneStopUser with _$OneStopUser {
  const factory OneStopUser(
      {required final String name,
      required final String rollNo,
      required final String outlookEmail,
      final String? altEmail,
      final int? phoneNumber,
      final int? emergencyPhoneNumber,
      final String? gender,
      final String? roomNo,
      final String? homeAddress,
      final String? dob,
      final String? hostel,
      final String? linkedin,
      final String? image}) = _OneStopUser;

  factory OneStopUser.fromJson(Map<String, Object?> json) =>
      _$OneStopUserFromJson(json);
}
