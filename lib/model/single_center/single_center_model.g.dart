// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_center_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleCenterModelImpl _$$SingleCenterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCenterModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      messages: json['messages'] == null
          ? null
          : Messages.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleCenterModelImplToJson(
        _$SingleCenterModelImpl instance) =>
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
      Single_Center_Data: (json['Single_Center_Data'] as List<dynamic>?)
          ?.map((e) => SingleCenterDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      Single_Center_Ameties: (json['Single_Center_Ameties'] as List<dynamic>?)
          ?.map((e) => SingleCenterAmety.fromJson(e as Map<String, dynamic>))
          .toList(),
      Single_Center_gallery: (json['Single_Center_gallery'] as List<dynamic>?)
          ?.map((e) => SingleCenterGallery.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating_review: json['rating_review'] as List<dynamic>?,
      Single_Center_Activity: (json['Single_Center_Activity'] as List<dynamic>?)
          ?.map((e) => SingleCenterActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'Single_Center_Data': instance.Single_Center_Data,
      'Single_Center_Ameties': instance.Single_Center_Ameties,
      'Single_Center_gallery': instance.Single_Center_gallery,
      'rating_review': instance.rating_review,
      'Single_Center_Activity': instance.Single_Center_Activity,
    };

_$SingleCenterActivityImpl _$$SingleCenterActivityImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCenterActivityImpl(
      service_id: json['service_id'] as String?,
      service_name: json['service_name'] as String?,
      image: json['image'] as String?,
      packages: json['packages'] as List<dynamic>?,
      centertiming: json['centertiming'] as List<dynamic>?,
    );

Map<String, dynamic> _$$SingleCenterActivityImplToJson(
        _$SingleCenterActivityImpl instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'service_name': instance.service_name,
      'image': instance.image,
      'packages': instance.packages,
      'centertiming': instance.centertiming,
    };

_$SingleCenterAmetyImpl _$$SingleCenterAmetyImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCenterAmetyImpl(
      facilities_id: json['facilities_id'] as String?,
      facilities_name: json['facilities_name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$SingleCenterAmetyImplToJson(
        _$SingleCenterAmetyImpl instance) =>
    <String, dynamic>{
      'facilities_id': instance.facilities_id,
      'facilities_name': instance.facilities_name,
      'image': instance.image,
    };

_$SingleCenterDatumImpl _$$SingleCenterDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCenterDatumImpl(
      center_id: json['center_id'] as String?,
      center_name: json['center_name'] as String?,
      logo_image: json['logo_image'],
      hygene: json['hygene'] as String?,
      centerimage: json['centerimage'] as String?,
      city_id: json['city_id'] as String?,
      city_name: json['city_name'] as String?,
      pin: json['pin'] as String?,
      address1: json['address1'] as String?,
      email: json['email'] as String?,
      contact_no: json['contact_no'] as String?,
    );

Map<String, dynamic> _$$SingleCenterDatumImplToJson(
        _$SingleCenterDatumImpl instance) =>
    <String, dynamic>{
      'center_id': instance.center_id,
      'center_name': instance.center_name,
      'logo_image': instance.logo_image,
      'hygene': instance.hygene,
      'centerimage': instance.centerimage,
      'city_id': instance.city_id,
      'city_name': instance.city_name,
      'pin': instance.pin,
      'address1': instance.address1,
      'email': instance.email,
      'contact_no': instance.contact_no,
    };

_$SingleCenterGalleryImpl _$$SingleCenterGalleryImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCenterGalleryImpl(
      center_gallery_id: json['center_gallery_id'] as String?,
      cente_image: json['cente_image'] as String?,
      center_id: json['center_id'] as String?,
      created_date: json['created_date'] as String?,
    );

Map<String, dynamic> _$$SingleCenterGalleryImplToJson(
        _$SingleCenterGalleryImpl instance) =>
    <String, dynamic>{
      'center_gallery_id': instance.center_gallery_id,
      'cente_image': instance.cente_image,
      'center_id': instance.center_id,
      'created_date': instance.created_date,
    };
