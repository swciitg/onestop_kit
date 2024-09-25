// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onestop_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneStopUserImpl _$$OneStopUserImplFromJson(Map<String, dynamic> json) =>
    _$OneStopUserImpl(
      name: json['name'] as String,
      rollNo: json['rollNo'] as String,
      outlookEmail: json['outlookEmail'] as String,
      altEmail: json['altEmail'] as String?,
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      emergencyPhoneNumber: (json['emergencyPhoneNumber'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      roomNo: json['roomNo'] as String?,
      homeAddress: json['homeAddress'] as String?,
      dob: json['dob'] as String?,
      hostel: json['hostel'] as String?,
      subscribedMess: json['subscribedMess'] as String?,
      linkedin: json['linkedin'] as String?,
      image: json['image'] as String?,
      cycleReg: json['cycleReg'] as String?,
    );

Map<String, dynamic> _$$OneStopUserImplToJson(_$OneStopUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rollNo': instance.rollNo,
      'outlookEmail': instance.outlookEmail,
      'altEmail': instance.altEmail,
      'phoneNumber': instance.phoneNumber,
      'emergencyPhoneNumber': instance.emergencyPhoneNumber,
      'gender': instance.gender,
      'roomNo': instance.roomNo,
      'homeAddress': instance.homeAddress,
      'dob': instance.dob,
      'hostel': instance.hostel,
      'subscribedMess': instance.subscribedMess,
      'linkedin': instance.linkedin,
      'image': instance.image,
      'cycleReg': instance.cycleReg,
    };
