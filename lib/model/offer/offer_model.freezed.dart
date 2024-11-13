// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call({int? status, bool? error, List<Datum>? data});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferModelImplCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$OfferModelImplCopyWith(
          _$OfferModelImpl value, $Res Function(_$OfferModelImpl) then) =
      __$$OfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, List<Datum>? data});
}

/// @nodoc
class __$$OfferModelImplCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$OfferModelImpl>
    implements _$$OfferModelImplCopyWith<$Res> {
  __$$OfferModelImplCopyWithImpl(
      _$OfferModelImpl _value, $Res Function(_$OfferModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$OfferModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferModelImpl implements _OfferModel {
  const _$OfferModelImpl({this.status, this.error, final List<Datum>? data})
      : _data = data;

  factory _$OfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OfferModel(status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      __$$OfferModelImplCopyWithImpl<_$OfferModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferModelImplToJson(
      this,
    );
  }
}

abstract class _OfferModel implements OfferModel {
  const factory _OfferModel(
      {final int? status,
      final bool? error,
      final List<Datum>? data}) = _$OfferModelImpl;

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$OfferModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get coupon_code_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get city_id => throw _privateConstructorUsedError;
  String? get discount_type => throw _privateConstructorUsedError;
  String? get discount_value => throw _privateConstructorUsedError;
  DateTime? get valid_uo_to => throw _privateConstructorUsedError;
  String? get used_up_to => throw _privateConstructorUsedError;
  String? get no_of_use_user => throw _privateConstructorUsedError;
  String? get price_cart => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get create_date => throw _privateConstructorUsedError;
  String? get update_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String? coupon_code_id,
      String? name,
      String? code,
      String? city_id,
      String? discount_type,
      String? discount_value,
      DateTime? valid_uo_to,
      String? used_up_to,
      String? no_of_use_user,
      String? price_cart,
      String? img,
      String? create_date,
      String? update_date});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupon_code_id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? city_id = freezed,
    Object? discount_type = freezed,
    Object? discount_value = freezed,
    Object? valid_uo_to = freezed,
    Object? used_up_to = freezed,
    Object? no_of_use_user = freezed,
    Object? price_cart = freezed,
    Object? img = freezed,
    Object? create_date = freezed,
    Object? update_date = freezed,
  }) {
    return _then(_value.copyWith(
      coupon_code_id: freezed == coupon_code_id
          ? _value.coupon_code_id
          : coupon_code_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_type: freezed == discount_type
          ? _value.discount_type
          : discount_type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_value: freezed == discount_value
          ? _value.discount_value
          : discount_value // ignore: cast_nullable_to_non_nullable
              as String?,
      valid_uo_to: freezed == valid_uo_to
          ? _value.valid_uo_to
          : valid_uo_to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      used_up_to: freezed == used_up_to
          ? _value.used_up_to
          : used_up_to // ignore: cast_nullable_to_non_nullable
              as String?,
      no_of_use_user: freezed == no_of_use_user
          ? _value.no_of_use_user
          : no_of_use_user // ignore: cast_nullable_to_non_nullable
              as String?,
      price_cart: freezed == price_cart
          ? _value.price_cart
          : price_cart // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      create_date: freezed == create_date
          ? _value.create_date
          : create_date // ignore: cast_nullable_to_non_nullable
              as String?,
      update_date: freezed == update_date
          ? _value.update_date
          : update_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? coupon_code_id,
      String? name,
      String? code,
      String? city_id,
      String? discount_type,
      String? discount_value,
      DateTime? valid_uo_to,
      String? used_up_to,
      String? no_of_use_user,
      String? price_cart,
      String? img,
      String? create_date,
      String? update_date});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupon_code_id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? city_id = freezed,
    Object? discount_type = freezed,
    Object? discount_value = freezed,
    Object? valid_uo_to = freezed,
    Object? used_up_to = freezed,
    Object? no_of_use_user = freezed,
    Object? price_cart = freezed,
    Object? img = freezed,
    Object? create_date = freezed,
    Object? update_date = freezed,
  }) {
    return _then(_$DatumImpl(
      coupon_code_id: freezed == coupon_code_id
          ? _value.coupon_code_id
          : coupon_code_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_type: freezed == discount_type
          ? _value.discount_type
          : discount_type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_value: freezed == discount_value
          ? _value.discount_value
          : discount_value // ignore: cast_nullable_to_non_nullable
              as String?,
      valid_uo_to: freezed == valid_uo_to
          ? _value.valid_uo_to
          : valid_uo_to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      used_up_to: freezed == used_up_to
          ? _value.used_up_to
          : used_up_to // ignore: cast_nullable_to_non_nullable
              as String?,
      no_of_use_user: freezed == no_of_use_user
          ? _value.no_of_use_user
          : no_of_use_user // ignore: cast_nullable_to_non_nullable
              as String?,
      price_cart: freezed == price_cart
          ? _value.price_cart
          : price_cart // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      create_date: freezed == create_date
          ? _value.create_date
          : create_date // ignore: cast_nullable_to_non_nullable
              as String?,
      update_date: freezed == update_date
          ? _value.update_date
          : update_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.coupon_code_id,
      this.name,
      this.code,
      this.city_id,
      this.discount_type,
      this.discount_value,
      this.valid_uo_to,
      this.used_up_to,
      this.no_of_use_user,
      this.price_cart,
      this.img,
      this.create_date,
      this.update_date});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? coupon_code_id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? city_id;
  @override
  final String? discount_type;
  @override
  final String? discount_value;
  @override
  final DateTime? valid_uo_to;
  @override
  final String? used_up_to;
  @override
  final String? no_of_use_user;
  @override
  final String? price_cart;
  @override
  final String? img;
  @override
  final String? create_date;
  @override
  final String? update_date;

  @override
  String toString() {
    return 'Datum(coupon_code_id: $coupon_code_id, name: $name, code: $code, city_id: $city_id, discount_type: $discount_type, discount_value: $discount_value, valid_uo_to: $valid_uo_to, used_up_to: $used_up_to, no_of_use_user: $no_of_use_user, price_cart: $price_cart, img: $img, create_date: $create_date, update_date: $update_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.coupon_code_id, coupon_code_id) ||
                other.coupon_code_id == coupon_code_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.discount_type, discount_type) ||
                other.discount_type == discount_type) &&
            (identical(other.discount_value, discount_value) ||
                other.discount_value == discount_value) &&
            (identical(other.valid_uo_to, valid_uo_to) ||
                other.valid_uo_to == valid_uo_to) &&
            (identical(other.used_up_to, used_up_to) ||
                other.used_up_to == used_up_to) &&
            (identical(other.no_of_use_user, no_of_use_user) ||
                other.no_of_use_user == no_of_use_user) &&
            (identical(other.price_cart, price_cart) ||
                other.price_cart == price_cart) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.create_date, create_date) ||
                other.create_date == create_date) &&
            (identical(other.update_date, update_date) ||
                other.update_date == update_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coupon_code_id,
      name,
      code,
      city_id,
      discount_type,
      discount_value,
      valid_uo_to,
      used_up_to,
      no_of_use_user,
      price_cart,
      img,
      create_date,
      update_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? coupon_code_id,
      final String? name,
      final String? code,
      final String? city_id,
      final String? discount_type,
      final String? discount_value,
      final DateTime? valid_uo_to,
      final String? used_up_to,
      final String? no_of_use_user,
      final String? price_cart,
      final String? img,
      final String? create_date,
      final String? update_date}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get coupon_code_id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get city_id;
  @override
  String? get discount_type;
  @override
  String? get discount_value;
  @override
  DateTime? get valid_uo_to;
  @override
  String? get used_up_to;
  @override
  String? get no_of_use_user;
  @override
  String? get price_cart;
  @override
  String? get img;
  @override
  String? get create_date;
  @override
  String? get update_date;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
