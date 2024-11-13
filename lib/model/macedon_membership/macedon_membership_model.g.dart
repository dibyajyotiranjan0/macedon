// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'macedon_membership_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MacedonMemebershipModelImpl _$$MacedonMemebershipModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MacedonMemebershipModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      messages: json['messages'] == null
          ? null
          : Messages.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MacedonMemebershipModelImplToJson(
        _$MacedonMemebershipModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'messages': instance.messages,
    };

_$MessagesImpl _$$MessagesImplFromJson(Map<String, dynamic> json) =>
    _$MessagesImpl(
      responsecode: json['responsecode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessagesImplToJson(_$MessagesImpl instance) =>
    <String, dynamic>{
      'responsecode': instance.responsecode,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      membership_dtl: (json['membership_dtl'] as List<dynamic>?)
          ?.map((e) => MembershipDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'membership_dtl': instance.membership_dtl,
    };

_$MembershipDtlImpl _$$MembershipDtlImplFromJson(Map<String, dynamic> json) =>
    _$MembershipDtlImpl(
      package_id: json['package_id'] as String?,
      package_name: json['package_name'] as String?,
      package_duration: json['package_duration'] as String?,
      package_price: json['package_price'] as String?,
      package_description: json['package_description'] as String?,
      service_category: json['service_category'] as String?,
    );

Map<String, dynamic> _$$MembershipDtlImplToJson(_$MembershipDtlImpl instance) =>
    <String, dynamic>{
      'package_id': instance.package_id,
      'package_name': instance.package_name,
      'package_duration': instance.package_duration,
      'package_price': instance.package_price,
      'package_description': instance.package_description,
      'service_category': instance.service_category,
    };
