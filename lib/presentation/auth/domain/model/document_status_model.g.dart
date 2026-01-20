// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentStatusModel _$DocumentStatusModelFromJson(Map<String, dynamic> json) =>
    _DocumentStatusModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocumentStatusModelToJson(
  _DocumentStatusModel instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  totalRequired: (json['total_required'] as num?)?.toInt(),
  uploaded: (json['uploaded'] as num?)?.toInt(),
  approved: (json['approved'] as num?)?.toInt(),
  pending: (json['pending'] as num?)?.toInt(),
  rejected: (json['rejected'] as num?)?.toInt(),
  missing: json['missing'] as List<dynamic>?,
  completionPercentage: (json['completion_percentage'] as num?)?.toInt(),
  allApproved: json['all_approved'] as bool?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'total_required': instance.totalRequired,
  'uploaded': instance.uploaded,
  'approved': instance.approved,
  'pending': instance.pending,
  'rejected': instance.rejected,
  'missing': instance.missing,
  'completion_percentage': instance.completionPercentage,
  'all_approved': instance.allApproved,
};
