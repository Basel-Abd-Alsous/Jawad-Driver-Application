// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionsModel {

@JsonKey(name: "status") String? get status;@JsonKey(name: "code") int? get code;@JsonKey(name: "message") String? get message;@JsonKey(name: "payload") Payload? get payload;@JsonKey(name: "isSuccess") bool? get isSuccess;
/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionsModelCopyWith<TransactionsModel> get copyWith => _$TransactionsModelCopyWithImpl<TransactionsModel>(this as TransactionsModel, _$identity);

  /// Serializes this TransactionsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'TransactionsModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $TransactionsModelCopyWith<$Res>  {
  factory $TransactionsModelCopyWith(TransactionsModel value, $Res Function(TransactionsModel) _then) = _$TransactionsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") Payload? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});


$PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$TransactionsModelCopyWithImpl<$Res>
    implements $TransactionsModelCopyWith<$Res> {
  _$TransactionsModelCopyWithImpl(this._self, this._then);

  final TransactionsModel _self;
  final $Res Function(TransactionsModel) _then;

/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $PayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionsModel].
extension TransactionsModelPatterns on TransactionsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionsModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  Payload? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  Payload? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _TransactionsModel():
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  Payload? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionsModel implements TransactionsModel {
  const _TransactionsModel({@JsonKey(name: "status") this.status, @JsonKey(name: "code") this.code, @JsonKey(name: "message") this.message, @JsonKey(name: "payload") this.payload, @JsonKey(name: "isSuccess") this.isSuccess});
  factory _TransactionsModel.fromJson(Map<String, dynamic> json) => _$TransactionsModelFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "code") final  int? code;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "payload") final  Payload? payload;
@override@JsonKey(name: "isSuccess") final  bool? isSuccess;

/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsModelCopyWith<_TransactionsModel> get copyWith => __$TransactionsModelCopyWithImpl<_TransactionsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'TransactionsModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$TransactionsModelCopyWith<$Res> implements $TransactionsModelCopyWith<$Res> {
  factory _$TransactionsModelCopyWith(_TransactionsModel value, $Res Function(_TransactionsModel) _then) = __$TransactionsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") Payload? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});


@override $PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$TransactionsModelCopyWithImpl<$Res>
    implements _$TransactionsModelCopyWith<$Res> {
  __$TransactionsModelCopyWithImpl(this._self, this._then);

  final _TransactionsModel _self;
  final $Res Function(_TransactionsModel) _then;

/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_TransactionsModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayloadCopyWith<$Res>? get payload {
    if (_self.payload == null) {
    return null;
  }

  return $PayloadCopyWith<$Res>(_self.payload!, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}


/// @nodoc
mixin _$Payload {

@JsonKey(name: "wallet_amount") String? get walletAmount;@JsonKey(name: "transactions") List<Transaction>? get transactions;@JsonKey(name: "pagination") Pagination? get pagination;
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadCopyWith<Payload> get copyWith => _$PayloadCopyWithImpl<Payload>(this as Payload, _$identity);

  /// Serializes this Payload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payload&&(identical(other.walletAmount, walletAmount) || other.walletAmount == walletAmount)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,walletAmount,const DeepCollectionEquality().hash(transactions),pagination);

@override
String toString() {
  return 'Payload(walletAmount: $walletAmount, transactions: $transactions, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $PayloadCopyWith<$Res>  {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) _then) = _$PayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "wallet_amount") String? walletAmount,@JsonKey(name: "transactions") List<Transaction>? transactions,@JsonKey(name: "pagination") Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$PayloadCopyWithImpl<$Res>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._self, this._then);

  final Payload _self;
  final $Res Function(Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? walletAmount = freezed,Object? transactions = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
walletAmount: freezed == walletAmount ? _self.walletAmount : walletAmount // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payload].
extension PayloadPatterns on Payload {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payload value)  $default,){
final _that = this;
switch (_that) {
case _Payload():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payload value)?  $default,){
final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "wallet_amount")  String? walletAmount, @JsonKey(name: "transactions")  List<Transaction>? transactions, @JsonKey(name: "pagination")  Pagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.walletAmount,_that.transactions,_that.pagination);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "wallet_amount")  String? walletAmount, @JsonKey(name: "transactions")  List<Transaction>? transactions, @JsonKey(name: "pagination")  Pagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _Payload():
return $default(_that.walletAmount,_that.transactions,_that.pagination);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "wallet_amount")  String? walletAmount, @JsonKey(name: "transactions")  List<Transaction>? transactions, @JsonKey(name: "pagination")  Pagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.walletAmount,_that.transactions,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payload implements Payload {
  const _Payload({@JsonKey(name: "wallet_amount") this.walletAmount, @JsonKey(name: "transactions") final  List<Transaction>? transactions, @JsonKey(name: "pagination") this.pagination}): _transactions = transactions;
  factory _Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

@override@JsonKey(name: "wallet_amount") final  String? walletAmount;
 final  List<Transaction>? _transactions;
@override@JsonKey(name: "transactions") List<Transaction>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "pagination") final  Pagination? pagination;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayloadCopyWith<_Payload> get copyWith => __$PayloadCopyWithImpl<_Payload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payload&&(identical(other.walletAmount, walletAmount) || other.walletAmount == walletAmount)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,walletAmount,const DeepCollectionEquality().hash(_transactions),pagination);

@override
String toString() {
  return 'Payload(walletAmount: $walletAmount, transactions: $transactions, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) _then) = __$PayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "wallet_amount") String? walletAmount,@JsonKey(name: "transactions") List<Transaction>? transactions,@JsonKey(name: "pagination") Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(this._self, this._then);

  final _Payload _self;
  final $Res Function(_Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? walletAmount = freezed,Object? transactions = freezed,Object? pagination = freezed,}) {
  return _then(_Payload(
walletAmount: freezed == walletAmount ? _self.walletAmount : walletAmount // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$Pagination {

@JsonKey(name: "per_page") int? get perPage;@JsonKey(name: "path") String? get path;@JsonKey(name: "total") int? get total;@JsonKey(name: "current_page") int? get currentPage;@JsonKey(name: "next_page_url") dynamic get nextPageUrl;@JsonKey(name: "prev_page_url") dynamic get prevPageUrl;@JsonKey(name: "last_page") int? get lastPage;@JsonKey(name: "has_more_pages") bool? get hasMorePages;@JsonKey(name: "from") int? get from;@JsonKey(name: "to") int? get to;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.path, path) || other.path == path)&&(identical(other.total, total) || other.total == total)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.nextPageUrl, nextPageUrl)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,perPage,path,total,currentPage,const DeepCollectionEquality().hash(nextPageUrl),const DeepCollectionEquality().hash(prevPageUrl),lastPage,hasMorePages,from,to);

@override
String toString() {
  return 'Pagination(perPage: $perPage, path: $path, total: $total, currentPage: $currentPage, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl, lastPage: $lastPage, hasMorePages: $hasMorePages, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "per_page") int? perPage,@JsonKey(name: "path") String? path,@JsonKey(name: "total") int? total,@JsonKey(name: "current_page") int? currentPage,@JsonKey(name: "next_page_url") dynamic nextPageUrl,@JsonKey(name: "prev_page_url") dynamic prevPageUrl,@JsonKey(name: "last_page") int? lastPage,@JsonKey(name: "has_more_pages") bool? hasMorePages,@JsonKey(name: "from") int? from,@JsonKey(name: "to") int? to
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? perPage = freezed,Object? path = freezed,Object? total = freezed,Object? currentPage = freezed,Object? nextPageUrl = freezed,Object? prevPageUrl = freezed,Object? lastPage = freezed,Object? hasMorePages = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,hasMorePages: freezed == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "per_page")  int? perPage, @JsonKey(name: "path")  String? path, @JsonKey(name: "total")  int? total, @JsonKey(name: "current_page")  int? currentPage, @JsonKey(name: "next_page_url")  dynamic nextPageUrl, @JsonKey(name: "prev_page_url")  dynamic prevPageUrl, @JsonKey(name: "last_page")  int? lastPage, @JsonKey(name: "has_more_pages")  bool? hasMorePages, @JsonKey(name: "from")  int? from, @JsonKey(name: "to")  int? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.perPage,_that.path,_that.total,_that.currentPage,_that.nextPageUrl,_that.prevPageUrl,_that.lastPage,_that.hasMorePages,_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "per_page")  int? perPage, @JsonKey(name: "path")  String? path, @JsonKey(name: "total")  int? total, @JsonKey(name: "current_page")  int? currentPage, @JsonKey(name: "next_page_url")  dynamic nextPageUrl, @JsonKey(name: "prev_page_url")  dynamic prevPageUrl, @JsonKey(name: "last_page")  int? lastPage, @JsonKey(name: "has_more_pages")  bool? hasMorePages, @JsonKey(name: "from")  int? from, @JsonKey(name: "to")  int? to)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.perPage,_that.path,_that.total,_that.currentPage,_that.nextPageUrl,_that.prevPageUrl,_that.lastPage,_that.hasMorePages,_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "per_page")  int? perPage, @JsonKey(name: "path")  String? path, @JsonKey(name: "total")  int? total, @JsonKey(name: "current_page")  int? currentPage, @JsonKey(name: "next_page_url")  dynamic nextPageUrl, @JsonKey(name: "prev_page_url")  dynamic prevPageUrl, @JsonKey(name: "last_page")  int? lastPage, @JsonKey(name: "has_more_pages")  bool? hasMorePages, @JsonKey(name: "from")  int? from, @JsonKey(name: "to")  int? to)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.perPage,_that.path,_that.total,_that.currentPage,_that.nextPageUrl,_that.prevPageUrl,_that.lastPage,_that.hasMorePages,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({@JsonKey(name: "per_page") this.perPage, @JsonKey(name: "path") this.path, @JsonKey(name: "total") this.total, @JsonKey(name: "current_page") this.currentPage, @JsonKey(name: "next_page_url") this.nextPageUrl, @JsonKey(name: "prev_page_url") this.prevPageUrl, @JsonKey(name: "last_page") this.lastPage, @JsonKey(name: "has_more_pages") this.hasMorePages, @JsonKey(name: "from") this.from, @JsonKey(name: "to") this.to});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override@JsonKey(name: "per_page") final  int? perPage;
@override@JsonKey(name: "path") final  String? path;
@override@JsonKey(name: "total") final  int? total;
@override@JsonKey(name: "current_page") final  int? currentPage;
@override@JsonKey(name: "next_page_url") final  dynamic nextPageUrl;
@override@JsonKey(name: "prev_page_url") final  dynamic prevPageUrl;
@override@JsonKey(name: "last_page") final  int? lastPage;
@override@JsonKey(name: "has_more_pages") final  bool? hasMorePages;
@override@JsonKey(name: "from") final  int? from;
@override@JsonKey(name: "to") final  int? to;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.path, path) || other.path == path)&&(identical(other.total, total) || other.total == total)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.nextPageUrl, nextPageUrl)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,perPage,path,total,currentPage,const DeepCollectionEquality().hash(nextPageUrl),const DeepCollectionEquality().hash(prevPageUrl),lastPage,hasMorePages,from,to);

@override
String toString() {
  return 'Pagination(perPage: $perPage, path: $path, total: $total, currentPage: $currentPage, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl, lastPage: $lastPage, hasMorePages: $hasMorePages, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "per_page") int? perPage,@JsonKey(name: "path") String? path,@JsonKey(name: "total") int? total,@JsonKey(name: "current_page") int? currentPage,@JsonKey(name: "next_page_url") dynamic nextPageUrl,@JsonKey(name: "prev_page_url") dynamic prevPageUrl,@JsonKey(name: "last_page") int? lastPage,@JsonKey(name: "has_more_pages") bool? hasMorePages,@JsonKey(name: "from") int? from,@JsonKey(name: "to") int? to
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? perPage = freezed,Object? path = freezed,Object? total = freezed,Object? currentPage = freezed,Object? nextPageUrl = freezed,Object? prevPageUrl = freezed,Object? lastPage = freezed,Object? hasMorePages = freezed,Object? from = freezed,Object? to = freezed,}) {
  return _then(_Pagination(
perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,hasMorePages: freezed == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Transaction {

@JsonKey(name: "id") int? get id;@JsonKey(name: "balance") String? get balance;@JsonKey(name: "status") StatusData? get status;@JsonKey(name: "image") String? get image;@JsonKey(name: "notes") String? get notes;@JsonKey(name: "date") DateTime? get date;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,balance,status,image,notes,date);

@override
String toString() {
  return 'Transaction(id: $id, balance: $balance, status: $status, image: $image, notes: $notes, date: $date)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "balance") String? balance,@JsonKey(name: "status") StatusData? status,@JsonKey(name: "image") String? image,@JsonKey(name: "notes") String? notes,@JsonKey(name: "date") DateTime? date
});


$StatusDataCopyWith<$Res>? get status;

}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? balance = freezed,Object? status = freezed,Object? image = freezed,Object? notes = freezed,Object? date = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusData?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusDataCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $StatusDataCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "balance")  String? balance, @JsonKey(name: "status")  StatusData? status, @JsonKey(name: "image")  String? image, @JsonKey(name: "notes")  String? notes, @JsonKey(name: "date")  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.balance,_that.status,_that.image,_that.notes,_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "balance")  String? balance, @JsonKey(name: "status")  StatusData? status, @JsonKey(name: "image")  String? image, @JsonKey(name: "notes")  String? notes, @JsonKey(name: "date")  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.balance,_that.status,_that.image,_that.notes,_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "balance")  String? balance, @JsonKey(name: "status")  StatusData? status, @JsonKey(name: "image")  String? image, @JsonKey(name: "notes")  String? notes, @JsonKey(name: "date")  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.balance,_that.status,_that.image,_that.notes,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Transaction implements Transaction {
  const _Transaction({@JsonKey(name: "id") this.id, @JsonKey(name: "balance") this.balance, @JsonKey(name: "status") this.status, @JsonKey(name: "image") this.image, @JsonKey(name: "notes") this.notes, @JsonKey(name: "date") this.date});
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "balance") final  String? balance;
@override@JsonKey(name: "status") final  StatusData? status;
@override@JsonKey(name: "image") final  String? image;
@override@JsonKey(name: "notes") final  String? notes;
@override@JsonKey(name: "date") final  DateTime? date;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,balance,status,image,notes,date);

@override
String toString() {
  return 'Transaction(id: $id, balance: $balance, status: $status, image: $image, notes: $notes, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "balance") String? balance,@JsonKey(name: "status") StatusData? status,@JsonKey(name: "image") String? image,@JsonKey(name: "notes") String? notes,@JsonKey(name: "date") DateTime? date
});


@override $StatusDataCopyWith<$Res>? get status;

}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? balance = freezed,Object? status = freezed,Object? image = freezed,Object? notes = freezed,Object? date = freezed,}) {
  return _then(_Transaction(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusData?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusDataCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $StatusDataCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$StatusData {

@JsonKey(name: "status") String? get status;@JsonKey(name: "label") String? get label;@JsonKey(name: "color") String? get color;
/// Create a copy of StatusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusDataCopyWith<StatusData> get copyWith => _$StatusDataCopyWithImpl<StatusData>(this as StatusData, _$identity);

  /// Serializes this StatusData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusData&&(identical(other.status, status) || other.status == status)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,label,color);

@override
String toString() {
  return 'StatusData(status: $status, label: $label, color: $color)';
}


}

/// @nodoc
abstract mixin class $StatusDataCopyWith<$Res>  {
  factory $StatusDataCopyWith(StatusData value, $Res Function(StatusData) _then) = _$StatusDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "label") String? label,@JsonKey(name: "color") String? color
});




}
/// @nodoc
class _$StatusDataCopyWithImpl<$Res>
    implements $StatusDataCopyWith<$Res> {
  _$StatusDataCopyWithImpl(this._self, this._then);

  final StatusData _self;
  final $Res Function(StatusData) _then;

/// Create a copy of StatusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? label = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusData].
extension StatusDataPatterns on StatusData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusData value)  $default,){
final _that = this;
switch (_that) {
case _StatusData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusData value)?  $default,){
final _that = this;
switch (_that) {
case _StatusData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "label")  String? label, @JsonKey(name: "color")  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusData() when $default != null:
return $default(_that.status,_that.label,_that.color);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "label")  String? label, @JsonKey(name: "color")  String? color)  $default,) {final _that = this;
switch (_that) {
case _StatusData():
return $default(_that.status,_that.label,_that.color);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "label")  String? label, @JsonKey(name: "color")  String? color)?  $default,) {final _that = this;
switch (_that) {
case _StatusData() when $default != null:
return $default(_that.status,_that.label,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusData implements StatusData {
  const _StatusData({@JsonKey(name: "status") this.status, @JsonKey(name: "label") this.label, @JsonKey(name: "color") this.color});
  factory _StatusData.fromJson(Map<String, dynamic> json) => _$StatusDataFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "label") final  String? label;
@override@JsonKey(name: "color") final  String? color;

/// Create a copy of StatusData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusDataCopyWith<_StatusData> get copyWith => __$StatusDataCopyWithImpl<_StatusData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusData&&(identical(other.status, status) || other.status == status)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,label,color);

@override
String toString() {
  return 'StatusData(status: $status, label: $label, color: $color)';
}


}

/// @nodoc
abstract mixin class _$StatusDataCopyWith<$Res> implements $StatusDataCopyWith<$Res> {
  factory _$StatusDataCopyWith(_StatusData value, $Res Function(_StatusData) _then) = __$StatusDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "label") String? label,@JsonKey(name: "color") String? color
});




}
/// @nodoc
class __$StatusDataCopyWithImpl<$Res>
    implements _$StatusDataCopyWith<$Res> {
  __$StatusDataCopyWithImpl(this._self, this._then);

  final _StatusData _self;
  final $Res Function(_StatusData) _then;

/// Create a copy of StatusData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? label = freezed,Object? color = freezed,}) {
  return _then(_StatusData(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
