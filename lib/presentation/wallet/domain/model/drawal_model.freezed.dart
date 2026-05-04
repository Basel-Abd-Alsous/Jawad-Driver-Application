// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DrawalModel {

@JsonKey(name: "status") String? get status;@JsonKey(name: "code") int? get code;@JsonKey(name: "message") String? get message;@JsonKey(name: "payload") List<DrawalItem>? get payload;@JsonKey(name: "isSuccess") bool? get isSuccess;
/// Create a copy of DrawalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawalModelCopyWith<DrawalModel> get copyWith => _$DrawalModelCopyWithImpl<DrawalModel>(this as DrawalModel, _$identity);

  /// Serializes this DrawalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawalModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(payload),isSuccess);

@override
String toString() {
  return 'DrawalModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $DrawalModelCopyWith<$Res>  {
  factory $DrawalModelCopyWith(DrawalModel value, $Res Function(DrawalModel) _then) = _$DrawalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") List<DrawalItem>? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});




}
/// @nodoc
class _$DrawalModelCopyWithImpl<$Res>
    implements $DrawalModelCopyWith<$Res> {
  _$DrawalModelCopyWithImpl(this._self, this._then);

  final DrawalModel _self;
  final $Res Function(DrawalModel) _then;

/// Create a copy of DrawalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<DrawalItem>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DrawalModel].
extension DrawalModelPatterns on DrawalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrawalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrawalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrawalModel value)  $default,){
final _that = this;
switch (_that) {
case _DrawalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrawalModel value)?  $default,){
final _that = this;
switch (_that) {
case _DrawalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  List<DrawalItem>? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrawalModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  List<DrawalItem>? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _DrawalModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "code")  int? code, @JsonKey(name: "message")  String? message, @JsonKey(name: "payload")  List<DrawalItem>? payload, @JsonKey(name: "isSuccess")  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _DrawalModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DrawalModel implements DrawalModel {
  const _DrawalModel({@JsonKey(name: "status") this.status, @JsonKey(name: "code") this.code, @JsonKey(name: "message") this.message, @JsonKey(name: "payload") final  List<DrawalItem>? payload, @JsonKey(name: "isSuccess") this.isSuccess}): _payload = payload;
  factory _DrawalModel.fromJson(Map<String, dynamic> json) => _$DrawalModelFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "code") final  int? code;
@override@JsonKey(name: "message") final  String? message;
 final  List<DrawalItem>? _payload;
@override@JsonKey(name: "payload") List<DrawalItem>? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableListView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "isSuccess") final  bool? isSuccess;

/// Create a copy of DrawalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawalModelCopyWith<_DrawalModel> get copyWith => __$DrawalModelCopyWithImpl<_DrawalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DrawalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawalModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._payload, _payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_payload),isSuccess);

@override
String toString() {
  return 'DrawalModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$DrawalModelCopyWith<$Res> implements $DrawalModelCopyWith<$Res> {
  factory _$DrawalModelCopyWith(_DrawalModel value, $Res Function(_DrawalModel) _then) = __$DrawalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") List<DrawalItem>? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});




}
/// @nodoc
class __$DrawalModelCopyWithImpl<$Res>
    implements _$DrawalModelCopyWith<$Res> {
  __$DrawalModelCopyWithImpl(this._self, this._then);

  final _DrawalModel _self;
  final $Res Function(_DrawalModel) _then;

/// Create a copy of DrawalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_DrawalModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as List<DrawalItem>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$DrawalItem {

@JsonKey(name: "id") int? get id;@JsonKey(name: "method") String? get method;@JsonKey(name: "bank_details") BankDetails? get bankDetails;@JsonKey(name: "phone") dynamic get phone;@JsonKey(name: "status") Status? get status;@JsonKey(name: "amount") int? get amount;@JsonKey(name: "note") dynamic get note;@JsonKey(name: "created_at") String? get createdAt;
/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawalItemCopyWith<DrawalItem> get copyWith => _$DrawalItemCopyWithImpl<DrawalItem>(this as DrawalItem, _$identity);

  /// Serializes this DrawalItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawalItem&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.bankDetails, bankDetails) || other.bankDetails == bankDetails)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.note, note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,method,bankDetails,const DeepCollectionEquality().hash(phone),status,amount,const DeepCollectionEquality().hash(note),createdAt);

@override
String toString() {
  return 'DrawalItem(id: $id, method: $method, bankDetails: $bankDetails, phone: $phone, status: $status, amount: $amount, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DrawalItemCopyWith<$Res>  {
  factory $DrawalItemCopyWith(DrawalItem value, $Res Function(DrawalItem) _then) = _$DrawalItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "method") String? method,@JsonKey(name: "bank_details") BankDetails? bankDetails,@JsonKey(name: "phone") dynamic phone,@JsonKey(name: "status") Status? status,@JsonKey(name: "amount") int? amount,@JsonKey(name: "note") dynamic note,@JsonKey(name: "created_at") String? createdAt
});


$BankDetailsCopyWith<$Res>? get bankDetails;$StatusCopyWith<$Res>? get status;

}
/// @nodoc
class _$DrawalItemCopyWithImpl<$Res>
    implements $DrawalItemCopyWith<$Res> {
  _$DrawalItemCopyWithImpl(this._self, this._then);

  final DrawalItem _self;
  final $Res Function(DrawalItem) _then;

/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? method = freezed,Object? bankDetails = freezed,Object? phone = freezed,Object? status = freezed,Object? amount = freezed,Object? note = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,bankDetails: freezed == bankDetails ? _self.bankDetails : bankDetails // ignore: cast_nullable_to_non_nullable
as BankDetails?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankDetailsCopyWith<$Res>? get bankDetails {
    if (_self.bankDetails == null) {
    return null;
  }

  return $BankDetailsCopyWith<$Res>(_self.bankDetails!, (value) {
    return _then(_self.copyWith(bankDetails: value));
  });
}/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [DrawalItem].
extension DrawalItemPatterns on DrawalItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrawalItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrawalItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrawalItem value)  $default,){
final _that = this;
switch (_that) {
case _DrawalItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrawalItem value)?  $default,){
final _that = this;
switch (_that) {
case _DrawalItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "method")  String? method, @JsonKey(name: "bank_details")  BankDetails? bankDetails, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "status")  Status? status, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "note")  dynamic note, @JsonKey(name: "created_at")  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrawalItem() when $default != null:
return $default(_that.id,_that.method,_that.bankDetails,_that.phone,_that.status,_that.amount,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "method")  String? method, @JsonKey(name: "bank_details")  BankDetails? bankDetails, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "status")  Status? status, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "note")  dynamic note, @JsonKey(name: "created_at")  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DrawalItem():
return $default(_that.id,_that.method,_that.bankDetails,_that.phone,_that.status,_that.amount,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "method")  String? method, @JsonKey(name: "bank_details")  BankDetails? bankDetails, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "status")  Status? status, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "note")  dynamic note, @JsonKey(name: "created_at")  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DrawalItem() when $default != null:
return $default(_that.id,_that.method,_that.bankDetails,_that.phone,_that.status,_that.amount,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DrawalItem implements DrawalItem {
  const _DrawalItem({@JsonKey(name: "id") this.id, @JsonKey(name: "method") this.method, @JsonKey(name: "bank_details") this.bankDetails, @JsonKey(name: "phone") this.phone, @JsonKey(name: "status") this.status, @JsonKey(name: "amount") this.amount, @JsonKey(name: "note") this.note, @JsonKey(name: "created_at") this.createdAt});
  factory _DrawalItem.fromJson(Map<String, dynamic> json) => _$DrawalItemFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "method") final  String? method;
@override@JsonKey(name: "bank_details") final  BankDetails? bankDetails;
@override@JsonKey(name: "phone") final  dynamic phone;
@override@JsonKey(name: "status") final  Status? status;
@override@JsonKey(name: "amount") final  int? amount;
@override@JsonKey(name: "note") final  dynamic note;
@override@JsonKey(name: "created_at") final  String? createdAt;

/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawalItemCopyWith<_DrawalItem> get copyWith => __$DrawalItemCopyWithImpl<_DrawalItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DrawalItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawalItem&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.bankDetails, bankDetails) || other.bankDetails == bankDetails)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.note, note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,method,bankDetails,const DeepCollectionEquality().hash(phone),status,amount,const DeepCollectionEquality().hash(note),createdAt);

@override
String toString() {
  return 'DrawalItem(id: $id, method: $method, bankDetails: $bankDetails, phone: $phone, status: $status, amount: $amount, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DrawalItemCopyWith<$Res> implements $DrawalItemCopyWith<$Res> {
  factory _$DrawalItemCopyWith(_DrawalItem value, $Res Function(_DrawalItem) _then) = __$DrawalItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "method") String? method,@JsonKey(name: "bank_details") BankDetails? bankDetails,@JsonKey(name: "phone") dynamic phone,@JsonKey(name: "status") Status? status,@JsonKey(name: "amount") int? amount,@JsonKey(name: "note") dynamic note,@JsonKey(name: "created_at") String? createdAt
});


@override $BankDetailsCopyWith<$Res>? get bankDetails;@override $StatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$DrawalItemCopyWithImpl<$Res>
    implements _$DrawalItemCopyWith<$Res> {
  __$DrawalItemCopyWithImpl(this._self, this._then);

  final _DrawalItem _self;
  final $Res Function(_DrawalItem) _then;

/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? method = freezed,Object? bankDetails = freezed,Object? phone = freezed,Object? status = freezed,Object? amount = freezed,Object? note = freezed,Object? createdAt = freezed,}) {
  return _then(_DrawalItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,bankDetails: freezed == bankDetails ? _self.bankDetails : bankDetails // ignore: cast_nullable_to_non_nullable
as BankDetails?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankDetailsCopyWith<$Res>? get bankDetails {
    if (_self.bankDetails == null) {
    return null;
  }

  return $BankDetailsCopyWith<$Res>(_self.bankDetails!, (value) {
    return _then(_self.copyWith(bankDetails: value));
  });
}/// Create a copy of DrawalItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$BankDetails {

@JsonKey(name: "494") String? get the494;@JsonKey(name: "4546") String? get the4546;@JsonKey(name: "") String? get empty;@JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV") String? get nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv;@JsonKey(name: "55555555555") String? get the55555555555;@JsonKey(name: "34481919181181919") String? get the34481919181181919;@JsonKey(name: "000000") String? get the000000;@JsonKey(name: "000000000000000") String? get the000000000000000;
/// Create a copy of BankDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankDetailsCopyWith<BankDetails> get copyWith => _$BankDetailsCopyWithImpl<BankDetails>(this as BankDetails, _$identity);

  /// Serializes this BankDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankDetails&&(identical(other.the494, the494) || other.the494 == the494)&&(identical(other.the4546, the4546) || other.the4546 == the4546)&&(identical(other.empty, empty) || other.empty == empty)&&(identical(other.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv) || other.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv == nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv)&&(identical(other.the55555555555, the55555555555) || other.the55555555555 == the55555555555)&&(identical(other.the34481919181181919, the34481919181181919) || other.the34481919181181919 == the34481919181181919)&&(identical(other.the000000, the000000) || other.the000000 == the000000)&&(identical(other.the000000000000000, the000000000000000) || other.the000000000000000 == the000000000000000));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,the494,the4546,empty,nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,the55555555555,the34481919181181919,the000000,the000000000000000);

@override
String toString() {
  return 'BankDetails(the494: $the494, the4546: $the4546, empty: $empty, nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv: $nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, the55555555555: $the55555555555, the34481919181181919: $the34481919181181919, the000000: $the000000, the000000000000000: $the000000000000000)';
}


}

/// @nodoc
abstract mixin class $BankDetailsCopyWith<$Res>  {
  factory $BankDetailsCopyWith(BankDetails value, $Res Function(BankDetails) _then) = _$BankDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "494") String? the494,@JsonKey(name: "4546") String? the4546,@JsonKey(name: "") String? empty,@JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV") String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,@JsonKey(name: "55555555555") String? the55555555555,@JsonKey(name: "34481919181181919") String? the34481919181181919,@JsonKey(name: "000000") String? the000000,@JsonKey(name: "000000000000000") String? the000000000000000
});




}
/// @nodoc
class _$BankDetailsCopyWithImpl<$Res>
    implements $BankDetailsCopyWith<$Res> {
  _$BankDetailsCopyWithImpl(this._self, this._then);

  final BankDetails _self;
  final $Res Function(BankDetails) _then;

/// Create a copy of BankDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? the494 = freezed,Object? the4546 = freezed,Object? empty = freezed,Object? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv = freezed,Object? the55555555555 = freezed,Object? the34481919181181919 = freezed,Object? the000000 = freezed,Object? the000000000000000 = freezed,}) {
  return _then(_self.copyWith(
the494: freezed == the494 ? _self.the494 : the494 // ignore: cast_nullable_to_non_nullable
as String?,the4546: freezed == the4546 ? _self.the4546 : the4546 // ignore: cast_nullable_to_non_nullable
as String?,empty: freezed == empty ? _self.empty : empty // ignore: cast_nullable_to_non_nullable
as String?,nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv: freezed == nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv ? _self.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv : nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv // ignore: cast_nullable_to_non_nullable
as String?,the55555555555: freezed == the55555555555 ? _self.the55555555555 : the55555555555 // ignore: cast_nullable_to_non_nullable
as String?,the34481919181181919: freezed == the34481919181181919 ? _self.the34481919181181919 : the34481919181181919 // ignore: cast_nullable_to_non_nullable
as String?,the000000: freezed == the000000 ? _self.the000000 : the000000 // ignore: cast_nullable_to_non_nullable
as String?,the000000000000000: freezed == the000000000000000 ? _self.the000000000000000 : the000000000000000 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BankDetails].
extension BankDetailsPatterns on BankDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankDetails value)  $default,){
final _that = this;
switch (_that) {
case _BankDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankDetails value)?  $default,){
final _that = this;
switch (_that) {
case _BankDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "494")  String? the494, @JsonKey(name: "4546")  String? the4546, @JsonKey(name: "")  String? empty, @JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV")  String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, @JsonKey(name: "55555555555")  String? the55555555555, @JsonKey(name: "34481919181181919")  String? the34481919181181919, @JsonKey(name: "000000")  String? the000000, @JsonKey(name: "000000000000000")  String? the000000000000000)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankDetails() when $default != null:
return $default(_that.the494,_that.the4546,_that.empty,_that.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,_that.the55555555555,_that.the34481919181181919,_that.the000000,_that.the000000000000000);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "494")  String? the494, @JsonKey(name: "4546")  String? the4546, @JsonKey(name: "")  String? empty, @JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV")  String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, @JsonKey(name: "55555555555")  String? the55555555555, @JsonKey(name: "34481919181181919")  String? the34481919181181919, @JsonKey(name: "000000")  String? the000000, @JsonKey(name: "000000000000000")  String? the000000000000000)  $default,) {final _that = this;
switch (_that) {
case _BankDetails():
return $default(_that.the494,_that.the4546,_that.empty,_that.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,_that.the55555555555,_that.the34481919181181919,_that.the000000,_that.the000000000000000);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "494")  String? the494, @JsonKey(name: "4546")  String? the4546, @JsonKey(name: "")  String? empty, @JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV")  String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, @JsonKey(name: "55555555555")  String? the55555555555, @JsonKey(name: "34481919181181919")  String? the34481919181181919, @JsonKey(name: "000000")  String? the000000, @JsonKey(name: "000000000000000")  String? the000000000000000)?  $default,) {final _that = this;
switch (_that) {
case _BankDetails() when $default != null:
return $default(_that.the494,_that.the4546,_that.empty,_that.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,_that.the55555555555,_that.the34481919181181919,_that.the000000,_that.the000000000000000);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankDetails implements BankDetails {
  const _BankDetails({@JsonKey(name: "494") this.the494, @JsonKey(name: "4546") this.the4546, @JsonKey(name: "") this.empty, @JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV") this.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, @JsonKey(name: "55555555555") this.the55555555555, @JsonKey(name: "34481919181181919") this.the34481919181181919, @JsonKey(name: "000000") this.the000000, @JsonKey(name: "000000000000000") this.the000000000000000});
  factory _BankDetails.fromJson(Map<String, dynamic> json) => _$BankDetailsFromJson(json);

@override@JsonKey(name: "494") final  String? the494;
@override@JsonKey(name: "4546") final  String? the4546;
@override@JsonKey(name: "") final  String? empty;
@override@JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV") final  String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv;
@override@JsonKey(name: "55555555555") final  String? the55555555555;
@override@JsonKey(name: "34481919181181919") final  String? the34481919181181919;
@override@JsonKey(name: "000000") final  String? the000000;
@override@JsonKey(name: "000000000000000") final  String? the000000000000000;

/// Create a copy of BankDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankDetailsCopyWith<_BankDetails> get copyWith => __$BankDetailsCopyWithImpl<_BankDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankDetails&&(identical(other.the494, the494) || other.the494 == the494)&&(identical(other.the4546, the4546) || other.the4546 == the4546)&&(identical(other.empty, empty) || other.empty == empty)&&(identical(other.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv) || other.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv == nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv)&&(identical(other.the55555555555, the55555555555) || other.the55555555555 == the55555555555)&&(identical(other.the34481919181181919, the34481919181181919) || other.the34481919181181919 == the34481919181181919)&&(identical(other.the000000, the000000) || other.the000000 == the000000)&&(identical(other.the000000000000000, the000000000000000) || other.the000000000000000 == the000000000000000));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,the494,the4546,empty,nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,the55555555555,the34481919181181919,the000000,the000000000000000);

@override
String toString() {
  return 'BankDetails(the494: $the494, the4546: $the4546, empty: $empty, nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv: $nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv, the55555555555: $the55555555555, the34481919181181919: $the34481919181181919, the000000: $the000000, the000000000000000: $the000000000000000)';
}


}

/// @nodoc
abstract mixin class _$BankDetailsCopyWith<$Res> implements $BankDetailsCopyWith<$Res> {
  factory _$BankDetailsCopyWith(_BankDetails value, $Res Function(_BankDetails) _then) = __$BankDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "494") String? the494,@JsonKey(name: "4546") String? the4546,@JsonKey(name: "") String? empty,@JsonKey(name: "N,MNUGUYHJVVBVNBVNBVBNVBNVBNVBNV") String? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv,@JsonKey(name: "55555555555") String? the55555555555,@JsonKey(name: "34481919181181919") String? the34481919181181919,@JsonKey(name: "000000") String? the000000,@JsonKey(name: "000000000000000") String? the000000000000000
});




}
/// @nodoc
class __$BankDetailsCopyWithImpl<$Res>
    implements _$BankDetailsCopyWith<$Res> {
  __$BankDetailsCopyWithImpl(this._self, this._then);

  final _BankDetails _self;
  final $Res Function(_BankDetails) _then;

/// Create a copy of BankDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? the494 = freezed,Object? the4546 = freezed,Object? empty = freezed,Object? nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv = freezed,Object? the55555555555 = freezed,Object? the34481919181181919 = freezed,Object? the000000 = freezed,Object? the000000000000000 = freezed,}) {
  return _then(_BankDetails(
the494: freezed == the494 ? _self.the494 : the494 // ignore: cast_nullable_to_non_nullable
as String?,the4546: freezed == the4546 ? _self.the4546 : the4546 // ignore: cast_nullable_to_non_nullable
as String?,empty: freezed == empty ? _self.empty : empty // ignore: cast_nullable_to_non_nullable
as String?,nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv: freezed == nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv ? _self.nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv : nMnuguyhjvvbvnbvnbvbnvbnvbnvbnv // ignore: cast_nullable_to_non_nullable
as String?,the55555555555: freezed == the55555555555 ? _self.the55555555555 : the55555555555 // ignore: cast_nullable_to_non_nullable
as String?,the34481919181181919: freezed == the34481919181181919 ? _self.the34481919181181919 : the34481919181181919 // ignore: cast_nullable_to_non_nullable
as String?,the000000: freezed == the000000 ? _self.the000000 : the000000 // ignore: cast_nullable_to_non_nullable
as String?,the000000000000000: freezed == the000000000000000 ? _self.the000000000000000 : the000000000000000 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Status {

@JsonKey(name: "status") String? get status;@JsonKey(name: "label") String? get label;@JsonKey(name: "mobile_color") String? get mobileColor;
/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusCopyWith<Status> get copyWith => _$StatusCopyWithImpl<Status>(this as Status, _$identity);

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Status&&(identical(other.status, status) || other.status == status)&&(identical(other.label, label) || other.label == label)&&(identical(other.mobileColor, mobileColor) || other.mobileColor == mobileColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,label,mobileColor);

@override
String toString() {
  return 'Status(status: $status, label: $label, mobileColor: $mobileColor)';
}


}

/// @nodoc
abstract mixin class $StatusCopyWith<$Res>  {
  factory $StatusCopyWith(Status value, $Res Function(Status) _then) = _$StatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "label") String? label,@JsonKey(name: "mobile_color") String? mobileColor
});




}
/// @nodoc
class _$StatusCopyWithImpl<$Res>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._self, this._then);

  final Status _self;
  final $Res Function(Status) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? label = freezed,Object? mobileColor = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,mobileColor: freezed == mobileColor ? _self.mobileColor : mobileColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Status].
extension StatusPatterns on Status {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Status value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Status() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Status value)  $default,){
final _that = this;
switch (_that) {
case _Status():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Status value)?  $default,){
final _that = this;
switch (_that) {
case _Status() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "label")  String? label, @JsonKey(name: "mobile_color")  String? mobileColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.status,_that.label,_that.mobileColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "label")  String? label, @JsonKey(name: "mobile_color")  String? mobileColor)  $default,) {final _that = this;
switch (_that) {
case _Status():
return $default(_that.status,_that.label,_that.mobileColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String? status, @JsonKey(name: "label")  String? label, @JsonKey(name: "mobile_color")  String? mobileColor)?  $default,) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.status,_that.label,_that.mobileColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Status implements Status {
  const _Status({@JsonKey(name: "status") this.status, @JsonKey(name: "label") this.label, @JsonKey(name: "mobile_color") this.mobileColor});
  factory _Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "label") final  String? label;
@override@JsonKey(name: "mobile_color") final  String? mobileColor;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusCopyWith<_Status> get copyWith => __$StatusCopyWithImpl<_Status>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Status&&(identical(other.status, status) || other.status == status)&&(identical(other.label, label) || other.label == label)&&(identical(other.mobileColor, mobileColor) || other.mobileColor == mobileColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,label,mobileColor);

@override
String toString() {
  return 'Status(status: $status, label: $label, mobileColor: $mobileColor)';
}


}

/// @nodoc
abstract mixin class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) _then) = __$StatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "label") String? label,@JsonKey(name: "mobile_color") String? mobileColor
});




}
/// @nodoc
class __$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(this._self, this._then);

  final _Status _self;
  final $Res Function(_Status) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? label = freezed,Object? mobileColor = freezed,}) {
  return _then(_Status(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,mobileColor: freezed == mobileColor ? _self.mobileColor : mobileColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
