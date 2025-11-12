// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model_and_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarModelAndColorModel _$CarModelAndColorModelFromJson(
    Map<String, dynamic> json) {
  return _CarModelAndColorModel.fromJson(json);
}

/// @nodoc
mixin _$CarModelAndColorModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelAndColorModelCopyWith<CarModelAndColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelAndColorModelCopyWith<$Res> {
  factory $CarModelAndColorModelCopyWith(CarModelAndColorModel value,
          $Res Function(CarModelAndColorModel) then) =
      _$CarModelAndColorModelCopyWithImpl<$Res, CarModelAndColorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$CarModelAndColorModelCopyWithImpl<$Res,
        $Val extends CarModelAndColorModel>
    implements $CarModelAndColorModelCopyWith<$Res> {
  _$CarModelAndColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? payload = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarModelAndColorModelImplCopyWith<$Res>
    implements $CarModelAndColorModelCopyWith<$Res> {
  factory _$$CarModelAndColorModelImplCopyWith(
          _$CarModelAndColorModelImpl value,
          $Res Function(_$CarModelAndColorModelImpl) then) =
      __$$CarModelAndColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$CarModelAndColorModelImplCopyWithImpl<$Res>
    extends _$CarModelAndColorModelCopyWithImpl<$Res,
        _$CarModelAndColorModelImpl>
    implements _$$CarModelAndColorModelImplCopyWith<$Res> {
  __$$CarModelAndColorModelImplCopyWithImpl(_$CarModelAndColorModelImpl _value,
      $Res Function(_$CarModelAndColorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? payload = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$CarModelAndColorModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarModelAndColorModelImpl implements _CarModelAndColorModel {
  const _$CarModelAndColorModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'isSuccess') this.isSuccess});

  factory _$CarModelAndColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelAndColorModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'payload')
  final Payload? payload;
  @override
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;

  @override
  String toString() {
    return 'CarModelAndColorModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelAndColorModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, code, message, payload, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelAndColorModelImplCopyWith<_$CarModelAndColorModelImpl>
      get copyWith => __$$CarModelAndColorModelImplCopyWithImpl<
          _$CarModelAndColorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarModelAndColorModelImplToJson(
      this,
    );
  }
}

abstract class _CarModelAndColorModel implements CarModelAndColorModel {
  const factory _CarModelAndColorModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'payload') final Payload? payload,
          @JsonKey(name: 'isSuccess') final bool? isSuccess}) =
      _$CarModelAndColorModelImpl;

  factory _CarModelAndColorModel.fromJson(Map<String, dynamic> json) =
      _$CarModelAndColorModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'payload')
  Payload? get payload;
  @override
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$CarModelAndColorModelImplCopyWith<_$CarModelAndColorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: 'types')
  List<ColorModel>? get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'colors')
  List<ColorModel>? get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
  @useResult
  $Res call(
      {@JsonKey(name: 'types') List<ColorModel>? types,
      @JsonKey(name: 'colors') List<ColorModel>? colors});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = freezed,
    Object? colors = freezed,
  }) {
    return _then(_value.copyWith(
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayloadImplCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$$PayloadImplCopyWith(
          _$PayloadImpl value, $Res Function(_$PayloadImpl) then) =
      __$$PayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'types') List<ColorModel>? types,
      @JsonKey(name: 'colors') List<ColorModel>? colors});
}

/// @nodoc
class __$$PayloadImplCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$PayloadImpl>
    implements _$$PayloadImplCopyWith<$Res> {
  __$$PayloadImplCopyWithImpl(
      _$PayloadImpl _value, $Res Function(_$PayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = freezed,
    Object? colors = freezed,
  }) {
    return _then(_$PayloadImpl(
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl(
      {@JsonKey(name: 'types') final List<ColorModel>? types,
      @JsonKey(name: 'colors') final List<ColorModel>? colors})
      : _types = types,
        _colors = colors;

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  final List<ColorModel>? _types;
  @override
  @JsonKey(name: 'types')
  List<ColorModel>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ColorModel>? _colors;
  @override
  @JsonKey(name: 'colors')
  List<ColorModel>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Payload(types: $types, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      __$$PayloadImplCopyWithImpl<_$PayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayloadImplToJson(
      this,
    );
  }
}

abstract class _Payload implements Payload {
  const factory _Payload(
      {@JsonKey(name: 'types') final List<ColorModel>? types,
      @JsonKey(name: 'colors') final List<ColorModel>? colors}) = _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: 'types')
  List<ColorModel>? get types;
  @override
  @JsonKey(name: 'colors')
  List<ColorModel>? get colors;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) {
  return _ColorModel.fromJson(json);
}

/// @nodoc
mixin _$ColorModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'models')
  List<ColorModel>? get models => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorModelCopyWith<ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorModelCopyWith<$Res> {
  factory $ColorModelCopyWith(
          ColorModel value, $Res Function(ColorModel) then) =
      _$ColorModelCopyWithImpl<$Res, ColorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'models') List<ColorModel>? models});
}

/// @nodoc
class _$ColorModelCopyWithImpl<$Res, $Val extends ColorModel>
    implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? models = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      models: freezed == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorModelImplCopyWith<$Res>
    implements $ColorModelCopyWith<$Res> {
  factory _$$ColorModelImplCopyWith(
          _$ColorModelImpl value, $Res Function(_$ColorModelImpl) then) =
      __$$ColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'models') List<ColorModel>? models});
}

/// @nodoc
class __$$ColorModelImplCopyWithImpl<$Res>
    extends _$ColorModelCopyWithImpl<$Res, _$ColorModelImpl>
    implements _$$ColorModelImplCopyWith<$Res> {
  __$$ColorModelImplCopyWithImpl(
      _$ColorModelImpl _value, $Res Function(_$ColorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? models = freezed,
  }) {
    return _then(_$ColorModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      models: freezed == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorModelImpl implements _ColorModel {
  const _$ColorModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'value') this.value,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'models') final List<ColorModel>? models})
      : _models = models;

  factory _$ColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<ColorModel>? _models;
  @override
  @JsonKey(name: 'models')
  List<ColorModel>? get models {
    final value = _models;
    if (value == null) return null;
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ColorModel(id: $id, name: $name, value: $value, createdAt: $createdAt, updatedAt: $updatedAt, models: $models)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, createdAt,
      updatedAt, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorModelImplCopyWith<_$ColorModelImpl> get copyWith =>
      __$$ColorModelImplCopyWithImpl<_$ColorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorModelImplToJson(
      this,
    );
  }
}

abstract class _ColorModel implements ColorModel {
  const factory _ColorModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'value') final String? value,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'models') final List<ColorModel>? models}) =
      _$ColorModelImpl;

  factory _ColorModel.fromJson(Map<String, dynamic> json) =
      _$ColorModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'models')
  List<ColorModel>? get models;
  @override
  @JsonKey(ignore: true)
  _$$ColorModelImplCopyWith<_$ColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
