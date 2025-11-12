// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentStatusModel _$DocumentStatusModelFromJson(Map<String, dynamic> json) {
  return _DocumentStatusModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentStatusModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentStatusModelCopyWith<DocumentStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStatusModelCopyWith<$Res> {
  factory $DocumentStatusModelCopyWith(
          DocumentStatusModel value, $Res Function(DocumentStatusModel) then) =
      _$DocumentStatusModelCopyWithImpl<$Res, DocumentStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DocumentStatusModelCopyWithImpl<$Res, $Val extends DocumentStatusModel>
    implements $DocumentStatusModelCopyWith<$Res> {
  _$DocumentStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DocumentStatusModelImplCopyWith<$Res>
    implements $DocumentStatusModelCopyWith<$Res> {
  factory _$$DocumentStatusModelImplCopyWith(_$DocumentStatusModelImpl value,
          $Res Function(_$DocumentStatusModelImpl) then) =
      __$$DocumentStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DocumentStatusModelImplCopyWithImpl<$Res>
    extends _$DocumentStatusModelCopyWithImpl<$Res, _$DocumentStatusModelImpl>
    implements _$$DocumentStatusModelImplCopyWith<$Res> {
  __$$DocumentStatusModelImplCopyWithImpl(_$DocumentStatusModelImpl _value,
      $Res Function(_$DocumentStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DocumentStatusModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$DocumentStatusModelImpl implements _DocumentStatusModel {
  const _$DocumentStatusModelImpl(
      {@JsonKey(name: 'status') this.status, @JsonKey(name: 'data') this.data});

  factory _$DocumentStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentStatusModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  @override
  String toString() {
    return 'DocumentStatusModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentStatusModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentStatusModelImplCopyWith<_$DocumentStatusModelImpl> get copyWith =>
      __$$DocumentStatusModelImplCopyWithImpl<_$DocumentStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentStatusModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentStatusModel implements DocumentStatusModel {
  const factory _DocumentStatusModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'data') final Data? data}) = _$DocumentStatusModelImpl;

  factory _DocumentStatusModel.fromJson(Map<String, dynamic> json) =
      _$DocumentStatusModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$DocumentStatusModelImplCopyWith<_$DocumentStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'total_required')
  int? get totalRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded')
  int? get uploaded => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved')
  int? get approved => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending')
  int? get pending => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejected')
  int? get rejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'missing')
  List<dynamic>? get missing => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_percentage')
  int? get completionPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_approved')
  bool? get allApproved => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'total_required') int? totalRequired,
      @JsonKey(name: 'uploaded') int? uploaded,
      @JsonKey(name: 'approved') int? approved,
      @JsonKey(name: 'pending') int? pending,
      @JsonKey(name: 'rejected') int? rejected,
      @JsonKey(name: 'missing') List<dynamic>? missing,
      @JsonKey(name: 'completion_percentage') int? completionPercentage,
      @JsonKey(name: 'all_approved') bool? allApproved});
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
    Object? totalRequired = freezed,
    Object? uploaded = freezed,
    Object? approved = freezed,
    Object? pending = freezed,
    Object? rejected = freezed,
    Object? missing = freezed,
    Object? completionPercentage = freezed,
    Object? allApproved = freezed,
  }) {
    return _then(_value.copyWith(
      totalRequired: freezed == totalRequired
          ? _value.totalRequired
          : totalRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      uploaded: freezed == uploaded
          ? _value.uploaded
          : uploaded // ignore: cast_nullable_to_non_nullable
              as int?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as int?,
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int?,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as int?,
      missing: freezed == missing
          ? _value.missing
          : missing // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      completionPercentage: freezed == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      allApproved: freezed == allApproved
          ? _value.allApproved
          : allApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {@JsonKey(name: 'total_required') int? totalRequired,
      @JsonKey(name: 'uploaded') int? uploaded,
      @JsonKey(name: 'approved') int? approved,
      @JsonKey(name: 'pending') int? pending,
      @JsonKey(name: 'rejected') int? rejected,
      @JsonKey(name: 'missing') List<dynamic>? missing,
      @JsonKey(name: 'completion_percentage') int? completionPercentage,
      @JsonKey(name: 'all_approved') bool? allApproved});
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
    Object? totalRequired = freezed,
    Object? uploaded = freezed,
    Object? approved = freezed,
    Object? pending = freezed,
    Object? rejected = freezed,
    Object? missing = freezed,
    Object? completionPercentage = freezed,
    Object? allApproved = freezed,
  }) {
    return _then(_$DataImpl(
      totalRequired: freezed == totalRequired
          ? _value.totalRequired
          : totalRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      uploaded: freezed == uploaded
          ? _value.uploaded
          : uploaded // ignore: cast_nullable_to_non_nullable
              as int?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as int?,
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int?,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as int?,
      missing: freezed == missing
          ? _value._missing
          : missing // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      completionPercentage: freezed == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      allApproved: freezed == allApproved
          ? _value.allApproved
          : allApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'total_required') this.totalRequired,
      @JsonKey(name: 'uploaded') this.uploaded,
      @JsonKey(name: 'approved') this.approved,
      @JsonKey(name: 'pending') this.pending,
      @JsonKey(name: 'rejected') this.rejected,
      @JsonKey(name: 'missing') final List<dynamic>? missing,
      @JsonKey(name: 'completion_percentage') this.completionPercentage,
      @JsonKey(name: 'all_approved') this.allApproved})
      : _missing = missing;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'total_required')
  final int? totalRequired;
  @override
  @JsonKey(name: 'uploaded')
  final int? uploaded;
  @override
  @JsonKey(name: 'approved')
  final int? approved;
  @override
  @JsonKey(name: 'pending')
  final int? pending;
  @override
  @JsonKey(name: 'rejected')
  final int? rejected;
  final List<dynamic>? _missing;
  @override
  @JsonKey(name: 'missing')
  List<dynamic>? get missing {
    final value = _missing;
    if (value == null) return null;
    if (_missing is EqualUnmodifiableListView) return _missing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'completion_percentage')
  final int? completionPercentage;
  @override
  @JsonKey(name: 'all_approved')
  final bool? allApproved;

  @override
  String toString() {
    return 'Data(totalRequired: $totalRequired, uploaded: $uploaded, approved: $approved, pending: $pending, rejected: $rejected, missing: $missing, completionPercentage: $completionPercentage, allApproved: $allApproved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.totalRequired, totalRequired) ||
                other.totalRequired == totalRequired) &&
            (identical(other.uploaded, uploaded) ||
                other.uploaded == uploaded) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.rejected, rejected) ||
                other.rejected == rejected) &&
            const DeepCollectionEquality().equals(other._missing, _missing) &&
            (identical(other.completionPercentage, completionPercentage) ||
                other.completionPercentage == completionPercentage) &&
            (identical(other.allApproved, allApproved) ||
                other.allApproved == allApproved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalRequired,
      uploaded,
      approved,
      pending,
      rejected,
      const DeepCollectionEquality().hash(_missing),
      completionPercentage,
      allApproved);

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
      {@JsonKey(name: 'total_required') final int? totalRequired,
      @JsonKey(name: 'uploaded') final int? uploaded,
      @JsonKey(name: 'approved') final int? approved,
      @JsonKey(name: 'pending') final int? pending,
      @JsonKey(name: 'rejected') final int? rejected,
      @JsonKey(name: 'missing') final List<dynamic>? missing,
      @JsonKey(name: 'completion_percentage') final int? completionPercentage,
      @JsonKey(name: 'all_approved') final bool? allApproved}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'total_required')
  int? get totalRequired;
  @override
  @JsonKey(name: 'uploaded')
  int? get uploaded;
  @override
  @JsonKey(name: 'approved')
  int? get approved;
  @override
  @JsonKey(name: 'pending')
  int? get pending;
  @override
  @JsonKey(name: 'rejected')
  int? get rejected;
  @override
  @JsonKey(name: 'missing')
  List<dynamic>? get missing;
  @override
  @JsonKey(name: 'completion_percentage')
  int? get completionPercentage;
  @override
  @JsonKey(name: 'all_approved')
  bool? get allApproved;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
