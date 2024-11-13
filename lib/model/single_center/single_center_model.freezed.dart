// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_center_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingleCenterModel _$SingleCenterModelFromJson(Map<String, dynamic> json) {
  return _SingleCenterModel.fromJson(json);
}

/// @nodoc
mixin _$SingleCenterModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  Messages? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleCenterModelCopyWith<SingleCenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCenterModelCopyWith<$Res> {
  factory $SingleCenterModelCopyWith(
          SingleCenterModel value, $Res Function(SingleCenterModel) then) =
      _$SingleCenterModelCopyWithImpl<$Res, SingleCenterModel>;
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class _$SingleCenterModelCopyWithImpl<$Res, $Val extends SingleCenterModel>
    implements $SingleCenterModelCopyWith<$Res> {
  _$SingleCenterModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SingleCenterModelImplCopyWith<$Res>
    implements $SingleCenterModelCopyWith<$Res> {
  factory _$$SingleCenterModelImplCopyWith(_$SingleCenterModelImpl value,
          $Res Function(_$SingleCenterModelImpl) then) =
      __$$SingleCenterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  @override
  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class __$$SingleCenterModelImplCopyWithImpl<$Res>
    extends _$SingleCenterModelCopyWithImpl<$Res, _$SingleCenterModelImpl>
    implements _$$SingleCenterModelImplCopyWith<$Res> {
  __$$SingleCenterModelImplCopyWithImpl(_$SingleCenterModelImpl _value,
      $Res Function(_$SingleCenterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$SingleCenterModelImpl(
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
class _$SingleCenterModelImpl implements _SingleCenterModel {
  const _$SingleCenterModelImpl({this.status, this.error, this.messages});

  factory _$SingleCenterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleCenterModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final Messages? messages;

  @override
  String toString() {
    return 'SingleCenterModel(status: $status, error: $error, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCenterModelImpl &&
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
  _$$SingleCenterModelImplCopyWith<_$SingleCenterModelImpl> get copyWith =>
      __$$SingleCenterModelImplCopyWithImpl<_$SingleCenterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleCenterModelImplToJson(
      this,
    );
  }
}

abstract class _SingleCenterModel implements SingleCenterModel {
  const factory _SingleCenterModel(
      {final int? status,
      final bool? error,
      final Messages? messages}) = _$SingleCenterModelImpl;

  factory _SingleCenterModel.fromJson(Map<String, dynamic> json) =
      _$SingleCenterModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  Messages? get messages;
  @override
  @JsonKey(ignore: true)
  _$$SingleCenterModelImplCopyWith<_$SingleCenterModelImpl> get copyWith =>
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
  List<SingleCenterDatum>? get Single_Center_Data =>
      throw _privateConstructorUsedError;
  List<SingleCenterAmety>? get Single_Center_Ameties =>
      throw _privateConstructorUsedError;
  List<SingleCenterGallery>? get Single_Center_gallery =>
      throw _privateConstructorUsedError;
  List<dynamic>? get rating_review => throw _privateConstructorUsedError;
  List<SingleCenterActivity>? get Single_Center_Activity =>
      throw _privateConstructorUsedError;

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
      {List<SingleCenterDatum>? Single_Center_Data,
      List<SingleCenterAmety>? Single_Center_Ameties,
      List<SingleCenterGallery>? Single_Center_gallery,
      List<dynamic>? rating_review,
      List<SingleCenterActivity>? Single_Center_Activity});
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
    Object? Single_Center_Data = freezed,
    Object? Single_Center_Ameties = freezed,
    Object? Single_Center_gallery = freezed,
    Object? rating_review = freezed,
    Object? Single_Center_Activity = freezed,
  }) {
    return _then(_value.copyWith(
      Single_Center_Data: freezed == Single_Center_Data
          ? _value.Single_Center_Data
          : Single_Center_Data // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterDatum>?,
      Single_Center_Ameties: freezed == Single_Center_Ameties
          ? _value.Single_Center_Ameties
          : Single_Center_Ameties // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterAmety>?,
      Single_Center_gallery: freezed == Single_Center_gallery
          ? _value.Single_Center_gallery
          : Single_Center_gallery // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterGallery>?,
      rating_review: freezed == rating_review
          ? _value.rating_review
          : rating_review // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      Single_Center_Activity: freezed == Single_Center_Activity
          ? _value.Single_Center_Activity
          : Single_Center_Activity // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterActivity>?,
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
      {List<SingleCenterDatum>? Single_Center_Data,
      List<SingleCenterAmety>? Single_Center_Ameties,
      List<SingleCenterGallery>? Single_Center_gallery,
      List<dynamic>? rating_review,
      List<SingleCenterActivity>? Single_Center_Activity});
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
    Object? Single_Center_Data = freezed,
    Object? Single_Center_Ameties = freezed,
    Object? Single_Center_gallery = freezed,
    Object? rating_review = freezed,
    Object? Single_Center_Activity = freezed,
  }) {
    return _then(_$DataImpl(
      Single_Center_Data: freezed == Single_Center_Data
          ? _value._Single_Center_Data
          : Single_Center_Data // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterDatum>?,
      Single_Center_Ameties: freezed == Single_Center_Ameties
          ? _value._Single_Center_Ameties
          : Single_Center_Ameties // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterAmety>?,
      Single_Center_gallery: freezed == Single_Center_gallery
          ? _value._Single_Center_gallery
          : Single_Center_gallery // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterGallery>?,
      rating_review: freezed == rating_review
          ? _value._rating_review
          : rating_review // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      Single_Center_Activity: freezed == Single_Center_Activity
          ? _value._Single_Center_Activity
          : Single_Center_Activity // ignore: cast_nullable_to_non_nullable
              as List<SingleCenterActivity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {final List<SingleCenterDatum>? Single_Center_Data,
      final List<SingleCenterAmety>? Single_Center_Ameties,
      final List<SingleCenterGallery>? Single_Center_gallery,
      final List<dynamic>? rating_review,
      final List<SingleCenterActivity>? Single_Center_Activity})
      : _Single_Center_Data = Single_Center_Data,
        _Single_Center_Ameties = Single_Center_Ameties,
        _Single_Center_gallery = Single_Center_gallery,
        _rating_review = rating_review,
        _Single_Center_Activity = Single_Center_Activity;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<SingleCenterDatum>? _Single_Center_Data;
  @override
  List<SingleCenterDatum>? get Single_Center_Data {
    final value = _Single_Center_Data;
    if (value == null) return null;
    if (_Single_Center_Data is EqualUnmodifiableListView)
      return _Single_Center_Data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SingleCenterAmety>? _Single_Center_Ameties;
  @override
  List<SingleCenterAmety>? get Single_Center_Ameties {
    final value = _Single_Center_Ameties;
    if (value == null) return null;
    if (_Single_Center_Ameties is EqualUnmodifiableListView)
      return _Single_Center_Ameties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SingleCenterGallery>? _Single_Center_gallery;
  @override
  List<SingleCenterGallery>? get Single_Center_gallery {
    final value = _Single_Center_gallery;
    if (value == null) return null;
    if (_Single_Center_gallery is EqualUnmodifiableListView)
      return _Single_Center_gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _rating_review;
  @override
  List<dynamic>? get rating_review {
    final value = _rating_review;
    if (value == null) return null;
    if (_rating_review is EqualUnmodifiableListView) return _rating_review;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SingleCenterActivity>? _Single_Center_Activity;
  @override
  List<SingleCenterActivity>? get Single_Center_Activity {
    final value = _Single_Center_Activity;
    if (value == null) return null;
    if (_Single_Center_Activity is EqualUnmodifiableListView)
      return _Single_Center_Activity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(Single_Center_Data: $Single_Center_Data, Single_Center_Ameties: $Single_Center_Ameties, Single_Center_gallery: $Single_Center_gallery, rating_review: $rating_review, Single_Center_Activity: $Single_Center_Activity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._Single_Center_Data, _Single_Center_Data) &&
            const DeepCollectionEquality()
                .equals(other._Single_Center_Ameties, _Single_Center_Ameties) &&
            const DeepCollectionEquality()
                .equals(other._Single_Center_gallery, _Single_Center_gallery) &&
            const DeepCollectionEquality()
                .equals(other._rating_review, _rating_review) &&
            const DeepCollectionEquality().equals(
                other._Single_Center_Activity, _Single_Center_Activity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_Single_Center_Data),
      const DeepCollectionEquality().hash(_Single_Center_Ameties),
      const DeepCollectionEquality().hash(_Single_Center_gallery),
      const DeepCollectionEquality().hash(_rating_review),
      const DeepCollectionEquality().hash(_Single_Center_Activity));

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
      {final List<SingleCenterDatum>? Single_Center_Data,
      final List<SingleCenterAmety>? Single_Center_Ameties,
      final List<SingleCenterGallery>? Single_Center_gallery,
      final List<dynamic>? rating_review,
      final List<SingleCenterActivity>? Single_Center_Activity}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<SingleCenterDatum>? get Single_Center_Data;
  @override
  List<SingleCenterAmety>? get Single_Center_Ameties;
  @override
  List<SingleCenterGallery>? get Single_Center_gallery;
  @override
  List<dynamic>? get rating_review;
  @override
  List<SingleCenterActivity>? get Single_Center_Activity;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleCenterActivity _$SingleCenterActivityFromJson(Map<String, dynamic> json) {
  return _SingleCenterActivity.fromJson(json);
}

/// @nodoc
mixin _$SingleCenterActivity {
  String? get service_id => throw _privateConstructorUsedError;
  String? get service_name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<dynamic>? get packages => throw _privateConstructorUsedError;
  List<dynamic>? get centertiming => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleCenterActivityCopyWith<SingleCenterActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCenterActivityCopyWith<$Res> {
  factory $SingleCenterActivityCopyWith(SingleCenterActivity value,
          $Res Function(SingleCenterActivity) then) =
      _$SingleCenterActivityCopyWithImpl<$Res, SingleCenterActivity>;
  @useResult
  $Res call(
      {String? service_id,
      String? service_name,
      String? image,
      List<dynamic>? packages,
      List<dynamic>? centertiming});
}

/// @nodoc
class _$SingleCenterActivityCopyWithImpl<$Res,
        $Val extends SingleCenterActivity>
    implements $SingleCenterActivityCopyWith<$Res> {
  _$SingleCenterActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_id = freezed,
    Object? service_name = freezed,
    Object? image = freezed,
    Object? packages = freezed,
    Object? centertiming = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      centertiming: freezed == centertiming
          ? _value.centertiming
          : centertiming // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleCenterActivityImplCopyWith<$Res>
    implements $SingleCenterActivityCopyWith<$Res> {
  factory _$$SingleCenterActivityImplCopyWith(_$SingleCenterActivityImpl value,
          $Res Function(_$SingleCenterActivityImpl) then) =
      __$$SingleCenterActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? service_id,
      String? service_name,
      String? image,
      List<dynamic>? packages,
      List<dynamic>? centertiming});
}

/// @nodoc
class __$$SingleCenterActivityImplCopyWithImpl<$Res>
    extends _$SingleCenterActivityCopyWithImpl<$Res, _$SingleCenterActivityImpl>
    implements _$$SingleCenterActivityImplCopyWith<$Res> {
  __$$SingleCenterActivityImplCopyWithImpl(_$SingleCenterActivityImpl _value,
      $Res Function(_$SingleCenterActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_id = freezed,
    Object? service_name = freezed,
    Object? image = freezed,
    Object? packages = freezed,
    Object? centertiming = freezed,
  }) {
    return _then(_$SingleCenterActivityImpl(
      service_id: freezed == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_name: freezed == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      centertiming: freezed == centertiming
          ? _value._centertiming
          : centertiming // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleCenterActivityImpl implements _SingleCenterActivity {
  const _$SingleCenterActivityImpl(
      {this.service_id,
      this.service_name,
      this.image,
      final List<dynamic>? packages,
      final List<dynamic>? centertiming})
      : _packages = packages,
        _centertiming = centertiming;

  factory _$SingleCenterActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleCenterActivityImplFromJson(json);

  @override
  final String? service_id;
  @override
  final String? service_name;
  @override
  final String? image;
  final List<dynamic>? _packages;
  @override
  List<dynamic>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _centertiming;
  @override
  List<dynamic>? get centertiming {
    final value = _centertiming;
    if (value == null) return null;
    if (_centertiming is EqualUnmodifiableListView) return _centertiming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SingleCenterActivity(service_id: $service_id, service_name: $service_name, image: $image, packages: $packages, centertiming: $centertiming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCenterActivityImpl &&
            (identical(other.service_id, service_id) ||
                other.service_id == service_id) &&
            (identical(other.service_name, service_name) ||
                other.service_name == service_name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            const DeepCollectionEquality()
                .equals(other._centertiming, _centertiming));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      service_id,
      service_name,
      image,
      const DeepCollectionEquality().hash(_packages),
      const DeepCollectionEquality().hash(_centertiming));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCenterActivityImplCopyWith<_$SingleCenterActivityImpl>
      get copyWith =>
          __$$SingleCenterActivityImplCopyWithImpl<_$SingleCenterActivityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleCenterActivityImplToJson(
      this,
    );
  }
}

abstract class _SingleCenterActivity implements SingleCenterActivity {
  const factory _SingleCenterActivity(
      {final String? service_id,
      final String? service_name,
      final String? image,
      final List<dynamic>? packages,
      final List<dynamic>? centertiming}) = _$SingleCenterActivityImpl;

  factory _SingleCenterActivity.fromJson(Map<String, dynamic> json) =
      _$SingleCenterActivityImpl.fromJson;

  @override
  String? get service_id;
  @override
  String? get service_name;
  @override
  String? get image;
  @override
  List<dynamic>? get packages;
  @override
  List<dynamic>? get centertiming;
  @override
  @JsonKey(ignore: true)
  _$$SingleCenterActivityImplCopyWith<_$SingleCenterActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SingleCenterAmety _$SingleCenterAmetyFromJson(Map<String, dynamic> json) {
  return _SingleCenterAmety.fromJson(json);
}

/// @nodoc
mixin _$SingleCenterAmety {
  String? get facilities_id => throw _privateConstructorUsedError;
  String? get facilities_name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleCenterAmetyCopyWith<SingleCenterAmety> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCenterAmetyCopyWith<$Res> {
  factory $SingleCenterAmetyCopyWith(
          SingleCenterAmety value, $Res Function(SingleCenterAmety) then) =
      _$SingleCenterAmetyCopyWithImpl<$Res, SingleCenterAmety>;
  @useResult
  $Res call({String? facilities_id, String? facilities_name, String? image});
}

/// @nodoc
class _$SingleCenterAmetyCopyWithImpl<$Res, $Val extends SingleCenterAmety>
    implements $SingleCenterAmetyCopyWith<$Res> {
  _$SingleCenterAmetyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities_id = freezed,
    Object? facilities_name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      facilities_id: freezed == facilities_id
          ? _value.facilities_id
          : facilities_id // ignore: cast_nullable_to_non_nullable
              as String?,
      facilities_name: freezed == facilities_name
          ? _value.facilities_name
          : facilities_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleCenterAmetyImplCopyWith<$Res>
    implements $SingleCenterAmetyCopyWith<$Res> {
  factory _$$SingleCenterAmetyImplCopyWith(_$SingleCenterAmetyImpl value,
          $Res Function(_$SingleCenterAmetyImpl) then) =
      __$$SingleCenterAmetyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? facilities_id, String? facilities_name, String? image});
}

/// @nodoc
class __$$SingleCenterAmetyImplCopyWithImpl<$Res>
    extends _$SingleCenterAmetyCopyWithImpl<$Res, _$SingleCenterAmetyImpl>
    implements _$$SingleCenterAmetyImplCopyWith<$Res> {
  __$$SingleCenterAmetyImplCopyWithImpl(_$SingleCenterAmetyImpl _value,
      $Res Function(_$SingleCenterAmetyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities_id = freezed,
    Object? facilities_name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SingleCenterAmetyImpl(
      facilities_id: freezed == facilities_id
          ? _value.facilities_id
          : facilities_id // ignore: cast_nullable_to_non_nullable
              as String?,
      facilities_name: freezed == facilities_name
          ? _value.facilities_name
          : facilities_name // ignore: cast_nullable_to_non_nullable
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
class _$SingleCenterAmetyImpl implements _SingleCenterAmety {
  const _$SingleCenterAmetyImpl(
      {this.facilities_id, this.facilities_name, this.image});

  factory _$SingleCenterAmetyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleCenterAmetyImplFromJson(json);

  @override
  final String? facilities_id;
  @override
  final String? facilities_name;
  @override
  final String? image;

  @override
  String toString() {
    return 'SingleCenterAmety(facilities_id: $facilities_id, facilities_name: $facilities_name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCenterAmetyImpl &&
            (identical(other.facilities_id, facilities_id) ||
                other.facilities_id == facilities_id) &&
            (identical(other.facilities_name, facilities_name) ||
                other.facilities_name == facilities_name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, facilities_id, facilities_name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCenterAmetyImplCopyWith<_$SingleCenterAmetyImpl> get copyWith =>
      __$$SingleCenterAmetyImplCopyWithImpl<_$SingleCenterAmetyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleCenterAmetyImplToJson(
      this,
    );
  }
}

abstract class _SingleCenterAmety implements SingleCenterAmety {
  const factory _SingleCenterAmety(
      {final String? facilities_id,
      final String? facilities_name,
      final String? image}) = _$SingleCenterAmetyImpl;

  factory _SingleCenterAmety.fromJson(Map<String, dynamic> json) =
      _$SingleCenterAmetyImpl.fromJson;

  @override
  String? get facilities_id;
  @override
  String? get facilities_name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SingleCenterAmetyImplCopyWith<_$SingleCenterAmetyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleCenterDatum _$SingleCenterDatumFromJson(Map<String, dynamic> json) {
  return _SingleCenterDatum.fromJson(json);
}

/// @nodoc
mixin _$SingleCenterDatum {
  String? get center_id => throw _privateConstructorUsedError;
  String? get center_name => throw _privateConstructorUsedError;
  dynamic get logo_image => throw _privateConstructorUsedError;
  String? get hygene => throw _privateConstructorUsedError;
  String? get centerimage => throw _privateConstructorUsedError;
  String? get city_id => throw _privateConstructorUsedError;
  String? get city_name => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get contact_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleCenterDatumCopyWith<SingleCenterDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCenterDatumCopyWith<$Res> {
  factory $SingleCenterDatumCopyWith(
          SingleCenterDatum value, $Res Function(SingleCenterDatum) then) =
      _$SingleCenterDatumCopyWithImpl<$Res, SingleCenterDatum>;
  @useResult
  $Res call(
      {String? center_id,
      String? center_name,
      dynamic logo_image,
      String? hygene,
      String? centerimage,
      String? city_id,
      String? city_name,
      String? pin,
      String? address1,
      String? email,
      String? contact_no});
}

/// @nodoc
class _$SingleCenterDatumCopyWithImpl<$Res, $Val extends SingleCenterDatum>
    implements $SingleCenterDatumCopyWith<$Res> {
  _$SingleCenterDatumCopyWithImpl(this._value, this._then);

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
    Object? pin = freezed,
    Object? address1 = freezed,
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
              as dynamic,
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
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SingleCenterDatumImplCopyWith<$Res>
    implements $SingleCenterDatumCopyWith<$Res> {
  factory _$$SingleCenterDatumImplCopyWith(_$SingleCenterDatumImpl value,
          $Res Function(_$SingleCenterDatumImpl) then) =
      __$$SingleCenterDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? center_id,
      String? center_name,
      dynamic logo_image,
      String? hygene,
      String? centerimage,
      String? city_id,
      String? city_name,
      String? pin,
      String? address1,
      String? email,
      String? contact_no});
}

/// @nodoc
class __$$SingleCenterDatumImplCopyWithImpl<$Res>
    extends _$SingleCenterDatumCopyWithImpl<$Res, _$SingleCenterDatumImpl>
    implements _$$SingleCenterDatumImplCopyWith<$Res> {
  __$$SingleCenterDatumImplCopyWithImpl(_$SingleCenterDatumImpl _value,
      $Res Function(_$SingleCenterDatumImpl) _then)
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
    Object? pin = freezed,
    Object? address1 = freezed,
    Object? email = freezed,
    Object? contact_no = freezed,
  }) {
    return _then(_$SingleCenterDatumImpl(
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
              as dynamic,
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
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
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
class _$SingleCenterDatumImpl implements _SingleCenterDatum {
  const _$SingleCenterDatumImpl(
      {this.center_id,
      this.center_name,
      this.logo_image,
      this.hygene,
      this.centerimage,
      this.city_id,
      this.city_name,
      this.pin,
      this.address1,
      this.email,
      this.contact_no});

  factory _$SingleCenterDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleCenterDatumImplFromJson(json);

  @override
  final String? center_id;
  @override
  final String? center_name;
  @override
  final dynamic logo_image;
  @override
  final String? hygene;
  @override
  final String? centerimage;
  @override
  final String? city_id;
  @override
  final String? city_name;
  @override
  final String? pin;
  @override
  final String? address1;
  @override
  final String? email;
  @override
  final String? contact_no;

  @override
  String toString() {
    return 'SingleCenterDatum(center_id: $center_id, center_name: $center_name, logo_image: $logo_image, hygene: $hygene, centerimage: $centerimage, city_id: $city_id, city_name: $city_name, pin: $pin, address1: $address1, email: $email, contact_no: $contact_no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCenterDatumImpl &&
            (identical(other.center_id, center_id) ||
                other.center_id == center_id) &&
            (identical(other.center_name, center_name) ||
                other.center_name == center_name) &&
            const DeepCollectionEquality()
                .equals(other.logo_image, logo_image) &&
            (identical(other.hygene, hygene) || other.hygene == hygene) &&
            (identical(other.centerimage, centerimage) ||
                other.centerimage == centerimage) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.city_name, city_name) ||
                other.city_name == city_name) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
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
      const DeepCollectionEquality().hash(logo_image),
      hygene,
      centerimage,
      city_id,
      city_name,
      pin,
      address1,
      email,
      contact_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCenterDatumImplCopyWith<_$SingleCenterDatumImpl> get copyWith =>
      __$$SingleCenterDatumImplCopyWithImpl<_$SingleCenterDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleCenterDatumImplToJson(
      this,
    );
  }
}

abstract class _SingleCenterDatum implements SingleCenterDatum {
  const factory _SingleCenterDatum(
      {final String? center_id,
      final String? center_name,
      final dynamic logo_image,
      final String? hygene,
      final String? centerimage,
      final String? city_id,
      final String? city_name,
      final String? pin,
      final String? address1,
      final String? email,
      final String? contact_no}) = _$SingleCenterDatumImpl;

  factory _SingleCenterDatum.fromJson(Map<String, dynamic> json) =
      _$SingleCenterDatumImpl.fromJson;

  @override
  String? get center_id;
  @override
  String? get center_name;
  @override
  dynamic get logo_image;
  @override
  String? get hygene;
  @override
  String? get centerimage;
  @override
  String? get city_id;
  @override
  String? get city_name;
  @override
  String? get pin;
  @override
  String? get address1;
  @override
  String? get email;
  @override
  String? get contact_no;
  @override
  @JsonKey(ignore: true)
  _$$SingleCenterDatumImplCopyWith<_$SingleCenterDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleCenterGallery _$SingleCenterGalleryFromJson(Map<String, dynamic> json) {
  return _SingleCenterGallery.fromJson(json);
}

/// @nodoc
mixin _$SingleCenterGallery {
  String? get center_gallery_id => throw _privateConstructorUsedError;
  String? get cente_image => throw _privateConstructorUsedError;
  String? get center_id => throw _privateConstructorUsedError;
  String? get created_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleCenterGalleryCopyWith<SingleCenterGallery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCenterGalleryCopyWith<$Res> {
  factory $SingleCenterGalleryCopyWith(
          SingleCenterGallery value, $Res Function(SingleCenterGallery) then) =
      _$SingleCenterGalleryCopyWithImpl<$Res, SingleCenterGallery>;
  @useResult
  $Res call(
      {String? center_gallery_id,
      String? cente_image,
      String? center_id,
      String? created_date});
}

/// @nodoc
class _$SingleCenterGalleryCopyWithImpl<$Res, $Val extends SingleCenterGallery>
    implements $SingleCenterGalleryCopyWith<$Res> {
  _$SingleCenterGalleryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_gallery_id = freezed,
    Object? cente_image = freezed,
    Object? center_id = freezed,
    Object? created_date = freezed,
  }) {
    return _then(_value.copyWith(
      center_gallery_id: freezed == center_gallery_id
          ? _value.center_gallery_id
          : center_gallery_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cente_image: freezed == cente_image
          ? _value.cente_image
          : cente_image // ignore: cast_nullable_to_non_nullable
              as String?,
      center_id: freezed == center_id
          ? _value.center_id
          : center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      created_date: freezed == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleCenterGalleryImplCopyWith<$Res>
    implements $SingleCenterGalleryCopyWith<$Res> {
  factory _$$SingleCenterGalleryImplCopyWith(_$SingleCenterGalleryImpl value,
          $Res Function(_$SingleCenterGalleryImpl) then) =
      __$$SingleCenterGalleryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? center_gallery_id,
      String? cente_image,
      String? center_id,
      String? created_date});
}

/// @nodoc
class __$$SingleCenterGalleryImplCopyWithImpl<$Res>
    extends _$SingleCenterGalleryCopyWithImpl<$Res, _$SingleCenterGalleryImpl>
    implements _$$SingleCenterGalleryImplCopyWith<$Res> {
  __$$SingleCenterGalleryImplCopyWithImpl(_$SingleCenterGalleryImpl _value,
      $Res Function(_$SingleCenterGalleryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_gallery_id = freezed,
    Object? cente_image = freezed,
    Object? center_id = freezed,
    Object? created_date = freezed,
  }) {
    return _then(_$SingleCenterGalleryImpl(
      center_gallery_id: freezed == center_gallery_id
          ? _value.center_gallery_id
          : center_gallery_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cente_image: freezed == cente_image
          ? _value.cente_image
          : cente_image // ignore: cast_nullable_to_non_nullable
              as String?,
      center_id: freezed == center_id
          ? _value.center_id
          : center_id // ignore: cast_nullable_to_non_nullable
              as String?,
      created_date: freezed == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleCenterGalleryImpl implements _SingleCenterGallery {
  const _$SingleCenterGalleryImpl(
      {this.center_gallery_id,
      this.cente_image,
      this.center_id,
      this.created_date});

  factory _$SingleCenterGalleryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleCenterGalleryImplFromJson(json);

  @override
  final String? center_gallery_id;
  @override
  final String? cente_image;
  @override
  final String? center_id;
  @override
  final String? created_date;

  @override
  String toString() {
    return 'SingleCenterGallery(center_gallery_id: $center_gallery_id, cente_image: $cente_image, center_id: $center_id, created_date: $created_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCenterGalleryImpl &&
            (identical(other.center_gallery_id, center_gallery_id) ||
                other.center_gallery_id == center_gallery_id) &&
            (identical(other.cente_image, cente_image) ||
                other.cente_image == cente_image) &&
            (identical(other.center_id, center_id) ||
                other.center_id == center_id) &&
            (identical(other.created_date, created_date) ||
                other.created_date == created_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, center_gallery_id, cente_image, center_id, created_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCenterGalleryImplCopyWith<_$SingleCenterGalleryImpl> get copyWith =>
      __$$SingleCenterGalleryImplCopyWithImpl<_$SingleCenterGalleryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleCenterGalleryImplToJson(
      this,
    );
  }
}

abstract class _SingleCenterGallery implements SingleCenterGallery {
  const factory _SingleCenterGallery(
      {final String? center_gallery_id,
      final String? cente_image,
      final String? center_id,
      final String? created_date}) = _$SingleCenterGalleryImpl;

  factory _SingleCenterGallery.fromJson(Map<String, dynamic> json) =
      _$SingleCenterGalleryImpl.fromJson;

  @override
  String? get center_gallery_id;
  @override
  String? get cente_image;
  @override
  String? get center_id;
  @override
  String? get created_date;
  @override
  @JsonKey(ignore: true)
  _$$SingleCenterGalleryImplCopyWith<_$SingleCenterGalleryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
