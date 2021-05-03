// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    id: json['id'] as int,
    email: json['email'] as String,
    username: json['username'] as String,
    name: json['name'] == null
        ? null
        : Name.fromJson(json['name'] as Map<String, dynamic>),
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phone,
    };
