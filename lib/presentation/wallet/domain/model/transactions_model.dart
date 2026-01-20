import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_model.freezed.dart';
part 'transactions_model.g.dart';

@freezed
abstract class TransactionsModel with _$TransactionsModel {
  const factory TransactionsModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") Payload? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _TransactionsModel;

  factory TransactionsModel.fromJson(Map<String, dynamic> json) => _$TransactionsModelFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({@JsonKey(name: "wallet_amount") String? walletAmount, @JsonKey(name: "transactions") List<Transaction>? transactions, @JsonKey(name: "pagination") Pagination? pagination}) =
      _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "next_page_url") dynamic nextPageUrl,
    @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "has_more_pages") bool? hasMorePages,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "to") int? to,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "balance") String? balance,
    @JsonKey(name: "status") StatusData? status,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "notes") String? notes,
    @JsonKey(name: "date") DateTime? date,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}

@freezed
abstract class StatusData with _$StatusData {
  const factory StatusData({@JsonKey(name: "status") String? status, @JsonKey(name: "label") String? label, @JsonKey(name: "color") String? color}) = _StatusData;

  factory StatusData.fromJson(Map<String, dynamic> json) => _$StatusDataFromJson(json);
}
