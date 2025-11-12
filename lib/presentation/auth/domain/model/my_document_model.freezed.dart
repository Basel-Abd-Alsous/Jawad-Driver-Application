// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyDocumentModel _$MyDocumentModelFromJson(Map<String, dynamic> json) {
  return _MyDocumentModel.fromJson(json);
}

/// @nodoc
mixin _$MyDocumentModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  List<MyDocument>? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyDocumentModelCopyWith<MyDocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDocumentModelCopyWith<$Res> {
  factory $MyDocumentModelCopyWith(
          MyDocumentModel value, $Res Function(MyDocumentModel) then) =
      _$MyDocumentModelCopyWithImpl<$Res, MyDocumentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') List<MyDocument>? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});
}

/// @nodoc
class _$MyDocumentModelCopyWithImpl<$Res, $Val extends MyDocumentModel>
    implements $MyDocumentModelCopyWith<$Res> {
  _$MyDocumentModelCopyWithImpl(this._value, this._then);

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
              as List<MyDocument>?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyDocumentModelImplCopyWith<$Res>
    implements $MyDocumentModelCopyWith<$Res> {
  factory _$$MyDocumentModelImplCopyWith(_$MyDocumentModelImpl value,
          $Res Function(_$MyDocumentModelImpl) then) =
      __$$MyDocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') List<MyDocument>? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});
}

/// @nodoc
class __$$MyDocumentModelImplCopyWithImpl<$Res>
    extends _$MyDocumentModelCopyWithImpl<$Res, _$MyDocumentModelImpl>
    implements _$$MyDocumentModelImplCopyWith<$Res> {
  __$$MyDocumentModelImplCopyWithImpl(
      _$MyDocumentModelImpl _value, $Res Function(_$MyDocumentModelImpl) _then)
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
    return _then(_$MyDocumentModelImpl(
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
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<MyDocument>?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyDocumentModelImpl implements _MyDocumentModel {
  const _$MyDocumentModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'payload') final List<MyDocument>? payload,
      @JsonKey(name: 'isSuccess') this.isSuccess})
      : _payload = payload;

  factory _$MyDocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyDocumentModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<MyDocument>? _payload;
  @override
  @JsonKey(name: 'payload')
  List<MyDocument>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;

  @override
  String toString() {
    return 'MyDocumentModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyDocumentModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_payload), isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyDocumentModelImplCopyWith<_$MyDocumentModelImpl> get copyWith =>
      __$$MyDocumentModelImplCopyWithImpl<_$MyDocumentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyDocumentModelImplToJson(
      this,
    );
  }
}

abstract class _MyDocumentModel implements MyDocumentModel {
  const factory _MyDocumentModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'payload') final List<MyDocument>? payload,
          @JsonKey(name: 'isSuccess') final bool? isSuccess}) =
      _$MyDocumentModelImpl;

  factory _MyDocumentModel.fromJson(Map<String, dynamic> json) =
      _$MyDocumentModelImpl.fromJson;

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
  List<MyDocument>? get payload;
  @override
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$MyDocumentModelImplCopyWith<_$MyDocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyDocument _$MyDocumentFromJson(Map<String, dynamic> json) {
  return _MyDocument.fromJson(json);
}

/// @nodoc
mixin _$MyDocument {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_type_id')
  int? get documentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_type')
  String? get documentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String? get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_edit')
  String? get statusEdit => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool? get isRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyDocumentCopyWith<MyDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDocumentCopyWith<$Res> {
  factory $MyDocumentCopyWith(
          MyDocument value, $Res Function(MyDocument) then) =
      _$MyDocumentCopyWithImpl<$Res, MyDocument>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'document_type_id') int? documentTypeId,
      @JsonKey(name: 'document_type') String? documentType,
      @JsonKey(name: 'file_path') String? filePath,
      @JsonKey(name: 'status_edit') String? statusEdit,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'is_required') bool? isRequired});
}

/// @nodoc
class _$MyDocumentCopyWithImpl<$Res, $Val extends MyDocument>
    implements $MyDocumentCopyWith<$Res> {
  _$MyDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? documentTypeId = freezed,
    Object? documentType = freezed,
    Object? filePath = freezed,
    Object? statusEdit = freezed,
    Object? status = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      documentTypeId: freezed == documentTypeId
          ? _value.documentTypeId
          : documentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      statusEdit: freezed == statusEdit
          ? _value.statusEdit
          : statusEdit // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyDocumentImplCopyWith<$Res>
    implements $MyDocumentCopyWith<$Res> {
  factory _$$MyDocumentImplCopyWith(
          _$MyDocumentImpl value, $Res Function(_$MyDocumentImpl) then) =
      __$$MyDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'document_type_id') int? documentTypeId,
      @JsonKey(name: 'document_type') String? documentType,
      @JsonKey(name: 'file_path') String? filePath,
      @JsonKey(name: 'status_edit') String? statusEdit,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'is_required') bool? isRequired});
}

/// @nodoc
class __$$MyDocumentImplCopyWithImpl<$Res>
    extends _$MyDocumentCopyWithImpl<$Res, _$MyDocumentImpl>
    implements _$$MyDocumentImplCopyWith<$Res> {
  __$$MyDocumentImplCopyWithImpl(
      _$MyDocumentImpl _value, $Res Function(_$MyDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? documentTypeId = freezed,
    Object? documentType = freezed,
    Object? filePath = freezed,
    Object? statusEdit = freezed,
    Object? status = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(_$MyDocumentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      documentTypeId: freezed == documentTypeId
          ? _value.documentTypeId
          : documentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      statusEdit: freezed == statusEdit
          ? _value.statusEdit
          : statusEdit // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyDocumentImpl implements _MyDocument {
  const _$MyDocumentImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'document_type_id') this.documentTypeId,
      @JsonKey(name: 'document_type') this.documentType,
      @JsonKey(name: 'file_path') this.filePath,
      @JsonKey(name: 'status_edit') this.statusEdit,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'is_required') this.isRequired});

  factory _$MyDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyDocumentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'document_type_id')
  final int? documentTypeId;
  @override
  @JsonKey(name: 'document_type')
  final String? documentType;
  @override
  @JsonKey(name: 'file_path')
  final String? filePath;
  @override
  @JsonKey(name: 'status_edit')
  final String? statusEdit;
  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'is_required')
  final bool? isRequired;

  @override
  String toString() {
    return 'MyDocument(id: $id, documentTypeId: $documentTypeId, documentType: $documentType, filePath: $filePath, statusEdit: $statusEdit, status: $status, isRequired: $isRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentTypeId, documentTypeId) ||
                other.documentTypeId == documentTypeId) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.statusEdit, statusEdit) ||
                other.statusEdit == statusEdit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentTypeId, documentType,
      filePath, statusEdit, status, isRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyDocumentImplCopyWith<_$MyDocumentImpl> get copyWith =>
      __$$MyDocumentImplCopyWithImpl<_$MyDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyDocumentImplToJson(
      this,
    );
  }
}

abstract class _MyDocument implements MyDocument {
  const factory _MyDocument(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'document_type_id') final int? documentTypeId,
      @JsonKey(name: 'document_type') final String? documentType,
      @JsonKey(name: 'file_path') final String? filePath,
      @JsonKey(name: 'status_edit') final String? statusEdit,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'is_required') final bool? isRequired}) = _$MyDocumentImpl;

  factory _MyDocument.fromJson(Map<String, dynamic> json) =
      _$MyDocumentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'document_type_id')
  int? get documentTypeId;
  @override
  @JsonKey(name: 'document_type')
  String? get documentType;
  @override
  @JsonKey(name: 'file_path')
  String? get filePath;
  @override
  @JsonKey(name: 'status_edit')
  String? get statusEdit;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'is_required')
  bool? get isRequired;
  @override
  @JsonKey(ignore: true)
  _$$MyDocumentImplCopyWith<_$MyDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
