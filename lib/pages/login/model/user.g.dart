// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profileImg: json['profileImg'] as String?,
      phoneBumber: json['phoneBumber'] as String?,
      gender: json['gender'] as String?,
      timestamp: _fromJsonTimestamp(json['timestamp']),
      isAdmin: json['isAdmin'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'profileImg': instance.profileImg,
      'phoneBumber': instance.phoneBumber,
      'gender': instance.gender,
      'timestamp': _toJsonTimestamp(instance.timestamp),
      'isAdmin': instance.isAdmin,
    };
