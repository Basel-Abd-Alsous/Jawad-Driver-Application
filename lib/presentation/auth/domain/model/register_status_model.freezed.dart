// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterStatusModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'code') int? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payload') Payload? get payload;@JsonKey(name: 'isSuccess') bool? get isSuccess;
/// Create a copy of RegisterStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStatusModelCopyWith<RegisterStatusModel> get copyWith => _$RegisterStatusModelCopyWithImpl<RegisterStatusModel>(this as RegisterStatusModel, _$identity);

  /// Serializes this RegisterStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'RegisterStatusModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $RegisterStatusModelCopyWith<$Res>  {
  factory $RegisterStatusModelCopyWith(RegisterStatusModel value, $Res Function(RegisterStatusModel) _then) = _$RegisterStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') Payload? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


$PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$RegisterStatusModelCopyWithImpl<$Res>
    implements $RegisterStatusModelCopyWith<$Res> {
  _$RegisterStatusModelCopyWithImpl(this._self, this._then);

  final RegisterStatusModel _self;
  final $Res Function(RegisterStatusModel) _then;

/// Create a copy of RegisterStatusModel
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
/// Create a copy of RegisterStatusModel
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


/// Adds pattern-matching-related methods to [RegisterStatusModel].
extension RegisterStatusModelPatterns on RegisterStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  Payload? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterStatusModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  Payload? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _RegisterStatusModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  Payload? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _RegisterStatusModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterStatusModel implements RegisterStatusModel {
  const _RegisterStatusModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payload') this.payload, @JsonKey(name: 'isSuccess') this.isSuccess});
  factory _RegisterStatusModel.fromJson(Map<String, dynamic> json) => _$RegisterStatusModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'code') final  int? code;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'payload') final  Payload? payload;
@override@JsonKey(name: 'isSuccess') final  bool? isSuccess;

/// Create a copy of RegisterStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStatusModelCopyWith<_RegisterStatusModel> get copyWith => __$RegisterStatusModelCopyWithImpl<_RegisterStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'RegisterStatusModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$RegisterStatusModelCopyWith<$Res> implements $RegisterStatusModelCopyWith<$Res> {
  factory _$RegisterStatusModelCopyWith(_RegisterStatusModel value, $Res Function(_RegisterStatusModel) _then) = __$RegisterStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') Payload? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});


@override $PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$RegisterStatusModelCopyWithImpl<$Res>
    implements _$RegisterStatusModelCopyWith<$Res> {
  __$RegisterStatusModelCopyWithImpl(this._self, this._then);

  final _RegisterStatusModel _self;
  final $Res Function(_RegisterStatusModel) _then;

/// Create a copy of RegisterStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_RegisterStatusModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of RegisterStatusModel
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

@JsonKey(name: 'current_step') String? get currentStep;@JsonKey(name: 'documents_status') DocumentsStatus? get documentsStatus;@JsonKey(name: 'car_info_completed') bool? get carInfoCompleted;@JsonKey(name: 'bank_info_completed') bool? get bankInfoCompleted;@JsonKey(name: 'missing_documents') List<MissingDocument>? get missingDocuments;@JsonKey(name: 'next_required_action') String? get nextRequiredAction;
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadCopyWith<Payload> get copyWith => _$PayloadCopyWithImpl<Payload>(this as Payload, _$identity);

  /// Serializes this Payload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payload&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.documentsStatus, documentsStatus) || other.documentsStatus == documentsStatus)&&(identical(other.carInfoCompleted, carInfoCompleted) || other.carInfoCompleted == carInfoCompleted)&&(identical(other.bankInfoCompleted, bankInfoCompleted) || other.bankInfoCompleted == bankInfoCompleted)&&const DeepCollectionEquality().equals(other.missingDocuments, missingDocuments)&&(identical(other.nextRequiredAction, nextRequiredAction) || other.nextRequiredAction == nextRequiredAction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentStep,documentsStatus,carInfoCompleted,bankInfoCompleted,const DeepCollectionEquality().hash(missingDocuments),nextRequiredAction);

@override
String toString() {
  return 'Payload(currentStep: $currentStep, documentsStatus: $documentsStatus, carInfoCompleted: $carInfoCompleted, bankInfoCompleted: $bankInfoCompleted, missingDocuments: $missingDocuments, nextRequiredAction: $nextRequiredAction)';
}


}

/// @nodoc
abstract mixin class $PayloadCopyWith<$Res>  {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) _then) = _$PayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_step') String? currentStep,@JsonKey(name: 'documents_status') DocumentsStatus? documentsStatus,@JsonKey(name: 'car_info_completed') bool? carInfoCompleted,@JsonKey(name: 'bank_info_completed') bool? bankInfoCompleted,@JsonKey(name: 'missing_documents') List<MissingDocument>? missingDocuments,@JsonKey(name: 'next_required_action') String? nextRequiredAction
});


$DocumentsStatusCopyWith<$Res>? get documentsStatus;

}
/// @nodoc
class _$PayloadCopyWithImpl<$Res>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._self, this._then);

  final Payload _self;
  final $Res Function(Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentStep = freezed,Object? documentsStatus = freezed,Object? carInfoCompleted = freezed,Object? bankInfoCompleted = freezed,Object? missingDocuments = freezed,Object? nextRequiredAction = freezed,}) {
  return _then(_self.copyWith(
currentStep: freezed == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as String?,documentsStatus: freezed == documentsStatus ? _self.documentsStatus : documentsStatus // ignore: cast_nullable_to_non_nullable
as DocumentsStatus?,carInfoCompleted: freezed == carInfoCompleted ? _self.carInfoCompleted : carInfoCompleted // ignore: cast_nullable_to_non_nullable
as bool?,bankInfoCompleted: freezed == bankInfoCompleted ? _self.bankInfoCompleted : bankInfoCompleted // ignore: cast_nullable_to_non_nullable
as bool?,missingDocuments: freezed == missingDocuments ? _self.missingDocuments : missingDocuments // ignore: cast_nullable_to_non_nullable
as List<MissingDocument>?,nextRequiredAction: freezed == nextRequiredAction ? _self.nextRequiredAction : nextRequiredAction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentsStatusCopyWith<$Res>? get documentsStatus {
    if (_self.documentsStatus == null) {
    return null;
  }

  return $DocumentsStatusCopyWith<$Res>(_self.documentsStatus!, (value) {
    return _then(_self.copyWith(documentsStatus: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_step')  String? currentStep, @JsonKey(name: 'documents_status')  DocumentsStatus? documentsStatus, @JsonKey(name: 'car_info_completed')  bool? carInfoCompleted, @JsonKey(name: 'bank_info_completed')  bool? bankInfoCompleted, @JsonKey(name: 'missing_documents')  List<MissingDocument>? missingDocuments, @JsonKey(name: 'next_required_action')  String? nextRequiredAction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.currentStep,_that.documentsStatus,_that.carInfoCompleted,_that.bankInfoCompleted,_that.missingDocuments,_that.nextRequiredAction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_step')  String? currentStep, @JsonKey(name: 'documents_status')  DocumentsStatus? documentsStatus, @JsonKey(name: 'car_info_completed')  bool? carInfoCompleted, @JsonKey(name: 'bank_info_completed')  bool? bankInfoCompleted, @JsonKey(name: 'missing_documents')  List<MissingDocument>? missingDocuments, @JsonKey(name: 'next_required_action')  String? nextRequiredAction)  $default,) {final _that = this;
switch (_that) {
case _Payload():
return $default(_that.currentStep,_that.documentsStatus,_that.carInfoCompleted,_that.bankInfoCompleted,_that.missingDocuments,_that.nextRequiredAction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_step')  String? currentStep, @JsonKey(name: 'documents_status')  DocumentsStatus? documentsStatus, @JsonKey(name: 'car_info_completed')  bool? carInfoCompleted, @JsonKey(name: 'bank_info_completed')  bool? bankInfoCompleted, @JsonKey(name: 'missing_documents')  List<MissingDocument>? missingDocuments, @JsonKey(name: 'next_required_action')  String? nextRequiredAction)?  $default,) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.currentStep,_that.documentsStatus,_that.carInfoCompleted,_that.bankInfoCompleted,_that.missingDocuments,_that.nextRequiredAction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payload implements Payload {
  const _Payload({@JsonKey(name: 'current_step') this.currentStep, @JsonKey(name: 'documents_status') this.documentsStatus, @JsonKey(name: 'car_info_completed') this.carInfoCompleted, @JsonKey(name: 'bank_info_completed') this.bankInfoCompleted, @JsonKey(name: 'missing_documents') final  List<MissingDocument>? missingDocuments, @JsonKey(name: 'next_required_action') this.nextRequiredAction}): _missingDocuments = missingDocuments;
  factory _Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

@override@JsonKey(name: 'current_step') final  String? currentStep;
@override@JsonKey(name: 'documents_status') final  DocumentsStatus? documentsStatus;
@override@JsonKey(name: 'car_info_completed') final  bool? carInfoCompleted;
@override@JsonKey(name: 'bank_info_completed') final  bool? bankInfoCompleted;
 final  List<MissingDocument>? _missingDocuments;
@override@JsonKey(name: 'missing_documents') List<MissingDocument>? get missingDocuments {
  final value = _missingDocuments;
  if (value == null) return null;
  if (_missingDocuments is EqualUnmodifiableListView) return _missingDocuments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'next_required_action') final  String? nextRequiredAction;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payload&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.documentsStatus, documentsStatus) || other.documentsStatus == documentsStatus)&&(identical(other.carInfoCompleted, carInfoCompleted) || other.carInfoCompleted == carInfoCompleted)&&(identical(other.bankInfoCompleted, bankInfoCompleted) || other.bankInfoCompleted == bankInfoCompleted)&&const DeepCollectionEquality().equals(other._missingDocuments, _missingDocuments)&&(identical(other.nextRequiredAction, nextRequiredAction) || other.nextRequiredAction == nextRequiredAction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentStep,documentsStatus,carInfoCompleted,bankInfoCompleted,const DeepCollectionEquality().hash(_missingDocuments),nextRequiredAction);

@override
String toString() {
  return 'Payload(currentStep: $currentStep, documentsStatus: $documentsStatus, carInfoCompleted: $carInfoCompleted, bankInfoCompleted: $bankInfoCompleted, missingDocuments: $missingDocuments, nextRequiredAction: $nextRequiredAction)';
}


}

/// @nodoc
abstract mixin class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) _then) = __$PayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_step') String? currentStep,@JsonKey(name: 'documents_status') DocumentsStatus? documentsStatus,@JsonKey(name: 'car_info_completed') bool? carInfoCompleted,@JsonKey(name: 'bank_info_completed') bool? bankInfoCompleted,@JsonKey(name: 'missing_documents') List<MissingDocument>? missingDocuments,@JsonKey(name: 'next_required_action') String? nextRequiredAction
});


@override $DocumentsStatusCopyWith<$Res>? get documentsStatus;

}
/// @nodoc
class __$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(this._self, this._then);

  final _Payload _self;
  final $Res Function(_Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentStep = freezed,Object? documentsStatus = freezed,Object? carInfoCompleted = freezed,Object? bankInfoCompleted = freezed,Object? missingDocuments = freezed,Object? nextRequiredAction = freezed,}) {
  return _then(_Payload(
currentStep: freezed == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as String?,documentsStatus: freezed == documentsStatus ? _self.documentsStatus : documentsStatus // ignore: cast_nullable_to_non_nullable
as DocumentsStatus?,carInfoCompleted: freezed == carInfoCompleted ? _self.carInfoCompleted : carInfoCompleted // ignore: cast_nullable_to_non_nullable
as bool?,bankInfoCompleted: freezed == bankInfoCompleted ? _self.bankInfoCompleted : bankInfoCompleted // ignore: cast_nullable_to_non_nullable
as bool?,missingDocuments: freezed == missingDocuments ? _self._missingDocuments : missingDocuments // ignore: cast_nullable_to_non_nullable
as List<MissingDocument>?,nextRequiredAction: freezed == nextRequiredAction ? _self.nextRequiredAction : nextRequiredAction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentsStatusCopyWith<$Res>? get documentsStatus {
    if (_self.documentsStatus == null) {
    return null;
  }

  return $DocumentsStatusCopyWith<$Res>(_self.documentsStatus!, (value) {
    return _then(_self.copyWith(documentsStatus: value));
  });
}
}


/// @nodoc
mixin _$DocumentsStatus {

@JsonKey(name: 'total_required') int? get totalRequired;@JsonKey(name: 'uploaded') int? get uploaded;@JsonKey(name: 'approved') int? get approved;@JsonKey(name: 'pending') int? get pending;@JsonKey(name: 'rejected') int? get rejected;
/// Create a copy of DocumentsStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsStatusCopyWith<DocumentsStatus> get copyWith => _$DocumentsStatusCopyWithImpl<DocumentsStatus>(this as DocumentsStatus, _$identity);

  /// Serializes this DocumentsStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsStatus&&(identical(other.totalRequired, totalRequired) || other.totalRequired == totalRequired)&&(identical(other.uploaded, uploaded) || other.uploaded == uploaded)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.rejected, rejected) || other.rejected == rejected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequired,uploaded,approved,pending,rejected);

@override
String toString() {
  return 'DocumentsStatus(totalRequired: $totalRequired, uploaded: $uploaded, approved: $approved, pending: $pending, rejected: $rejected)';
}


}

/// @nodoc
abstract mixin class $DocumentsStatusCopyWith<$Res>  {
  factory $DocumentsStatusCopyWith(DocumentsStatus value, $Res Function(DocumentsStatus) _then) = _$DocumentsStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_required') int? totalRequired,@JsonKey(name: 'uploaded') int? uploaded,@JsonKey(name: 'approved') int? approved,@JsonKey(name: 'pending') int? pending,@JsonKey(name: 'rejected') int? rejected
});




}
/// @nodoc
class _$DocumentsStatusCopyWithImpl<$Res>
    implements $DocumentsStatusCopyWith<$Res> {
  _$DocumentsStatusCopyWithImpl(this._self, this._then);

  final DocumentsStatus _self;
  final $Res Function(DocumentsStatus) _then;

/// Create a copy of DocumentsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRequired = freezed,Object? uploaded = freezed,Object? approved = freezed,Object? pending = freezed,Object? rejected = freezed,}) {
  return _then(_self.copyWith(
totalRequired: freezed == totalRequired ? _self.totalRequired : totalRequired // ignore: cast_nullable_to_non_nullable
as int?,uploaded: freezed == uploaded ? _self.uploaded : uploaded // ignore: cast_nullable_to_non_nullable
as int?,approved: freezed == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as int?,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int?,rejected: freezed == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentsStatus].
extension DocumentsStatusPatterns on DocumentsStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentsStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentsStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentsStatus value)  $default,){
final _that = this;
switch (_that) {
case _DocumentsStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentsStatus value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentsStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_required')  int? totalRequired, @JsonKey(name: 'uploaded')  int? uploaded, @JsonKey(name: 'approved')  int? approved, @JsonKey(name: 'pending')  int? pending, @JsonKey(name: 'rejected')  int? rejected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentsStatus() when $default != null:
return $default(_that.totalRequired,_that.uploaded,_that.approved,_that.pending,_that.rejected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_required')  int? totalRequired, @JsonKey(name: 'uploaded')  int? uploaded, @JsonKey(name: 'approved')  int? approved, @JsonKey(name: 'pending')  int? pending, @JsonKey(name: 'rejected')  int? rejected)  $default,) {final _that = this;
switch (_that) {
case _DocumentsStatus():
return $default(_that.totalRequired,_that.uploaded,_that.approved,_that.pending,_that.rejected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_required')  int? totalRequired, @JsonKey(name: 'uploaded')  int? uploaded, @JsonKey(name: 'approved')  int? approved, @JsonKey(name: 'pending')  int? pending, @JsonKey(name: 'rejected')  int? rejected)?  $default,) {final _that = this;
switch (_that) {
case _DocumentsStatus() when $default != null:
return $default(_that.totalRequired,_that.uploaded,_that.approved,_that.pending,_that.rejected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentsStatus implements DocumentsStatus {
  const _DocumentsStatus({@JsonKey(name: 'total_required') this.totalRequired, @JsonKey(name: 'uploaded') this.uploaded, @JsonKey(name: 'approved') this.approved, @JsonKey(name: 'pending') this.pending, @JsonKey(name: 'rejected') this.rejected});
  factory _DocumentsStatus.fromJson(Map<String, dynamic> json) => _$DocumentsStatusFromJson(json);

@override@JsonKey(name: 'total_required') final  int? totalRequired;
@override@JsonKey(name: 'uploaded') final  int? uploaded;
@override@JsonKey(name: 'approved') final  int? approved;
@override@JsonKey(name: 'pending') final  int? pending;
@override@JsonKey(name: 'rejected') final  int? rejected;

/// Create a copy of DocumentsStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentsStatusCopyWith<_DocumentsStatus> get copyWith => __$DocumentsStatusCopyWithImpl<_DocumentsStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentsStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentsStatus&&(identical(other.totalRequired, totalRequired) || other.totalRequired == totalRequired)&&(identical(other.uploaded, uploaded) || other.uploaded == uploaded)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.rejected, rejected) || other.rejected == rejected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequired,uploaded,approved,pending,rejected);

@override
String toString() {
  return 'DocumentsStatus(totalRequired: $totalRequired, uploaded: $uploaded, approved: $approved, pending: $pending, rejected: $rejected)';
}


}

/// @nodoc
abstract mixin class _$DocumentsStatusCopyWith<$Res> implements $DocumentsStatusCopyWith<$Res> {
  factory _$DocumentsStatusCopyWith(_DocumentsStatus value, $Res Function(_DocumentsStatus) _then) = __$DocumentsStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_required') int? totalRequired,@JsonKey(name: 'uploaded') int? uploaded,@JsonKey(name: 'approved') int? approved,@JsonKey(name: 'pending') int? pending,@JsonKey(name: 'rejected') int? rejected
});




}
/// @nodoc
class __$DocumentsStatusCopyWithImpl<$Res>
    implements _$DocumentsStatusCopyWith<$Res> {
  __$DocumentsStatusCopyWithImpl(this._self, this._then);

  final _DocumentsStatus _self;
  final $Res Function(_DocumentsStatus) _then;

/// Create a copy of DocumentsStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRequired = freezed,Object? uploaded = freezed,Object? approved = freezed,Object? pending = freezed,Object? rejected = freezed,}) {
  return _then(_DocumentsStatus(
totalRequired: freezed == totalRequired ? _self.totalRequired : totalRequired // ignore: cast_nullable_to_non_nullable
as int?,uploaded: freezed == uploaded ? _self.uploaded : uploaded // ignore: cast_nullable_to_non_nullable
as int?,approved: freezed == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as int?,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int?,rejected: freezed == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MissingDocument {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
/// Create a copy of MissingDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissingDocumentCopyWith<MissingDocument> get copyWith => _$MissingDocumentCopyWithImpl<MissingDocument>(this as MissingDocument, _$identity);

  /// Serializes this MissingDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissingDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'MissingDocument(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $MissingDocumentCopyWith<$Res>  {
  factory $MissingDocumentCopyWith(MissingDocument value, $Res Function(MissingDocument) _then) = _$MissingDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$MissingDocumentCopyWithImpl<$Res>
    implements $MissingDocumentCopyWith<$Res> {
  _$MissingDocumentCopyWithImpl(this._self, this._then);

  final MissingDocument _self;
  final $Res Function(MissingDocument) _then;

/// Create a copy of MissingDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MissingDocument].
extension MissingDocumentPatterns on MissingDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MissingDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MissingDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MissingDocument value)  $default,){
final _that = this;
switch (_that) {
case _MissingDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MissingDocument value)?  $default,){
final _that = this;
switch (_that) {
case _MissingDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MissingDocument() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _MissingDocument():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _MissingDocument() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MissingDocument implements MissingDocument {
  const _MissingDocument({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _MissingDocument.fromJson(Map<String, dynamic> json) => _$MissingDocumentFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of MissingDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissingDocumentCopyWith<_MissingDocument> get copyWith => __$MissingDocumentCopyWithImpl<_MissingDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MissingDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MissingDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'MissingDocument(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$MissingDocumentCopyWith<$Res> implements $MissingDocumentCopyWith<$Res> {
  factory _$MissingDocumentCopyWith(_MissingDocument value, $Res Function(_MissingDocument) _then) = __$MissingDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$MissingDocumentCopyWithImpl<$Res>
    implements _$MissingDocumentCopyWith<$Res> {
  __$MissingDocumentCopyWithImpl(this._self, this._then);

  final _MissingDocument _self;
  final $Res Function(_MissingDocument) _then;

/// Create a copy of MissingDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_MissingDocument(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
