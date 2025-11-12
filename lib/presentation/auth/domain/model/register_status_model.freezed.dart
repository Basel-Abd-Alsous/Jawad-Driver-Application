// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterStatusModel _$RegisterStatusModelFromJson(Map<String, dynamic> json) {
  return _RegisterStatusModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterStatusModel {
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
  $RegisterStatusModelCopyWith<RegisterStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStatusModelCopyWith<$Res> {
  factory $RegisterStatusModelCopyWith(
          RegisterStatusModel value, $Res Function(RegisterStatusModel) then) =
      _$RegisterStatusModelCopyWithImpl<$Res, RegisterStatusModel>;
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
class _$RegisterStatusModelCopyWithImpl<$Res, $Val extends RegisterStatusModel>
    implements $RegisterStatusModelCopyWith<$Res> {
  _$RegisterStatusModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterStatusModelImplCopyWith<$Res>
    implements $RegisterStatusModelCopyWith<$Res> {
  factory _$$RegisterStatusModelImplCopyWith(_$RegisterStatusModelImpl value,
          $Res Function(_$RegisterStatusModelImpl) then) =
      __$$RegisterStatusModelImplCopyWithImpl<$Res>;
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
class __$$RegisterStatusModelImplCopyWithImpl<$Res>
    extends _$RegisterStatusModelCopyWithImpl<$Res, _$RegisterStatusModelImpl>
    implements _$$RegisterStatusModelImplCopyWith<$Res> {
  __$$RegisterStatusModelImplCopyWithImpl(_$RegisterStatusModelImpl _value,
      $Res Function(_$RegisterStatusModelImpl) _then)
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
    return _then(_$RegisterStatusModelImpl(
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
class _$RegisterStatusModelImpl implements _RegisterStatusModel {
  const _$RegisterStatusModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'isSuccess') this.isSuccess});

  factory _$RegisterStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterStatusModelImplFromJson(json);

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
    return 'RegisterStatusModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStatusModelImpl &&
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
  _$$RegisterStatusModelImplCopyWith<_$RegisterStatusModelImpl> get copyWith =>
      __$$RegisterStatusModelImplCopyWithImpl<_$RegisterStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterStatusModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterStatusModel implements RegisterStatusModel {
  const factory _RegisterStatusModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'payload') final Payload? payload,
          @JsonKey(name: 'isSuccess') final bool? isSuccess}) =
      _$RegisterStatusModelImpl;

  factory _RegisterStatusModel.fromJson(Map<String, dynamic> json) =
      _$RegisterStatusModelImpl.fromJson;

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
  _$$RegisterStatusModelImplCopyWith<_$RegisterStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: 'current_step')
  String? get currentStep => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents_status')
  DocumentsStatus? get documentsStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_info_completed')
  bool? get carInfoCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_info_completed')
  bool? get bankInfoCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'missing_documents')
  List<MissingDocument>? get missingDocuments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_required_action')
  String? get nextRequiredAction => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'current_step') String? currentStep,
      @JsonKey(name: 'documents_status') DocumentsStatus? documentsStatus,
      @JsonKey(name: 'car_info_completed') bool? carInfoCompleted,
      @JsonKey(name: 'bank_info_completed') bool? bankInfoCompleted,
      @JsonKey(name: 'missing_documents')
      List<MissingDocument>? missingDocuments,
      @JsonKey(name: 'next_required_action') String? nextRequiredAction});

  $DocumentsStatusCopyWith<$Res>? get documentsStatus;
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
    Object? currentStep = freezed,
    Object? documentsStatus = freezed,
    Object? carInfoCompleted = freezed,
    Object? bankInfoCompleted = freezed,
    Object? missingDocuments = freezed,
    Object? nextRequiredAction = freezed,
  }) {
    return _then(_value.copyWith(
      currentStep: freezed == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as String?,
      documentsStatus: freezed == documentsStatus
          ? _value.documentsStatus
          : documentsStatus // ignore: cast_nullable_to_non_nullable
              as DocumentsStatus?,
      carInfoCompleted: freezed == carInfoCompleted
          ? _value.carInfoCompleted
          : carInfoCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankInfoCompleted: freezed == bankInfoCompleted
          ? _value.bankInfoCompleted
          : bankInfoCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      missingDocuments: freezed == missingDocuments
          ? _value.missingDocuments
          : missingDocuments // ignore: cast_nullable_to_non_nullable
              as List<MissingDocument>?,
      nextRequiredAction: freezed == nextRequiredAction
          ? _value.nextRequiredAction
          : nextRequiredAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentsStatusCopyWith<$Res>? get documentsStatus {
    if (_value.documentsStatus == null) {
      return null;
    }

    return $DocumentsStatusCopyWith<$Res>(_value.documentsStatus!, (value) {
      return _then(_value.copyWith(documentsStatus: value) as $Val);
    });
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
      {@JsonKey(name: 'current_step') String? currentStep,
      @JsonKey(name: 'documents_status') DocumentsStatus? documentsStatus,
      @JsonKey(name: 'car_info_completed') bool? carInfoCompleted,
      @JsonKey(name: 'bank_info_completed') bool? bankInfoCompleted,
      @JsonKey(name: 'missing_documents')
      List<MissingDocument>? missingDocuments,
      @JsonKey(name: 'next_required_action') String? nextRequiredAction});

  @override
  $DocumentsStatusCopyWith<$Res>? get documentsStatus;
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
    Object? currentStep = freezed,
    Object? documentsStatus = freezed,
    Object? carInfoCompleted = freezed,
    Object? bankInfoCompleted = freezed,
    Object? missingDocuments = freezed,
    Object? nextRequiredAction = freezed,
  }) {
    return _then(_$PayloadImpl(
      currentStep: freezed == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as String?,
      documentsStatus: freezed == documentsStatus
          ? _value.documentsStatus
          : documentsStatus // ignore: cast_nullable_to_non_nullable
              as DocumentsStatus?,
      carInfoCompleted: freezed == carInfoCompleted
          ? _value.carInfoCompleted
          : carInfoCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankInfoCompleted: freezed == bankInfoCompleted
          ? _value.bankInfoCompleted
          : bankInfoCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      missingDocuments: freezed == missingDocuments
          ? _value._missingDocuments
          : missingDocuments // ignore: cast_nullable_to_non_nullable
              as List<MissingDocument>?,
      nextRequiredAction: freezed == nextRequiredAction
          ? _value.nextRequiredAction
          : nextRequiredAction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl(
      {@JsonKey(name: 'current_step') this.currentStep,
      @JsonKey(name: 'documents_status') this.documentsStatus,
      @JsonKey(name: 'car_info_completed') this.carInfoCompleted,
      @JsonKey(name: 'bank_info_completed') this.bankInfoCompleted,
      @JsonKey(name: 'missing_documents')
      final List<MissingDocument>? missingDocuments,
      @JsonKey(name: 'next_required_action') this.nextRequiredAction})
      : _missingDocuments = missingDocuments;

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  @override
  @JsonKey(name: 'current_step')
  final String? currentStep;
  @override
  @JsonKey(name: 'documents_status')
  final DocumentsStatus? documentsStatus;
  @override
  @JsonKey(name: 'car_info_completed')
  final bool? carInfoCompleted;
  @override
  @JsonKey(name: 'bank_info_completed')
  final bool? bankInfoCompleted;
  final List<MissingDocument>? _missingDocuments;
  @override
  @JsonKey(name: 'missing_documents')
  List<MissingDocument>? get missingDocuments {
    final value = _missingDocuments;
    if (value == null) return null;
    if (_missingDocuments is EqualUnmodifiableListView)
      return _missingDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_required_action')
  final String? nextRequiredAction;

  @override
  String toString() {
    return 'Payload(currentStep: $currentStep, documentsStatus: $documentsStatus, carInfoCompleted: $carInfoCompleted, bankInfoCompleted: $bankInfoCompleted, missingDocuments: $missingDocuments, nextRequiredAction: $nextRequiredAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.documentsStatus, documentsStatus) ||
                other.documentsStatus == documentsStatus) &&
            (identical(other.carInfoCompleted, carInfoCompleted) ||
                other.carInfoCompleted == carInfoCompleted) &&
            (identical(other.bankInfoCompleted, bankInfoCompleted) ||
                other.bankInfoCompleted == bankInfoCompleted) &&
            const DeepCollectionEquality()
                .equals(other._missingDocuments, _missingDocuments) &&
            (identical(other.nextRequiredAction, nextRequiredAction) ||
                other.nextRequiredAction == nextRequiredAction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentStep,
      documentsStatus,
      carInfoCompleted,
      bankInfoCompleted,
      const DeepCollectionEquality().hash(_missingDocuments),
      nextRequiredAction);

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
      {@JsonKey(name: 'current_step') final String? currentStep,
      @JsonKey(name: 'documents_status') final DocumentsStatus? documentsStatus,
      @JsonKey(name: 'car_info_completed') final bool? carInfoCompleted,
      @JsonKey(name: 'bank_info_completed') final bool? bankInfoCompleted,
      @JsonKey(name: 'missing_documents')
      final List<MissingDocument>? missingDocuments,
      @JsonKey(name: 'next_required_action')
      final String? nextRequiredAction}) = _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: 'current_step')
  String? get currentStep;
  @override
  @JsonKey(name: 'documents_status')
  DocumentsStatus? get documentsStatus;
  @override
  @JsonKey(name: 'car_info_completed')
  bool? get carInfoCompleted;
  @override
  @JsonKey(name: 'bank_info_completed')
  bool? get bankInfoCompleted;
  @override
  @JsonKey(name: 'missing_documents')
  List<MissingDocument>? get missingDocuments;
  @override
  @JsonKey(name: 'next_required_action')
  String? get nextRequiredAction;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentsStatus _$DocumentsStatusFromJson(Map<String, dynamic> json) {
  return _DocumentsStatus.fromJson(json);
}

/// @nodoc
mixin _$DocumentsStatus {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsStatusCopyWith<DocumentsStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStatusCopyWith<$Res> {
  factory $DocumentsStatusCopyWith(
          DocumentsStatus value, $Res Function(DocumentsStatus) then) =
      _$DocumentsStatusCopyWithImpl<$Res, DocumentsStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_required') int? totalRequired,
      @JsonKey(name: 'uploaded') int? uploaded,
      @JsonKey(name: 'approved') int? approved,
      @JsonKey(name: 'pending') int? pending,
      @JsonKey(name: 'rejected') int? rejected});
}

/// @nodoc
class _$DocumentsStatusCopyWithImpl<$Res, $Val extends DocumentsStatus>
    implements $DocumentsStatusCopyWith<$Res> {
  _$DocumentsStatusCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentsStatusImplCopyWith<$Res>
    implements $DocumentsStatusCopyWith<$Res> {
  factory _$$DocumentsStatusImplCopyWith(_$DocumentsStatusImpl value,
          $Res Function(_$DocumentsStatusImpl) then) =
      __$$DocumentsStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_required') int? totalRequired,
      @JsonKey(name: 'uploaded') int? uploaded,
      @JsonKey(name: 'approved') int? approved,
      @JsonKey(name: 'pending') int? pending,
      @JsonKey(name: 'rejected') int? rejected});
}

/// @nodoc
class __$$DocumentsStatusImplCopyWithImpl<$Res>
    extends _$DocumentsStatusCopyWithImpl<$Res, _$DocumentsStatusImpl>
    implements _$$DocumentsStatusImplCopyWith<$Res> {
  __$$DocumentsStatusImplCopyWithImpl(
      _$DocumentsStatusImpl _value, $Res Function(_$DocumentsStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRequired = freezed,
    Object? uploaded = freezed,
    Object? approved = freezed,
    Object? pending = freezed,
    Object? rejected = freezed,
  }) {
    return _then(_$DocumentsStatusImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentsStatusImpl implements _DocumentsStatus {
  const _$DocumentsStatusImpl(
      {@JsonKey(name: 'total_required') this.totalRequired,
      @JsonKey(name: 'uploaded') this.uploaded,
      @JsonKey(name: 'approved') this.approved,
      @JsonKey(name: 'pending') this.pending,
      @JsonKey(name: 'rejected') this.rejected});

  factory _$DocumentsStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentsStatusImplFromJson(json);

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

  @override
  String toString() {
    return 'DocumentsStatus(totalRequired: $totalRequired, uploaded: $uploaded, approved: $approved, pending: $pending, rejected: $rejected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsStatusImpl &&
            (identical(other.totalRequired, totalRequired) ||
                other.totalRequired == totalRequired) &&
            (identical(other.uploaded, uploaded) ||
                other.uploaded == uploaded) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.rejected, rejected) ||
                other.rejected == rejected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalRequired, uploaded, approved, pending, rejected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsStatusImplCopyWith<_$DocumentsStatusImpl> get copyWith =>
      __$$DocumentsStatusImplCopyWithImpl<_$DocumentsStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentsStatusImplToJson(
      this,
    );
  }
}

abstract class _DocumentsStatus implements DocumentsStatus {
  const factory _DocumentsStatus(
      {@JsonKey(name: 'total_required') final int? totalRequired,
      @JsonKey(name: 'uploaded') final int? uploaded,
      @JsonKey(name: 'approved') final int? approved,
      @JsonKey(name: 'pending') final int? pending,
      @JsonKey(name: 'rejected') final int? rejected}) = _$DocumentsStatusImpl;

  factory _DocumentsStatus.fromJson(Map<String, dynamic> json) =
      _$DocumentsStatusImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$DocumentsStatusImplCopyWith<_$DocumentsStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissingDocument _$MissingDocumentFromJson(Map<String, dynamic> json) {
  return _MissingDocument.fromJson(json);
}

/// @nodoc
mixin _$MissingDocument {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissingDocumentCopyWith<MissingDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissingDocumentCopyWith<$Res> {
  factory $MissingDocumentCopyWith(
          MissingDocument value, $Res Function(MissingDocument) then) =
      _$MissingDocumentCopyWithImpl<$Res, MissingDocument>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$MissingDocumentCopyWithImpl<$Res, $Val extends MissingDocument>
    implements $MissingDocumentCopyWith<$Res> {
  _$MissingDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissingDocumentImplCopyWith<$Res>
    implements $MissingDocumentCopyWith<$Res> {
  factory _$$MissingDocumentImplCopyWith(_$MissingDocumentImpl value,
          $Res Function(_$MissingDocumentImpl) then) =
      __$$MissingDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$MissingDocumentImplCopyWithImpl<$Res>
    extends _$MissingDocumentCopyWithImpl<$Res, _$MissingDocumentImpl>
    implements _$$MissingDocumentImplCopyWith<$Res> {
  __$$MissingDocumentImplCopyWithImpl(
      _$MissingDocumentImpl _value, $Res Function(_$MissingDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MissingDocumentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissingDocumentImpl implements _MissingDocument {
  const _$MissingDocumentImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$MissingDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissingDocumentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'MissingDocument(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingDocumentImplCopyWith<_$MissingDocumentImpl> get copyWith =>
      __$$MissingDocumentImplCopyWithImpl<_$MissingDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissingDocumentImplToJson(
      this,
    );
  }
}

abstract class _MissingDocument implements MissingDocument {
  const factory _MissingDocument(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$MissingDocumentImpl;

  factory _MissingDocument.fromJson(Map<String, dynamic> json) =
      _$MissingDocumentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MissingDocumentImplCopyWith<_$MissingDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
