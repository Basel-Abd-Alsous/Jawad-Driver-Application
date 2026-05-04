// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DrawalModel _$DrawalModelFromJson(Map<String, dynamic> json) => _DrawalModel(
  status: json['status'] as String?,
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  payload: (json['payload'] as List<dynamic>?)
      ?.map((e) => DrawalItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  isSuccess: json['isSuccess'] as bool?,
);

Map<String, dynamic> _$DrawalModelToJson(_DrawalModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_DrawalItem _$DrawalItemFromJson(Map<String, dynamic> json) => _DrawalItem(
  id: (json['id'] as num?)?.toInt(),
  method: json['method'] as String?,
  bankDetails: json['bank_details'] == null
      ? null
      : BankDetails.fromJson(json['bank_details'] as Map<String, dynamic>),
  phone: json['phone'],
  status: json['status'] == null
      ? null
      : Status.fromJson(json['status'] as Map<String, dynamic>),
  amount: (json['amount'] as num?)?.toInt(),
  note: json['note'],
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$DrawalItemToJson(_DrawalItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method': instance.method,
      'bank_details': instance.bankDetails,
      'phone': instance.phone,
      'status': instance.status,
      'amount': instance.amount,
      'note': instance.note,
      'created_at': instance.createdAt,
    };

_BankDetails _$BankDetailsFromJson(Map<String, dynamic> json) => _BankDetails(
  the494: json['494'] as String?,
  the4546: json['4546'] as String?,
  empty: json[''] as String?,
  nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv:
      json['N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV'] as String?,
  the55555555555: json['55555555555'] as String?,
  the34481919181181919: json['34481919181181919'] as String?,
  the000000: json['000000'] as String?,
  the000000000000000: json['000000000000000'] as String?,
);

Map<String, dynamic> _$BankDetailsToJson(
  _BankDetails instance,
) => <String, dynamic>{
  '494': instance.the494,
  '4546': instance.the4546,
  '': instance.empty,
  'N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV': instance.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,
  '55555555555': instance.the55555555555,
  '34481919181181919': instance.the34481919181181919,
  '000000': instance.the000000,
  '000000000000000': instance.the000000000000000,
};

_Status _$StatusFromJson(Map<String, dynamic> json) => _Status(
  status: json['status'] as String?,
  label: json['label'] as String?,
  mobileColor: json['mobile_color'] as String?,
);

Map<String, dynamic> _$StatusToJson(_Status instance) => <String, dynamic>{
  'status': instance.status,
  'label': instance.label,
  'mobile_color': instance.mobileColor,
};
