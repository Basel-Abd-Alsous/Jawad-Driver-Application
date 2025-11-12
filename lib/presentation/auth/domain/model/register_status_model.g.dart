// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterStatusModelImpl _$$RegisterStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterStatusModelImpl(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$RegisterStatusModelImplToJson(
        _$RegisterStatusModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_$PayloadImpl _$$PayloadImplFromJson(Map<String, dynamic> json) =>
    _$PayloadImpl(
      currentStep: json['current_step'] as String?,
      documentsStatus: json['documents_status'] == null
          ? null
          : DocumentsStatus.fromJson(
              json['documents_status'] as Map<String, dynamic>),
      carInfoCompleted: json['car_info_completed'] as bool?,
      bankInfoCompleted: json['bank_info_completed'] as bool?,
      missingDocuments: (json['missing_documents'] as List<dynamic>?)
          ?.map((e) => MissingDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextRequiredAction: json['next_required_action'] as String?,
    );

Map<String, dynamic> _$$PayloadImplToJson(_$PayloadImpl instance) =>
    <String, dynamic>{
      'current_step': instance.currentStep,
      'documents_status': instance.documentsStatus,
      'car_info_completed': instance.carInfoCompleted,
      'bank_info_completed': instance.bankInfoCompleted,
      'missing_documents': instance.missingDocuments,
      'next_required_action': instance.nextRequiredAction,
    };

_$DocumentsStatusImpl _$$DocumentsStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentsStatusImpl(
      totalRequired: (json['total_required'] as num?)?.toInt(),
      uploaded: (json['uploaded'] as num?)?.toInt(),
      approved: (json['approved'] as num?)?.toInt(),
      pending: (json['pending'] as num?)?.toInt(),
      rejected: (json['rejected'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DocumentsStatusImplToJson(
        _$DocumentsStatusImpl instance) =>
    <String, dynamic>{
      'total_required': instance.totalRequired,
      'uploaded': instance.uploaded,
      'approved': instance.approved,
      'pending': instance.pending,
      'rejected': instance.rejected,
    };

_$MissingDocumentImpl _$$MissingDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$MissingDocumentImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MissingDocumentImplToJson(
        _$MissingDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
