// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressImpl _$$UserAddressImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressImpl(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      street: json['street'] as String?,
      postalCode: json['postalCode'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserAddressImplToJson(_$UserAddressImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'street': instance.street,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'dateTime': instance.dateTime?.toIso8601String(),
      'isSelected': instance.isSelected,
    };
