// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_modoel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      messages: json['messages'] == null
          ? null
          : Messages.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'messages': instance.messages,
    };

_$MessagesImpl _$$MessagesImplFromJson(Map<String, dynamic> json) =>
    _$MessagesImpl(
      responsecode: json['responsecode'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessagesImplToJson(_$MessagesImpl instance) =>
    <String, dynamic>{
      'responsecode': instance.responsecode,
      'status': instance.status,
    };

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      user_id: json['user_id'] as String?,
      fullname: json['fullname'],
      email: json['email'],
      contact: json['contact'] as String?,
      profile_image: json['profile_image'],
      gender: json['gender'],
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'fullname': instance.fullname,
      'email': instance.email,
      'contact': instance.contact,
      'profile_image': instance.profile_image,
      'gender': instance.gender,
    };
