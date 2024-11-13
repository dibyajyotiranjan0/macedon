// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  Messages? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  @override
  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$HomeModelImpl(
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
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl({this.status, this.error, this.messages});

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final Messages? messages;

  @override
  String toString() {
    return 'HomeModel(status: $status, error: $error, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
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
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {final int? status,
      final bool? error,
      final Messages? messages}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  Messages? get messages;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  List<TestimonialDtl>? get testimonial_dtl =>
      throw _privateConstructorUsedError;
  List<BannerDtl>? get banner_dtl => throw _privateConstructorUsedError;
  List<ServiceList>? get Service_List => throw _privateConstructorUsedError;
  List<ServiceDatum>? get service_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<TestimonialDtl>? testimonial_dtl,
      List<BannerDtl>? banner_dtl,
      List<ServiceList>? Service_List,
      List<ServiceDatum>? service_data});
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
    Object? testimonial_dtl = freezed,
    Object? banner_dtl = freezed,
    Object? Service_List = freezed,
    Object? service_data = freezed,
  }) {
    return _then(_value.copyWith(
      testimonial_dtl: freezed == testimonial_dtl
          ? _value.testimonial_dtl
          : testimonial_dtl // ignore: cast_nullable_to_non_nullable
              as List<TestimonialDtl>?,
      banner_dtl: freezed == banner_dtl
          ? _value.banner_dtl
          : banner_dtl // ignore: cast_nullable_to_non_nullable
              as List<BannerDtl>?,
      Service_List: freezed == Service_List
          ? _value.Service_List
          : Service_List // ignore: cast_nullable_to_non_nullable
              as List<ServiceList>?,
      service_data: freezed == service_data
          ? _value.service_data
          : service_data // ignore: cast_nullable_to_non_nullable
              as List<ServiceDatum>?,
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
  $Res call(
      {List<TestimonialDtl>? testimonial_dtl,
      List<BannerDtl>? banner_dtl,
      List<ServiceList>? Service_List,
      List<ServiceDatum>? service_data});
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
    Object? testimonial_dtl = freezed,
    Object? banner_dtl = freezed,
    Object? Service_List = freezed,
    Object? service_data = freezed,
  }) {
    return _then(_$DataImpl(
      testimonial_dtl: freezed == testimonial_dtl
          ? _value._testimonial_dtl
          : testimonial_dtl // ignore: cast_nullable_to_non_nullable
              as List<TestimonialDtl>?,
      banner_dtl: freezed == banner_dtl
          ? _value._banner_dtl
          : banner_dtl // ignore: cast_nullable_to_non_nullable
              as List<BannerDtl>?,
      Service_List: freezed == Service_List
          ? _value._Service_List
          : Service_List // ignore: cast_nullable_to_non_nullable
              as List<ServiceList>?,
      service_data: freezed == service_data
          ? _value._service_data
          : service_data // ignore: cast_nullable_to_non_nullable
              as List<ServiceDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {final List<TestimonialDtl>? testimonial_dtl,
      final List<BannerDtl>? banner_dtl,
      final List<ServiceList>? Service_List,
      final List<ServiceDatum>? service_data})
      : _testimonial_dtl = testimonial_dtl,
        _banner_dtl = banner_dtl,
        _Service_List = Service_List,
        _service_data = service_data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<TestimonialDtl>? _testimonial_dtl;
  @override
  List<TestimonialDtl>? get testimonial_dtl {
    final value = _testimonial_dtl;
    if (value == null) return null;
    if (_testimonial_dtl is EqualUnmodifiableListView) return _testimonial_dtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerDtl>? _banner_dtl;
  @override
  List<BannerDtl>? get banner_dtl {
    final value = _banner_dtl;
    if (value == null) return null;
    if (_banner_dtl is EqualUnmodifiableListView) return _banner_dtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ServiceList>? _Service_List;
  @override
  List<ServiceList>? get Service_List {
    final value = _Service_List;
    if (value == null) return null;
    if (_Service_List is EqualUnmodifiableListView) return _Service_List;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ServiceDatum>? _service_data;
  @override
  List<ServiceDatum>? get service_data {
    final value = _service_data;
    if (value == null) return null;
    if (_service_data is EqualUnmodifiableListView) return _service_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(testimonial_dtl: $testimonial_dtl, banner_dtl: $banner_dtl, Service_List: $Service_List, service_data: $service_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._testimonial_dtl, _testimonial_dtl) &&
            const DeepCollectionEquality()
                .equals(other._banner_dtl, _banner_dtl) &&
            const DeepCollectionEquality()
                .equals(other._Service_List, _Service_List) &&
            const DeepCollectionEquality()
                .equals(other._service_data, _service_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_testimonial_dtl),
      const DeepCollectionEquality().hash(_banner_dtl),
      const DeepCollectionEquality().hash(_Service_List),
      const DeepCollectionEquality().hash(_service_data));

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
  const factory _Data(
      {final List<TestimonialDtl>? testimonial_dtl,
      final List<BannerDtl>? banner_dtl,
      final List<ServiceList>? Service_List,
      final List<ServiceDatum>? service_data}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<TestimonialDtl>? get testimonial_dtl;
  @override
  List<BannerDtl>? get banner_dtl;
  @override
  List<ServiceList>? get Service_List;
  @override
  List<ServiceDatum>? get service_data;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerDtl _$BannerDtlFromJson(Map<String, dynamic> json) {
  return _BannerDtl.fromJson(json);
}

/// @nodoc
mixin _$BannerDtl {
  String? get banner_id => throw _privateConstructorUsedError;
  String? get orderby => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDtlCopyWith<BannerDtl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDtlCopyWith<$Res> {
  factory $BannerDtlCopyWith(BannerDtl value, $Res Function(BannerDtl) then) =
      _$BannerDtlCopyWithImpl<$Res, BannerDtl>;
  @useResult
  $Res call({String? banner_id, String? orderby, String? image});
}

/// @nodoc
class _$BannerDtlCopyWithImpl<$Res, $Val extends BannerDtl>
    implements $BannerDtlCopyWith<$Res> {
  _$BannerDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner_id = freezed,
    Object? orderby = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      banner_id: freezed == banner_id
          ? _value.banner_id
          : banner_id // ignore: cast_nullable_to_non_nullable
              as String?,
      orderby: freezed == orderby
          ? _value.orderby
          : orderby // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerDtlImplCopyWith<$Res>
    implements $BannerDtlCopyWith<$Res> {
  factory _$$BannerDtlImplCopyWith(
          _$BannerDtlImpl value, $Res Function(_$BannerDtlImpl) then) =
      __$$BannerDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? banner_id, String? orderby, String? image});
}

/// @nodoc
class __$$BannerDtlImplCopyWithImpl<$Res>
    extends _$BannerDtlCopyWithImpl<$Res, _$BannerDtlImpl>
    implements _$$BannerDtlImplCopyWith<$Res> {
  __$$BannerDtlImplCopyWithImpl(
      _$BannerDtlImpl _value, $Res Function(_$BannerDtlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner_id = freezed,
    Object? orderby = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BannerDtlImpl(
      banner_id: freezed == banner_id
          ? _value.banner_id
          : banner_id // ignore: cast_nullable_to_non_nullable
              as String?,
      orderby: freezed == orderby
          ? _value.orderby
          : orderby // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerDtlImpl implements _BannerDtl {
  const _$BannerDtlImpl({this.banner_id, this.orderby, this.image});

  factory _$BannerDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDtlImplFromJson(json);

  @override
  final String? banner_id;
  @override
  final String? orderby;
  @override
  final String? image;

  @override
  String toString() {
    return 'BannerDtl(banner_id: $banner_id, orderby: $orderby, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDtlImpl &&
            (identical(other.banner_id, banner_id) ||
                other.banner_id == banner_id) &&
            (identical(other.orderby, orderby) || other.orderby == orderby) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, banner_id, orderby, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDtlImplCopyWith<_$BannerDtlImpl> get copyWith =>
      __$$BannerDtlImplCopyWithImpl<_$BannerDtlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDtlImplToJson(
      this,
    );
  }
}

abstract class _BannerDtl implements BannerDtl {
  const factory _BannerDtl(
      {final String? banner_id,
      final String? orderby,
      final String? image}) = _$BannerDtlImpl;

  factory _BannerDtl.fromJson(Map<String, dynamic> json) =
      _$BannerDtlImpl.fromJson;

  @override
  String? get banner_id;
  @override
  String? get orderby;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$BannerDtlImplCopyWith<_$BannerDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceDatum _$ServiceDatumFromJson(Map<String, dynamic> json) {
  return _ServiceDatum.fromJson(json);
}

/// @nodoc
mixin _$ServiceDatum {
  String? get service_id => throw _privateConstructorUsedError;
  String? get service_name => throw _privateConstructorUsedError;
  List<CenterDtl>? get CenterDtls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDatumCopyWith<ServiceDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDatumCopyWith<$Res> {
  factory $ServiceDatumCopyWith(
          ServiceDatum value, $Res Function(ServiceDatum) then) =
      _$ServiceDatumCopyWithImpl<$Res, ServiceDatum>;
  @useResult
  $Res call(
      {String? service_id, String? service_name, List<CenterDtl>? CenterDtls});
}

/// @nodoc
class _$ServiceDatumCopyWithImpl<$Res, $Val extends ServiceDatum>
    implements $ServiceDatumCopyWith<$Res> {
  _$ServiceDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_id = freezed,
    Object? service_name = freezed,
    Object? CenterDtls = freezed,
  }) {
    return _then(_value.copyWith(
      service_id: freezed == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_name: freezed == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String?,
      CenterDtls: freezed == CenterDtls
          ? _value.CenterDtls
          : CenterDtls // ignore: cast_nullable_to_non_nullable
              as List<CenterDtl>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceDatumImplCopyWith<$Res>
    implements $ServiceDatumCopyWith<$Res> {
  factory _$$ServiceDatumImplCopyWith(
          _$ServiceDatumImpl value, $Res Function(_$ServiceDatumImpl) then) =
      __$$ServiceDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? service_id, String? service_name, List<CenterDtl>? CenterDtls});
}

/// @nodoc
class __$$ServiceDatumImplCopyWithImpl<$Res>
    extends _$ServiceDatumCopyWithImpl<$Res, _$ServiceDatumImpl>
    implements _$$ServiceDatumImplCopyWith<$Res> {
  __$$ServiceDatumImplCopyWithImpl(
      _$ServiceDatumImpl _value, $Res Function(_$ServiceDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_id = freezed,
    Object? service_name = freezed,
    Object? CenterDtls = freezed,
  }) {
    return _then(_$ServiceDatumImpl(
      service_id: freezed == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_name: freezed == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String?,
      CenterDtls: freezed == CenterDtls
          ? _value._CenterDtls
          : CenterDtls // ignore: cast_nullable_to_non_nullable
              as List<CenterDtl>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDatumImpl implements _ServiceDatum {
  const _$ServiceDatumImpl(
      {this.service_id, this.service_name, final List<CenterDtl>? CenterDtls})
      : _CenterDtls = CenterDtls;

  factory _$ServiceDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDatumImplFromJson(json);

  @override
  final String? service_id;
  @override
  final String? service_name;
  final List<CenterDtl>? _CenterDtls;
  @override
  List<CenterDtl>? get CenterDtls {
    final value = _CenterDtls;
    if (value == null) return null;
    if (_CenterDtls is EqualUnmodifiableListView) return _CenterDtls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServiceDatum(service_id: $service_id, service_name: $service_name, CenterDtls: $CenterDtls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDatumImpl &&
            (identical(other.service_id, service_id) ||
                other.service_id == service_id) &&
            (identical(other.service_name, service_name) ||
                other.service_name == service_name) &&
            const DeepCollectionEquality()
                .equals(other._CenterDtls, _CenterDtls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, service_id, service_name,
      const DeepCollectionEquality().hash(_CenterDtls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDatumImplCopyWith<_$ServiceDatumImpl> get copyWith =>
      __$$ServiceDatumImplCopyWithImpl<_$ServiceDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDatumImplToJson(
      this,
    );
  }
}

abstract class _ServiceDatum implements ServiceDatum {
  const factory _ServiceDatum(
      {final String? service_id,
      final String? service_name,
      final List<CenterDtl>? CenterDtls}) = _$ServiceDatumImpl;

  factory _ServiceDatum.fromJson(Map<String, dynamic> json) =
      _$ServiceDatumImpl.fromJson;

  @override
  String? get service_id;
  @override
  String? get service_name;
  @override
  List<CenterDtl>? get CenterDtls;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDatumImplCopyWith<_$ServiceDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CenterDtl _$CenterDtlFromJson(Map<String, dynamic> json) {
  return _CenterDtl.fromJson(json);
}

/// @nodoc
mixin _$CenterDtl {
  String? get id => throw _privateConstructorUsedError;
  String? get center_name => throw _privateConstructorUsedError;
  String? get centerimage => throw _privateConstructorUsedError;
  String? get city_id => throw _privateConstructorUsedError;
  String? get city_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterDtlCopyWith<CenterDtl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterDtlCopyWith<$Res> {
  factory $CenterDtlCopyWith(CenterDtl value, $Res Function(CenterDtl) then) =
      _$CenterDtlCopyWithImpl<$Res, CenterDtl>;
  @useResult
  $Res call(
      {String? id,
      String? center_name,
      String? centerimage,
      String? city_id,
      String? city_name});
}

/// @nodoc
class _$CenterDtlCopyWithImpl<$Res, $Val extends CenterDtl>
    implements $CenterDtlCopyWith<$Res> {
  _$CenterDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? center_name = freezed,
    Object? centerimage = freezed,
    Object? city_id = freezed,
    Object? city_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterDtlImplCopyWith<$Res>
    implements $CenterDtlCopyWith<$Res> {
  factory _$$CenterDtlImplCopyWith(
          _$CenterDtlImpl value, $Res Function(_$CenterDtlImpl) then) =
      __$$CenterDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? center_name,
      String? centerimage,
      String? city_id,
      String? city_name});
}

/// @nodoc
class __$$CenterDtlImplCopyWithImpl<$Res>
    extends _$CenterDtlCopyWithImpl<$Res, _$CenterDtlImpl>
    implements _$$CenterDtlImplCopyWith<$Res> {
  __$$CenterDtlImplCopyWithImpl(
      _$CenterDtlImpl _value, $Res Function(_$CenterDtlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? center_name = freezed,
    Object? centerimage = freezed,
    Object? city_id = freezed,
    Object? city_name = freezed,
  }) {
    return _then(_$CenterDtlImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterDtlImpl implements _CenterDtl {
  const _$CenterDtlImpl(
      {this.id,
      this.center_name,
      this.centerimage,
      this.city_id,
      this.city_name});

  factory _$CenterDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterDtlImplFromJson(json);

  @override
  final String? id;
  @override
  final String? center_name;
  @override
  final String? centerimage;
  @override
  final String? city_id;
  @override
  final String? city_name;

  @override
  String toString() {
    return 'CenterDtl(id: $id, center_name: $center_name, centerimage: $centerimage, city_id: $city_id, city_name: $city_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterDtlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.center_name, center_name) ||
                other.center_name == center_name) &&
            (identical(other.centerimage, centerimage) ||
                other.centerimage == centerimage) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.city_name, city_name) ||
                other.city_name == city_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, center_name, centerimage, city_id, city_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterDtlImplCopyWith<_$CenterDtlImpl> get copyWith =>
      __$$CenterDtlImplCopyWithImpl<_$CenterDtlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterDtlImplToJson(
      this,
    );
  }
}

abstract class _CenterDtl implements CenterDtl {
  const factory _CenterDtl(
      {final String? id,
      final String? center_name,
      final String? centerimage,
      final String? city_id,
      final String? city_name}) = _$CenterDtlImpl;

  factory _CenterDtl.fromJson(Map<String, dynamic> json) =
      _$CenterDtlImpl.fromJson;

  @override
  String? get id;
  @override
  String? get center_name;
  @override
  String? get centerimage;
  @override
  String? get city_id;
  @override
  String? get city_name;
  @override
  @JsonKey(ignore: true)
  _$$CenterDtlImplCopyWith<_$CenterDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceList _$ServiceListFromJson(Map<String, dynamic> json) {
  return _ServiceList.fromJson(json);
}

/// @nodoc
mixin _$ServiceList {
  String? get service_master_id => throw _privateConstructorUsedError;
  String? get service_master_name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get service_type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<CenterService>? get center_service => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceListCopyWith<ServiceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListCopyWith<$Res> {
  factory $ServiceListCopyWith(
          ServiceList value, $Res Function(ServiceList) then) =
      _$ServiceListCopyWithImpl<$Res, ServiceList>;
  @useResult
  $Res call(
      {String? service_master_id,
      String? service_master_name,
      String? image,
      String? service_type,
      String? status,
      List<CenterService>? center_service});
}

/// @nodoc
class _$ServiceListCopyWithImpl<$Res, $Val extends ServiceList>
    implements $ServiceListCopyWith<$Res> {
  _$ServiceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_master_id = freezed,
    Object? service_master_name = freezed,
    Object? image = freezed,
    Object? service_type = freezed,
    Object? status = freezed,
    Object? center_service = freezed,
  }) {
    return _then(_value.copyWith(
      service_master_id: freezed == service_master_id
          ? _value.service_master_id
          : service_master_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_name: freezed == service_master_name
          ? _value.service_master_name
          : service_master_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      service_type: freezed == service_type
          ? _value.service_type
          : service_type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      center_service: freezed == center_service
          ? _value.center_service
          : center_service // ignore: cast_nullable_to_non_nullable
              as List<CenterService>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceListImplCopyWith<$Res>
    implements $ServiceListCopyWith<$Res> {
  factory _$$ServiceListImplCopyWith(
          _$ServiceListImpl value, $Res Function(_$ServiceListImpl) then) =
      __$$ServiceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? service_master_id,
      String? service_master_name,
      String? image,
      String? service_type,
      String? status,
      List<CenterService>? center_service});
}

/// @nodoc
class __$$ServiceListImplCopyWithImpl<$Res>
    extends _$ServiceListCopyWithImpl<$Res, _$ServiceListImpl>
    implements _$$ServiceListImplCopyWith<$Res> {
  __$$ServiceListImplCopyWithImpl(
      _$ServiceListImpl _value, $Res Function(_$ServiceListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_master_id = freezed,
    Object? service_master_name = freezed,
    Object? image = freezed,
    Object? service_type = freezed,
    Object? status = freezed,
    Object? center_service = freezed,
  }) {
    return _then(_$ServiceListImpl(
      service_master_id: freezed == service_master_id
          ? _value.service_master_id
          : service_master_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_name: freezed == service_master_name
          ? _value.service_master_name
          : service_master_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      service_type: freezed == service_type
          ? _value.service_type
          : service_type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      center_service: freezed == center_service
          ? _value._center_service
          : center_service // ignore: cast_nullable_to_non_nullable
              as List<CenterService>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceListImpl implements _ServiceList {
  const _$ServiceListImpl(
      {this.service_master_id,
      this.service_master_name,
      this.image,
      this.service_type,
      this.status,
      final List<CenterService>? center_service})
      : _center_service = center_service;

  factory _$ServiceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceListImplFromJson(json);

  @override
  final String? service_master_id;
  @override
  final String? service_master_name;
  @override
  final String? image;
  @override
  final String? service_type;
  @override
  final String? status;
  final List<CenterService>? _center_service;
  @override
  List<CenterService>? get center_service {
    final value = _center_service;
    if (value == null) return null;
    if (_center_service is EqualUnmodifiableListView) return _center_service;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServiceList(service_master_id: $service_master_id, service_master_name: $service_master_name, image: $image, service_type: $service_type, status: $status, center_service: $center_service)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListImpl &&
            (identical(other.service_master_id, service_master_id) ||
                other.service_master_id == service_master_id) &&
            (identical(other.service_master_name, service_master_name) ||
                other.service_master_name == service_master_name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.service_type, service_type) ||
                other.service_type == service_type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._center_service, _center_service));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      service_master_id,
      service_master_name,
      image,
      service_type,
      status,
      const DeepCollectionEquality().hash(_center_service));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListImplCopyWith<_$ServiceListImpl> get copyWith =>
      __$$ServiceListImplCopyWithImpl<_$ServiceListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceListImplToJson(
      this,
    );
  }
}

abstract class _ServiceList implements ServiceList {
  const factory _ServiceList(
      {final String? service_master_id,
      final String? service_master_name,
      final String? image,
      final String? service_type,
      final String? status,
      final List<CenterService>? center_service}) = _$ServiceListImpl;

  factory _ServiceList.fromJson(Map<String, dynamic> json) =
      _$ServiceListImpl.fromJson;

  @override
  String? get service_master_id;
  @override
  String? get service_master_name;
  @override
  String? get image;
  @override
  String? get service_type;
  @override
  String? get status;
  @override
  List<CenterService>? get center_service;
  @override
  @JsonKey(ignore: true)
  _$$ServiceListImplCopyWith<_$ServiceListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CenterService _$CenterServiceFromJson(Map<String, dynamic> json) {
  return _CenterService.fromJson(json);
}

/// @nodoc
mixin _$CenterService {
  String? get center_id => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;
  String? get center_name => throw _privateConstructorUsedError;
  String? get city_id => throw _privateConstructorUsedError;
  String? get city_name => throw _privateConstructorUsedError;
  String? get area_id => throw _privateConstructorUsedError;
  String? get areaname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterServiceCopyWith<CenterService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterServiceCopyWith<$Res> {
  factory $CenterServiceCopyWith(
          CenterService value, $Res Function(CenterService) then) =
      _$CenterServiceCopyWithImpl<$Res, CenterService>;
  @useResult
  $Res call(
      {String? center_id,
      String? profile_image,
      String? center_name,
      String? city_id,
      String? city_name,
      String? area_id,
      String? areaname});
}

/// @nodoc
class _$CenterServiceCopyWithImpl<$Res, $Val extends CenterService>
    implements $CenterServiceCopyWith<$Res> {
  _$CenterServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_id = freezed,
    Object? profile_image = freezed,
    Object? center_name = freezed,
    Object? city_id = freezed,
    Object? city_name = freezed,
    Object? area_id = freezed,
    Object? areaname = freezed,
  }) {
    return _then(_value.copyWith(
      center_id: freezed == center_id
          ? _value.center_id
          : center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterServiceImplCopyWith<$Res>
    implements $CenterServiceCopyWith<$Res> {
  factory _$$CenterServiceImplCopyWith(
          _$CenterServiceImpl value, $Res Function(_$CenterServiceImpl) then) =
      __$$CenterServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? center_id,
      String? profile_image,
      String? center_name,
      String? city_id,
      String? city_name,
      String? area_id,
      String? areaname});
}

/// @nodoc
class __$$CenterServiceImplCopyWithImpl<$Res>
    extends _$CenterServiceCopyWithImpl<$Res, _$CenterServiceImpl>
    implements _$$CenterServiceImplCopyWith<$Res> {
  __$$CenterServiceImplCopyWithImpl(
      _$CenterServiceImpl _value, $Res Function(_$CenterServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_id = freezed,
    Object? profile_image = freezed,
    Object? center_name = freezed,
    Object? city_id = freezed,
    Object? city_name = freezed,
    Object? area_id = freezed,
    Object? areaname = freezed,
  }) {
    return _then(_$CenterServiceImpl(
      center_id: freezed == center_id
          ? _value.center_id
          : center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterServiceImpl implements _CenterService {
  const _$CenterServiceImpl(
      {this.center_id,
      this.profile_image,
      this.center_name,
      this.city_id,
      this.city_name,
      this.area_id,
      this.areaname});

  factory _$CenterServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterServiceImplFromJson(json);

  @override
  final String? center_id;
  @override
  final String? profile_image;
  @override
  final String? center_name;
  @override
  final String? city_id;
  @override
  final String? city_name;
  @override
  final String? area_id;
  @override
  final String? areaname;

  @override
  String toString() {
    return 'CenterService(center_id: $center_id, profile_image: $profile_image, center_name: $center_name, city_id: $city_id, city_name: $city_name, area_id: $area_id, areaname: $areaname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterServiceImpl &&
            (identical(other.center_id, center_id) ||
                other.center_id == center_id) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.center_name, center_name) ||
                other.center_name == center_name) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.city_name, city_name) ||
                other.city_name == city_name) &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.areaname, areaname) ||
                other.areaname == areaname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, center_id, profile_image,
      center_name, city_id, city_name, area_id, areaname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterServiceImplCopyWith<_$CenterServiceImpl> get copyWith =>
      __$$CenterServiceImplCopyWithImpl<_$CenterServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterServiceImplToJson(
      this,
    );
  }
}

abstract class _CenterService implements CenterService {
  const factory _CenterService(
      {final String? center_id,
      final String? profile_image,
      final String? center_name,
      final String? city_id,
      final String? city_name,
      final String? area_id,
      final String? areaname}) = _$CenterServiceImpl;

  factory _CenterService.fromJson(Map<String, dynamic> json) =
      _$CenterServiceImpl.fromJson;

  @override
  String? get center_id;
  @override
  String? get profile_image;
  @override
  String? get center_name;
  @override
  String? get city_id;
  @override
  String? get city_name;
  @override
  String? get area_id;
  @override
  String? get areaname;
  @override
  @JsonKey(ignore: true)
  _$$CenterServiceImplCopyWith<_$CenterServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestimonialDtl _$TestimonialDtlFromJson(Map<String, dynamic> json) {
  return _TestimonialDtl.fromJson(json);
}

/// @nodoc
mixin _$TestimonialDtl {
  String? get testimonial_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestimonialDtlCopyWith<TestimonialDtl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestimonialDtlCopyWith<$Res> {
  factory $TestimonialDtlCopyWith(
          TestimonialDtl value, $Res Function(TestimonialDtl) then) =
      _$TestimonialDtlCopyWithImpl<$Res, TestimonialDtl>;
  @useResult
  $Res call(
      {String? testimonial_id, String? name, String? image, String? message});
}

/// @nodoc
class _$TestimonialDtlCopyWithImpl<$Res, $Val extends TestimonialDtl>
    implements $TestimonialDtlCopyWith<$Res> {
  _$TestimonialDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testimonial_id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      testimonial_id: freezed == testimonial_id
          ? _value.testimonial_id
          : testimonial_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestimonialDtlImplCopyWith<$Res>
    implements $TestimonialDtlCopyWith<$Res> {
  factory _$$TestimonialDtlImplCopyWith(_$TestimonialDtlImpl value,
          $Res Function(_$TestimonialDtlImpl) then) =
      __$$TestimonialDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? testimonial_id, String? name, String? image, String? message});
}

/// @nodoc
class __$$TestimonialDtlImplCopyWithImpl<$Res>
    extends _$TestimonialDtlCopyWithImpl<$Res, _$TestimonialDtlImpl>
    implements _$$TestimonialDtlImplCopyWith<$Res> {
  __$$TestimonialDtlImplCopyWithImpl(
      _$TestimonialDtlImpl _value, $Res Function(_$TestimonialDtlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testimonial_id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? message = freezed,
  }) {
    return _then(_$TestimonialDtlImpl(
      testimonial_id: freezed == testimonial_id
          ? _value.testimonial_id
          : testimonial_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestimonialDtlImpl implements _TestimonialDtl {
  const _$TestimonialDtlImpl(
      {this.testimonial_id, this.name, this.image, this.message});

  factory _$TestimonialDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestimonialDtlImplFromJson(json);

  @override
  final String? testimonial_id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? message;

  @override
  String toString() {
    return 'TestimonialDtl(testimonial_id: $testimonial_id, name: $name, image: $image, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestimonialDtlImpl &&
            (identical(other.testimonial_id, testimonial_id) ||
                other.testimonial_id == testimonial_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testimonial_id, name, image, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestimonialDtlImplCopyWith<_$TestimonialDtlImpl> get copyWith =>
      __$$TestimonialDtlImplCopyWithImpl<_$TestimonialDtlImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestimonialDtlImplToJson(
      this,
    );
  }
}

abstract class _TestimonialDtl implements TestimonialDtl {
  const factory _TestimonialDtl(
      {final String? testimonial_id,
      final String? name,
      final String? image,
      final String? message}) = _$TestimonialDtlImpl;

  factory _TestimonialDtl.fromJson(Map<String, dynamic> json) =
      _$TestimonialDtlImpl.fromJson;

  @override
  String? get testimonial_id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$TestimonialDtlImplCopyWith<_$TestimonialDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
