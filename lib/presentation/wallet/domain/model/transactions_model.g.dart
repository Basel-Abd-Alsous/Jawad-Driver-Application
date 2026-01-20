// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionsModel _$TransactionsModelFromJson(Map<String, dynamic> json) =>
    _TransactionsModel(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$TransactionsModelToJson(_TransactionsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_Payload _$PayloadFromJson(Map<String, dynamic> json) => _Payload(
  walletAmount: json['wallet_amount'] as String?,
  transactions: (json['transactions'] as List<dynamic>?)
      ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PayloadToJson(_Payload instance) => <String, dynamic>{
  'wallet_amount': instance.walletAmount,
  'transactions': instance.transactions,
  'pagination': instance.pagination,
};

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  perPage: (json['per_page'] as num?)?.toInt(),
  path: json['path'] as String?,
  total: (json['total'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  nextPageUrl: json['next_page_url'],
  prevPageUrl: json['prev_page_url'],
  lastPage: (json['last_page'] as num?)?.toInt(),
  hasMorePages: json['has_more_pages'] as bool?,
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'per_page': instance.perPage,
      'path': instance.path,
      'total': instance.total,
      'current_page': instance.currentPage,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
      'last_page': instance.lastPage,
      'has_more_pages': instance.hasMorePages,
      'from': instance.from,
      'to': instance.to,
    };

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  id: (json['id'] as num?)?.toInt(),
  balance: json['balance'] as String?,
  status: json['status'] == null
      ? null
      : StatusData.fromJson(json['status'] as Map<String, dynamic>),
  image: json['image'] as String?,
  notes: json['notes'] as String?,
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'status': instance.status,
      'image': instance.image,
      'notes': instance.notes,
      'date': instance.date?.toIso8601String(),
    };

_StatusData _$StatusDataFromJson(Map<String, dynamic> json) => _StatusData(
  status: json['status'] as String?,
  label: json['label'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$StatusDataToJson(_StatusData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'label': instance.label,
      'color': instance.color,
    };
