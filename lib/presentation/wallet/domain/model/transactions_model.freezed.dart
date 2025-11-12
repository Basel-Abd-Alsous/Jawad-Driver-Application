// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionsModel _$TransactionsModelFromJson(Map<String, dynamic> json) {
  return _TransactionsModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionsModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "payload")
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsModelCopyWith<TransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsModelCopyWith<$Res> {
  factory $TransactionsModelCopyWith(
          TransactionsModel value, $Res Function(TransactionsModel) then) =
      _$TransactionsModelCopyWithImpl<$Res, TransactionsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") Payload? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$TransactionsModelCopyWithImpl<$Res, $Val extends TransactionsModel>
    implements $TransactionsModelCopyWith<$Res> {
  _$TransactionsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TransactionsModelImplCopyWith<$Res>
    implements $TransactionsModelCopyWith<$Res> {
  factory _$$TransactionsModelImplCopyWith(_$TransactionsModelImpl value,
          $Res Function(_$TransactionsModelImpl) then) =
      __$$TransactionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payload") Payload? payload,
      @JsonKey(name: "isSuccess") bool? isSuccess});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$TransactionsModelImplCopyWithImpl<$Res>
    extends _$TransactionsModelCopyWithImpl<$Res, _$TransactionsModelImpl>
    implements _$$TransactionsModelImplCopyWith<$Res> {
  __$$TransactionsModelImplCopyWithImpl(_$TransactionsModelImpl _value,
      $Res Function(_$TransactionsModelImpl) _then)
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
    return _then(_$TransactionsModelImpl(
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
class _$TransactionsModelImpl implements _TransactionsModel {
  const _$TransactionsModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "payload") this.payload,
      @JsonKey(name: "isSuccess") this.isSuccess});

  factory _$TransactionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "payload")
  final Payload? payload;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;

  @override
  String toString() {
    return 'TransactionsModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsModelImpl &&
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
  _$$TransactionsModelImplCopyWith<_$TransactionsModelImpl> get copyWith =>
      __$$TransactionsModelImplCopyWithImpl<_$TransactionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionsModel implements TransactionsModel {
  const factory _TransactionsModel(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "payload") final Payload? payload,
          @JsonKey(name: "isSuccess") final bool? isSuccess}) =
      _$TransactionsModelImpl;

  factory _TransactionsModel.fromJson(Map<String, dynamic> json) =
      _$TransactionsModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "payload")
  Payload? get payload;
  @override
  @JsonKey(name: "isSuccess")
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsModelImplCopyWith<_$TransactionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: "wallet_amount")
  String? get walletAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "transactions")
  List<Transaction>? get transactions => throw _privateConstructorUsedError;
  @JsonKey(name: "pagination")
  Pagination? get pagination => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "wallet_amount") String? walletAmount,
      @JsonKey(name: "transactions") List<Transaction>? transactions,
      @JsonKey(name: "pagination") Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
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
    Object? walletAmount = freezed,
    Object? transactions = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      walletAmount: freezed == walletAmount
          ? _value.walletAmount
          : walletAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
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
      {@JsonKey(name: "wallet_amount") String? walletAmount,
      @JsonKey(name: "transactions") List<Transaction>? transactions,
      @JsonKey(name: "pagination") Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
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
    Object? walletAmount = freezed,
    Object? transactions = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$PayloadImpl(
      walletAmount: freezed == walletAmount
          ? _value.walletAmount
          : walletAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadImpl implements _Payload {
  const _$PayloadImpl(
      {@JsonKey(name: "wallet_amount") this.walletAmount,
      @JsonKey(name: "transactions") final List<Transaction>? transactions,
      @JsonKey(name: "pagination") this.pagination})
      : _transactions = transactions;

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  @override
  @JsonKey(name: "wallet_amount")
  final String? walletAmount;
  final List<Transaction>? _transactions;
  @override
  @JsonKey(name: "transactions")
  List<Transaction>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;

  @override
  String toString() {
    return 'Payload(walletAmount: $walletAmount, transactions: $transactions, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            (identical(other.walletAmount, walletAmount) ||
                other.walletAmount == walletAmount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletAmount,
      const DeepCollectionEquality().hash(_transactions), pagination);

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
          {@JsonKey(name: "wallet_amount") final String? walletAmount,
          @JsonKey(name: "transactions") final List<Transaction>? transactions,
          @JsonKey(name: "pagination") final Pagination? pagination}) =
      _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: "wallet_amount")
  String? get walletAmount;
  @override
  @JsonKey(name: "transactions")
  List<Transaction>? get transactions;
  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_more_pages")
  bool? get hasMorePages => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_more_pages") bool? hasMorePages,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? path = freezed,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? nextPageUrl = freezed,
    Object? prevPageUrl = freezed,
    Object? lastPage = freezed,
    Object? hasMorePages = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMorePages: freezed == hasMorePages
          ? _value.hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as bool?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_more_pages") bool? hasMorePages,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? path = freezed,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? nextPageUrl = freezed,
    Object? prevPageUrl = freezed,
    Object? lastPage = freezed,
    Object? hasMorePages = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$PaginationImpl(
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMorePages: freezed == hasMorePages
          ? _value.hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as bool?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "has_more_pages") this.hasMorePages,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "to") this.to});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "next_page_url")
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "has_more_pages")
  final bool? hasMorePages;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "to")
  final int? to;

  @override
  String toString() {
    return 'Pagination(perPage: $perPage, path: $path, total: $total, currentPage: $currentPage, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl, lastPage: $lastPage, hasMorePages: $hasMorePages, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.hasMorePages, hasMorePages) ||
                other.hasMorePages == hasMorePages) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      perPage,
      path,
      total,
      currentPage,
      const DeepCollectionEquality().hash(nextPageUrl),
      const DeepCollectionEquality().hash(prevPageUrl),
      lastPage,
      hasMorePages,
      from,
      to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {@JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "total") final int? total,
      @JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "next_page_url") final dynamic nextPageUrl,
      @JsonKey(name: "prev_page_url") final dynamic prevPageUrl,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "has_more_pages") final bool? hasMorePages,
      @JsonKey(name: "from") final int? from,
      @JsonKey(name: "to") final int? to}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "has_more_pages")
  bool? get hasMorePages;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  StatusData? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "balance") String? balance,
      @JsonKey(name: "status") StatusData? status,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "date") DateTime? date});

  $StatusDataCopyWith<$Res>? get status;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? notes = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusData?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusDataCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusDataCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "balance") String? balance,
      @JsonKey(name: "status") StatusData? status,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "date") DateTime? date});

  @override
  $StatusDataCopyWith<$Res>? get status;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? notes = freezed,
    Object? date = freezed,
  }) {
    return _then(_$TransactionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusData?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "balance") this.balance,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "date") this.date});

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "balance")
  final String? balance;
  @override
  @JsonKey(name: "status")
  final StatusData? status;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "date")
  final DateTime? date;

  @override
  String toString() {
    return 'Transaction(id: $id, balance: $balance, status: $status, image: $image, notes: $notes, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, balance, status, image, notes, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "balance") final String? balance,
      @JsonKey(name: "status") final StatusData? status,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "notes") final String? notes,
      @JsonKey(name: "date") final DateTime? date}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "balance")
  String? get balance;
  @override
  @JsonKey(name: "status")
  StatusData? get status;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusData _$StatusDataFromJson(Map<String, dynamic> json) {
  return _StatusData.fromJson(json);
}

/// @nodoc
mixin _$StatusData {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusDataCopyWith<StatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusDataCopyWith<$Res> {
  factory $StatusDataCopyWith(
          StatusData value, $Res Function(StatusData) then) =
      _$StatusDataCopyWithImpl<$Res, StatusData>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "color") String? color});
}

/// @nodoc
class _$StatusDataCopyWithImpl<$Res, $Val extends StatusData>
    implements $StatusDataCopyWith<$Res> {
  _$StatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? label = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusDataImplCopyWith<$Res>
    implements $StatusDataCopyWith<$Res> {
  factory _$$StatusDataImplCopyWith(
          _$StatusDataImpl value, $Res Function(_$StatusDataImpl) then) =
      __$$StatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "color") String? color});
}

/// @nodoc
class __$$StatusDataImplCopyWithImpl<$Res>
    extends _$StatusDataCopyWithImpl<$Res, _$StatusDataImpl>
    implements _$$StatusDataImplCopyWith<$Res> {
  __$$StatusDataImplCopyWithImpl(
      _$StatusDataImpl _value, $Res Function(_$StatusDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? label = freezed,
    Object? color = freezed,
  }) {
    return _then(_$StatusDataImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusDataImpl implements _StatusData {
  const _$StatusDataImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "color") this.color});

  factory _$StatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusDataImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "color")
  final String? color;

  @override
  String toString() {
    return 'StatusData(status: $status, label: $label, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, label, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusDataImplCopyWith<_$StatusDataImpl> get copyWith =>
      __$$StatusDataImplCopyWithImpl<_$StatusDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusDataImplToJson(
      this,
    );
  }
}

abstract class _StatusData implements StatusData {
  const factory _StatusData(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "color") final String? color}) = _$StatusDataImpl;

  factory _StatusData.fromJson(Map<String, dynamic> json) =
      _$StatusDataImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$StatusDataImplCopyWith<_$StatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
