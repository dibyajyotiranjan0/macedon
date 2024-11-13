// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_service_page_modoel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingleServicePageModel _$SingleServicePageModelFromJson(
    Map<String, dynamic> json) {
  return _SingleServicePageModel.fromJson(json);
}

/// @nodoc
mixin _$SingleServicePageModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  Messages? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleServicePageModelCopyWith<SingleServicePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleServicePageModelCopyWith<$Res> {
  factory $SingleServicePageModelCopyWith(SingleServicePageModel value,
          $Res Function(SingleServicePageModel) then) =
      _$SingleServicePageModelCopyWithImpl<$Res, SingleServicePageModel>;
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class _$SingleServicePageModelCopyWithImpl<$Res,
        $Val extends SingleServicePageModel>
    implements $SingleServicePageModelCopyWith<$Res> {
  _$SingleServicePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Messages?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessagesCopyWith<$Res>? get messages {
    if (_value.messages == null) {
      return null;
    }

    return $MessagesCopyWith<$Res>(_value.messages!, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleServicePageModelImplCopyWith<$Res>
    implements $SingleServicePageModelCopyWith<$Res> {
  factory _$$SingleServicePageModelImplCopyWith(
          _$SingleServicePageModelImpl value,
          $Res Function(_$SingleServicePageModelImpl) then) =
      __$$SingleServicePageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  @override
  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class __$$SingleServicePageModelImplCopyWithImpl<$Res>
    extends _$SingleServicePageModelCopyWithImpl<$Res,
        _$SingleServicePageModelImpl>
    implements _$$SingleServicePageModelImplCopyWith<$Res> {
  __$$SingleServicePageModelImplCopyWithImpl(
      _$SingleServicePageModelImpl _value,
      $Res Function(_$SingleServicePageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$SingleServicePageModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Messages?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleServicePageModelImpl implements _SingleServicePageModel {
  const _$SingleServicePageModelImpl({this.status, this.error, this.messages});

  factory _$SingleServicePageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleServicePageModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final Messages? messages;

  @override
  String toString() {
    return 'SingleServicePageModel(status: $status, error: $error, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleServicePageModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleServicePageModelImplCopyWith<_$SingleServicePageModelImpl>
      get copyWith => __$$SingleServicePageModelImplCopyWithImpl<
          _$SingleServicePageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleServicePageModelImplToJson(
      this,
    );
  }
}

abstract class _SingleServicePageModel implements SingleServicePageModel {
  const factory _SingleServicePageModel(
      {final int? status,
      final bool? error,
      final Messages? messages}) = _$SingleServicePageModelImpl;

  factory _SingleServicePageModel.fromJson(Map<String, dynamic> json) =
      _$SingleServicePageModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  Messages? get messages;
  @override
  @JsonKey(ignore: true)
  _$$SingleServicePageModelImplCopyWith<_$SingleServicePageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
mixin _$Messages {
  String? get responsecode => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesCopyWith<Messages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) then) =
      _$MessagesCopyWithImpl<$Res, Messages>;
  @useResult
  $Res call({String? responsecode, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res, $Val extends Messages>
    implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsecode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      responsecode: freezed == responsecode
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessagesImplCopyWith<$Res>
    implements $MessagesCopyWith<$Res> {
  factory _$$MessagesImplCopyWith(
          _$MessagesImpl value, $Res Function(_$MessagesImpl) then) =
      __$$MessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? responsecode, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MessagesImplCopyWithImpl<$Res>
    extends _$MessagesCopyWithImpl<$Res, _$MessagesImpl>
    implements _$$MessagesImplCopyWith<$Res> {
  __$$MessagesImplCopyWithImpl(
      _$MessagesImpl _value, $Res Function(_$MessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsecode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MessagesImpl(
      responsecode: freezed == responsecode
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagesImpl implements _Messages {
  const _$MessagesImpl({this.responsecode, this.data});

  factory _$MessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagesImplFromJson(json);

  @override
  final String? responsecode;
  @override
  final Data? data;

  @override
  String toString() {
    return 'Messages(responsecode: $responsecode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesImpl &&
            (identical(other.responsecode, responsecode) ||
                other.responsecode == responsecode) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responsecode, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      __$$MessagesImplCopyWithImpl<_$MessagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagesImplToJson(
      this,
    );
  }
}

abstract class _Messages implements Messages {
  const factory _Messages({final String? responsecode, final Data? data}) =
      _$MessagesImpl;

  factory _Messages.fromJson(Map<String, dynamic> json) =
      _$MessagesImpl.fromJson;

  @override
  String? get responsecode;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<CenterDatum>? get Center_Data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<CenterDatum>? Center_Data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Center_Data = freezed,
  }) {
    return _then(_value.copyWith(
      Center_Data: freezed == Center_Data
          ? _value.Center_Data
          : Center_Data // ignore: cast_nullable_to_non_nullable
              as List<CenterDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CenterDatum>? Center_Data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Center_Data = freezed,
  }) {
    return _then(_$DataImpl(
      Center_Data: freezed == Center_Data
          ? _value._Center_Data
          : Center_Data // ignore: cast_nullable_to_non_nullable
              as List<CenterDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({final List<CenterDatum>? Center_Data})
      : _Center_Data = Center_Data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<CenterDatum>? _Center_Data;
  @override
  List<CenterDatum>? get Center_Data {
    final value = _Center_Data;
    if (value == null) return null;
    if (_Center_Data is EqualUnmodifiableListView) return _Center_Data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(Center_Data: $Center_Data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._Center_Data, _Center_Data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_Center_Data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<CenterDatum>? Center_Data}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<CenterDatum>? get Center_Data;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CenterDatum _$CenterDatumFromJson(Map<String, dynamic> json) {
  return _CenterDatum.fromJson(json);
}

/// @nodoc
mixin _$CenterDatum {
  String? get center_id => throw _privateConstructorUsedError;
  String? get center_name => throw _privateConstructorUsedError;
  String? get logo_image => throw _privateConstructorUsedError;
  String? get hygene => throw _privateConstructorUsedError;
  String? get centerimage => throw _privateConstructorUsedError;
  String? get city_id => throw _privateConstructorUsedError;
  String? get city_name => throw _privateConstructorUsedError;
  String? get area_id => throw _privateConstructorUsedError;
  String? get areaname => throw _privateConstructorUsedError;
  String? get service_master_id => throw _privateConstructorUsedError;
  String? get service_master_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get contact_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterDatumCopyWith<CenterDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterDatumCopyWith<$Res> {
  factory $CenterDatumCopyWith(
          CenterDatum value, $Res Function(CenterDatum) then) =
      _$CenterDatumCopyWithImpl<$Res, CenterDatum>;
  @useResult
  $Res call(
      {String? center_id,
      String? center_name,
      String? logo_image,
      String? hygene,
      String? centerimage,
      String? city_id,
      String? city_name,
      String? area_id,
      String? areaname,
      String? service_master_id,
      String? service_master_name,
      String? email,
      String? contact_no});
}

/// @nodoc
class _$CenterDatumCopyWithImpl<$Res, $Val extends CenterDatum>
    implements $CenterDatumCopyWith<$Res> {
  _$CenterDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_id = freezed,
    Object? center_name = freezed,
    Object? logo_image = freezed,
    Object? hygene = freezed,
    Object? centerimage = freezed,
    Object? city_id = freezed,
    Object? city_name = freezed,
    Object? area_id = freezed,
    Object? areaname = freezed,
    Object? service_master_id = freezed,
    Object? service_master_name = freezed,
    Object? email = freezed,
    Object? contact_no = freezed,
  }) {
    return _then(_value.copyWith(
      center_id: freezed == center_id
          ? _value.center_id
          : center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo_image: freezed == logo_image
          ? _value.logo_image
          : logo_image // ignore: cast_nullable_to_non_nullable
              as String?,
      hygene: freezed == hygene
          ? _value.hygene
          : hygene // ignore: cast_nullable_to_non_nullable
              as String?,
      centerimage: freezed == centerimage
          ? _value.centerimage
          : centerimage // ignore: cast_nullable_to_non_nullable
              as String?,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String?,
      city_name: freezed == city_name
          ? _value.city_name
          : city_name // ignore: cast_nullable_to_non_nullable
              as String?,
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as String?,
      areaname: freezed == areaname
          ? _value.areaname
          : areaname // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_id: freezed == service_master_id
          ? _value.service_master_id
          : service_master_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_name: freezed == service_master_name
          ? _value.service_master_name
          : service_master_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_no: freezed == contact_no
          ? _value.contact_no
          : contact_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterDatumImplCopyWith<$Res>
    implements $CenterDatumCopyWith<$Res> {
  factory _$$CenterDatumImplCopyWith(
          _$CenterDatumImpl value, $Res Function(_$CenterDatumImpl) then) =
      __$$CenterDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? center_id,
      String? center_name,
      String? logo_image,
      String? hygene,
      String? centerimage,
      String? city_id,
      String? city_name,
      String? area_id,
      String? areaname,
      String? service_master_id,
      String? service_master_name,
      String? email,
      String? contact_no});
}

/// @nodoc
class __$$CenterDatumImplCopyWithImpl<$Res>
    extends _$CenterDatumCopyWithImpl<$Res, _$CenterDatumImpl>
    implements _$$CenterDatumImplCopyWith<$Res> {
  __$$CenterDatumImplCopyWithImpl(
      _$CenterDatumImpl _value, $Res Function(_$CenterDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_id = freezed,
    Object? center_name = freezed,
    Object? logo_image = freezed,
    Object? hygene = freezed,
    Object? centerimage = freezed,
    Object? city_id = freezed,
    Object? city_name = freezed,
    Object? area_id = freezed,
    Object? areaname = freezed,
    Object? service_master_id = freezed,
    Object? service_master_name = freezed,
    Object? email = freezed,
    Object? contact_no = freezed,
  }) {
    return _then(_$CenterDatumImpl(
      center_id: freezed == center_id
          ? _value.center_id
          : center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo_image: freezed == logo_image
          ? _value.logo_image
          : logo_image // ignore: cast_nullable_to_non_nullable
              as String?,
      hygene: freezed == hygene
          ? _value.hygene
          : hygene // ignore: cast_nullable_to_non_nullable
              as String?,
      centerimage: freezed == centerimage
          ? _value.centerimage
          : centerimage // ignore: cast_nullable_to_non_nullable
              as String?,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String?,
      city_name: freezed == city_name
          ? _value.city_name
          : city_name // ignore: cast_nullable_to_non_nullable
              as String?,
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as String?,
      areaname: freezed == areaname
          ? _value.areaname
          : areaname // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_id: freezed == service_master_id
          ? _value.service_master_id
          : service_master_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_name: freezed == service_master_name
          ? _value.service_master_name
          : service_master_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_no: freezed == contact_no
          ? _value.contact_no
          : contact_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterDatumImpl implements _CenterDatum {
  const _$CenterDatumImpl(
      {this.center_id,
      this.center_name,
      this.logo_image,
      this.hygene,
      this.centerimage,
      this.city_id,
      this.city_name,
      this.area_id,
      this.areaname,
      this.service_master_id,
      this.service_master_name,
      this.email,
      this.contact_no});

  factory _$CenterDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterDatumImplFromJson(json);

  @override
  final String? center_id;
  @override
  final String? center_name;
  @override
  final String? logo_image;
  @override
  final String? hygene;
  @override
  final String? centerimage;
  @override
  final String? city_id;
  @override
  final String? city_name;
  @override
  final String? area_id;
  @override
  final String? areaname;
  @override
  final String? service_master_id;
  @override
  final String? service_master_name;
  @override
  final String? email;
  @override
  final String? contact_no;

  @override
  String toString() {
    return 'CenterDatum(center_id: $center_id, center_name: $center_name, logo_image: $logo_image, hygene: $hygene, centerimage: $centerimage, city_id: $city_id, city_name: $city_name, area_id: $area_id, areaname: $areaname, service_master_id: $service_master_id, service_master_name: $service_master_name, email: $email, contact_no: $contact_no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterDatumImpl &&
            (identical(other.center_id, center_id) ||
                other.center_id == center_id) &&
            (identical(other.center_name, center_name) ||
                other.center_name == center_name) &&
            (identical(other.logo_image, logo_image) ||
                other.logo_image == logo_image) &&
            (identical(other.hygene, hygene) || other.hygene == hygene) &&
            (identical(other.centerimage, centerimage) ||
                other.centerimage == centerimage) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.city_name, city_name) ||
                other.city_name == city_name) &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.areaname, areaname) ||
                other.areaname == areaname) &&
            (identical(other.service_master_id, service_master_id) ||
                other.service_master_id == service_master_id) &&
            (identical(other.service_master_name, service_master_name) ||
                other.service_master_name == service_master_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contact_no, contact_no) ||
                other.contact_no == contact_no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      center_id,
      center_name,
      logo_image,
      hygene,
      centerimage,
      city_id,
      city_name,
      area_id,
      areaname,
      service_master_id,
      service_master_name,
      email,
      contact_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterDatumImplCopyWith<_$CenterDatumImpl> get copyWith =>
      __$$CenterDatumImplCopyWithImpl<_$CenterDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterDatumImplToJson(
      this,
    );
  }
}

abstract class _CenterDatum implements CenterDatum {
  const factory _CenterDatum(
      {final String? center_id,
      final String? center_name,
      final String? logo_image,
      final String? hygene,
      final String? centerimage,
      final String? city_id,
      final String? city_name,
      final String? area_id,
      final String? areaname,
      final String? service_master_id,
      final String? service_master_name,
      final String? email,
      final String? contact_no}) = _$CenterDatumImpl;

  factory _CenterDatum.fromJson(Map<String, dynamic> json) =
      _$CenterDatumImpl.fromJson;

  @override
  String? get center_id;
  @override
  String? get center_name;
  @override
  String? get logo_image;
  @override
  String? get hygene;
  @override
  String? get centerimage;
  @override
  String? get city_id;
  @override
  String? get city_name;
  @override
  String? get area_id;
  @override
  String? get areaname;
  @override
  String? get service_master_id;
  @override
  String? get service_master_name;
  @override
  String? get email;
  @override
  String? get contact_no;
  @override
  @JsonKey(ignore: true)
  _$$CenterDatumImplCopyWith<_$CenterDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
