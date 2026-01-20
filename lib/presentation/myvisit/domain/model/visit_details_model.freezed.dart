// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitDetailsModel {

@JsonKey(name: "status") String? get status;@JsonKey(name: "code") int? get code;@JsonKey(name: "message") String? get message;@JsonKey(name: "payload") Payload? get payload;@JsonKey(name: "isSuccess") bool? get isSuccess;
/// Create a copy of VisitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitDetailsModelCopyWith<VisitDetailsModel> get copyWith => _$VisitDetailsModelCopyWithImpl<VisitDetailsModel>(this as VisitDetailsModel, _$identity);

  /// Serializes this VisitDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitDetailsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'VisitDetailsModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $VisitDetailsModelCopyWith<$Res>  {
  factory $VisitDetailsModelCopyWith(VisitDetailsModel value, $Res Function(VisitDetailsModel) _then) = _$VisitDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") Payload? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});


$PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class _$VisitDetailsModelCopyWithImpl<$Res>
    implements $VisitDetailsModelCopyWith<$Res> {
  _$VisitDetailsModelCopyWithImpl(this._self, this._then);

  final VisitDetailsModel _self;
  final $Res Function(VisitDetailsModel) _then;

/// Create a copy of VisitDetailsModel
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
/// Create a copy of VisitDetailsModel
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


/// Adds pattern-matching-related methods to [VisitDetailsModel].
extension VisitDetailsModelPatterns on VisitDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _VisitDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _VisitDetailsModel() when $default != null:
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
case _VisitDetailsModel() when $default != null:
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
case _VisitDetailsModel():
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
case _VisitDetailsModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitDetailsModel implements VisitDetailsModel {
  const _VisitDetailsModel({@JsonKey(name: "status") this.status, @JsonKey(name: "code") this.code, @JsonKey(name: "message") this.message, @JsonKey(name: "payload") this.payload, @JsonKey(name: "isSuccess") this.isSuccess});
  factory _VisitDetailsModel.fromJson(Map<String, dynamic> json) => _$VisitDetailsModelFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "code") final  int? code;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "payload") final  Payload? payload;
@override@JsonKey(name: "isSuccess") final  bool? isSuccess;

/// Create a copy of VisitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitDetailsModelCopyWith<_VisitDetailsModel> get copyWith => __$VisitDetailsModelCopyWithImpl<_VisitDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitDetailsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,payload,isSuccess);

@override
String toString() {
  return 'VisitDetailsModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$VisitDetailsModelCopyWith<$Res> implements $VisitDetailsModelCopyWith<$Res> {
  factory _$VisitDetailsModelCopyWith(_VisitDetailsModel value, $Res Function(_VisitDetailsModel) _then) = __$VisitDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "code") int? code,@JsonKey(name: "message") String? message,@JsonKey(name: "payload") Payload? payload,@JsonKey(name: "isSuccess") bool? isSuccess
});


@override $PayloadCopyWith<$Res>? get payload;

}
/// @nodoc
class __$VisitDetailsModelCopyWithImpl<$Res>
    implements _$VisitDetailsModelCopyWith<$Res> {
  __$VisitDetailsModelCopyWithImpl(this._self, this._then);

  final _VisitDetailsModel _self;
  final $Res Function(_VisitDetailsModel) _then;

/// Create a copy of VisitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_VisitDetailsModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Payload?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of VisitDetailsModel
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

@JsonKey(name: "id") int? get id;@JsonKey(name: "distance_between_them") dynamic get distanceBetweenThem;@JsonKey(name: "duration_between_them") dynamic get durationBetweenThem;@JsonKey(name: "service") Service? get service;@JsonKey(name: "rider") Rider? get rider;@JsonKey(name: "chat_channel_id") int? get chatChannelId;@JsonKey(name: "pickup_location") String? get pickupLocation;@JsonKey(name: "arrive_location") String? get arriveLocation;@JsonKey(name: "pickup_lat") String? get pickupLat;@JsonKey(name: "pickup_lng") String? get pickupLng;@JsonKey(name: "arrive_lat") String? get arriveLat;@JsonKey(name: "arrive_lng") String? get arriveLng;@JsonKey(name: "travel_no") int? get travelNo;@JsonKey(name: "your_rate") String? get yourRate;@JsonKey(name: "payment_status") int? get paymentStatus;@JsonKey(name: "arrival_time") String? get arrivalTime;@JsonKey(name: "waiting_time") int? get waitingTime;@JsonKey(name: "waiting_time_fees_amount") String? get waitingTimeFeesAmount;@JsonKey(name: "discount") String? get discount;@JsonKey(name: "driver_profit") String? get driverProfit;@JsonKey(name: "duration") int? get duration;@JsonKey(name: "distance") String? get distance;@JsonKey(name: "suggest_price") String? get suggestPrice;@JsonKey(name: "comission") String? get comission;@JsonKey(name: "amount") String? get amount;@JsonKey(name: "status") Status? get status;@JsonKey(name: "paid_amount") String? get paidAmount;@JsonKey(name: "remaining_amount") String? get remainingAmount;
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayloadCopyWith<Payload> get copyWith => _$PayloadCopyWithImpl<Payload>(this as Payload, _$identity);

  /// Serializes this Payload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payload&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.distanceBetweenThem, distanceBetweenThem)&&const DeepCollectionEquality().equals(other.durationBetweenThem, durationBetweenThem)&&(identical(other.service, service) || other.service == service)&&(identical(other.rider, rider) || other.rider == rider)&&(identical(other.chatChannelId, chatChannelId) || other.chatChannelId == chatChannelId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.arriveLocation, arriveLocation) || other.arriveLocation == arriveLocation)&&(identical(other.pickupLat, pickupLat) || other.pickupLat == pickupLat)&&(identical(other.pickupLng, pickupLng) || other.pickupLng == pickupLng)&&(identical(other.arriveLat, arriveLat) || other.arriveLat == arriveLat)&&(identical(other.arriveLng, arriveLng) || other.arriveLng == arriveLng)&&(identical(other.travelNo, travelNo) || other.travelNo == travelNo)&&(identical(other.yourRate, yourRate) || other.yourRate == yourRate)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.waitingTime, waitingTime) || other.waitingTime == waitingTime)&&(identical(other.waitingTimeFeesAmount, waitingTimeFeesAmount) || other.waitingTimeFeesAmount == waitingTimeFeesAmount)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.driverProfit, driverProfit) || other.driverProfit == driverProfit)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.suggestPrice, suggestPrice) || other.suggestPrice == suggestPrice)&&(identical(other.comission, comission) || other.comission == comission)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,const DeepCollectionEquality().hash(distanceBetweenThem),const DeepCollectionEquality().hash(durationBetweenThem),service,rider,chatChannelId,pickupLocation,arriveLocation,pickupLat,pickupLng,arriveLat,arriveLng,travelNo,yourRate,paymentStatus,arrivalTime,waitingTime,waitingTimeFeesAmount,discount,driverProfit,duration,distance,suggestPrice,comission,amount,status,paidAmount,remainingAmount]);

@override
String toString() {
  return 'Payload(id: $id, distanceBetweenThem: $distanceBetweenThem, durationBetweenThem: $durationBetweenThem, service: $service, rider: $rider, chatChannelId: $chatChannelId, pickupLocation: $pickupLocation, arriveLocation: $arriveLocation, pickupLat: $pickupLat, pickupLng: $pickupLng, arriveLat: $arriveLat, arriveLng: $arriveLng, travelNo: $travelNo, yourRate: $yourRate, paymentStatus: $paymentStatus, arrivalTime: $arrivalTime, waitingTime: $waitingTime, waitingTimeFeesAmount: $waitingTimeFeesAmount, discount: $discount, driverProfit: $driverProfit, duration: $duration, distance: $distance, suggestPrice: $suggestPrice, comission: $comission, amount: $amount, status: $status, paidAmount: $paidAmount, remainingAmount: $remainingAmount)';
}


}

/// @nodoc
abstract mixin class $PayloadCopyWith<$Res>  {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) _then) = _$PayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "distance_between_them") dynamic distanceBetweenThem,@JsonKey(name: "duration_between_them") dynamic durationBetweenThem,@JsonKey(name: "service") Service? service,@JsonKey(name: "rider") Rider? rider,@JsonKey(name: "chat_channel_id") int? chatChannelId,@JsonKey(name: "pickup_location") String? pickupLocation,@JsonKey(name: "arrive_location") String? arriveLocation,@JsonKey(name: "pickup_lat") String? pickupLat,@JsonKey(name: "pickup_lng") String? pickupLng,@JsonKey(name: "arrive_lat") String? arriveLat,@JsonKey(name: "arrive_lng") String? arriveLng,@JsonKey(name: "travel_no") int? travelNo,@JsonKey(name: "your_rate") String? yourRate,@JsonKey(name: "payment_status") int? paymentStatus,@JsonKey(name: "arrival_time") String? arrivalTime,@JsonKey(name: "waiting_time") int? waitingTime,@JsonKey(name: "waiting_time_fees_amount") String? waitingTimeFeesAmount,@JsonKey(name: "discount") String? discount,@JsonKey(name: "driver_profit") String? driverProfit,@JsonKey(name: "duration") int? duration,@JsonKey(name: "distance") String? distance,@JsonKey(name: "suggest_price") String? suggestPrice,@JsonKey(name: "comission") String? comission,@JsonKey(name: "amount") String? amount,@JsonKey(name: "status") Status? status,@JsonKey(name: "paid_amount") String? paidAmount,@JsonKey(name: "remaining_amount") String? remainingAmount
});


$ServiceCopyWith<$Res>? get service;$RiderCopyWith<$Res>? get rider;$StatusCopyWith<$Res>? get status;

}
/// @nodoc
class _$PayloadCopyWithImpl<$Res>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._self, this._then);

  final Payload _self;
  final $Res Function(Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? distanceBetweenThem = freezed,Object? durationBetweenThem = freezed,Object? service = freezed,Object? rider = freezed,Object? chatChannelId = freezed,Object? pickupLocation = freezed,Object? arriveLocation = freezed,Object? pickupLat = freezed,Object? pickupLng = freezed,Object? arriveLat = freezed,Object? arriveLng = freezed,Object? travelNo = freezed,Object? yourRate = freezed,Object? paymentStatus = freezed,Object? arrivalTime = freezed,Object? waitingTime = freezed,Object? waitingTimeFeesAmount = freezed,Object? discount = freezed,Object? driverProfit = freezed,Object? duration = freezed,Object? distance = freezed,Object? suggestPrice = freezed,Object? comission = freezed,Object? amount = freezed,Object? status = freezed,Object? paidAmount = freezed,Object? remainingAmount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,distanceBetweenThem: freezed == distanceBetweenThem ? _self.distanceBetweenThem : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
as dynamic,durationBetweenThem: freezed == durationBetweenThem ? _self.durationBetweenThem : durationBetweenThem // ignore: cast_nullable_to_non_nullable
as dynamic,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,rider: freezed == rider ? _self.rider : rider // ignore: cast_nullable_to_non_nullable
as Rider?,chatChannelId: freezed == chatChannelId ? _self.chatChannelId : chatChannelId // ignore: cast_nullable_to_non_nullable
as int?,pickupLocation: freezed == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String?,arriveLocation: freezed == arriveLocation ? _self.arriveLocation : arriveLocation // ignore: cast_nullable_to_non_nullable
as String?,pickupLat: freezed == pickupLat ? _self.pickupLat : pickupLat // ignore: cast_nullable_to_non_nullable
as String?,pickupLng: freezed == pickupLng ? _self.pickupLng : pickupLng // ignore: cast_nullable_to_non_nullable
as String?,arriveLat: freezed == arriveLat ? _self.arriveLat : arriveLat // ignore: cast_nullable_to_non_nullable
as String?,arriveLng: freezed == arriveLng ? _self.arriveLng : arriveLng // ignore: cast_nullable_to_non_nullable
as String?,travelNo: freezed == travelNo ? _self.travelNo : travelNo // ignore: cast_nullable_to_non_nullable
as int?,yourRate: freezed == yourRate ? _self.yourRate : yourRate // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as int?,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as String?,waitingTime: freezed == waitingTime ? _self.waitingTime : waitingTime // ignore: cast_nullable_to_non_nullable
as int?,waitingTimeFeesAmount: freezed == waitingTimeFeesAmount ? _self.waitingTimeFeesAmount : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,driverProfit: freezed == driverProfit ? _self.driverProfit : driverProfit // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,suggestPrice: freezed == suggestPrice ? _self.suggestPrice : suggestPrice // ignore: cast_nullable_to_non_nullable
as String?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiderCopyWith<$Res>? get rider {
    if (_self.rider == null) {
    return null;
  }

  return $RiderCopyWith<$Res>(_self.rider!, (value) {
    return _then(_self.copyWith(rider: value));
  });
}/// Create a copy of Payload
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "distance_between_them")  dynamic distanceBetweenThem, @JsonKey(name: "duration_between_them")  dynamic durationBetweenThem, @JsonKey(name: "service")  Service? service, @JsonKey(name: "rider")  Rider? rider, @JsonKey(name: "chat_channel_id")  int? chatChannelId, @JsonKey(name: "pickup_location")  String? pickupLocation, @JsonKey(name: "arrive_location")  String? arriveLocation, @JsonKey(name: "pickup_lat")  String? pickupLat, @JsonKey(name: "pickup_lng")  String? pickupLng, @JsonKey(name: "arrive_lat")  String? arriveLat, @JsonKey(name: "arrive_lng")  String? arriveLng, @JsonKey(name: "travel_no")  int? travelNo, @JsonKey(name: "your_rate")  String? yourRate, @JsonKey(name: "payment_status")  int? paymentStatus, @JsonKey(name: "arrival_time")  String? arrivalTime, @JsonKey(name: "waiting_time")  int? waitingTime, @JsonKey(name: "waiting_time_fees_amount")  String? waitingTimeFeesAmount, @JsonKey(name: "discount")  String? discount, @JsonKey(name: "driver_profit")  String? driverProfit, @JsonKey(name: "duration")  int? duration, @JsonKey(name: "distance")  String? distance, @JsonKey(name: "suggest_price")  String? suggestPrice, @JsonKey(name: "comission")  String? comission, @JsonKey(name: "amount")  String? amount, @JsonKey(name: "status")  Status? status, @JsonKey(name: "paid_amount")  String? paidAmount, @JsonKey(name: "remaining_amount")  String? remainingAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.id,_that.distanceBetweenThem,_that.durationBetweenThem,_that.service,_that.rider,_that.chatChannelId,_that.pickupLocation,_that.arriveLocation,_that.pickupLat,_that.pickupLng,_that.arriveLat,_that.arriveLng,_that.travelNo,_that.yourRate,_that.paymentStatus,_that.arrivalTime,_that.waitingTime,_that.waitingTimeFeesAmount,_that.discount,_that.driverProfit,_that.duration,_that.distance,_that.suggestPrice,_that.comission,_that.amount,_that.status,_that.paidAmount,_that.remainingAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "distance_between_them")  dynamic distanceBetweenThem, @JsonKey(name: "duration_between_them")  dynamic durationBetweenThem, @JsonKey(name: "service")  Service? service, @JsonKey(name: "rider")  Rider? rider, @JsonKey(name: "chat_channel_id")  int? chatChannelId, @JsonKey(name: "pickup_location")  String? pickupLocation, @JsonKey(name: "arrive_location")  String? arriveLocation, @JsonKey(name: "pickup_lat")  String? pickupLat, @JsonKey(name: "pickup_lng")  String? pickupLng, @JsonKey(name: "arrive_lat")  String? arriveLat, @JsonKey(name: "arrive_lng")  String? arriveLng, @JsonKey(name: "travel_no")  int? travelNo, @JsonKey(name: "your_rate")  String? yourRate, @JsonKey(name: "payment_status")  int? paymentStatus, @JsonKey(name: "arrival_time")  String? arrivalTime, @JsonKey(name: "waiting_time")  int? waitingTime, @JsonKey(name: "waiting_time_fees_amount")  String? waitingTimeFeesAmount, @JsonKey(name: "discount")  String? discount, @JsonKey(name: "driver_profit")  String? driverProfit, @JsonKey(name: "duration")  int? duration, @JsonKey(name: "distance")  String? distance, @JsonKey(name: "suggest_price")  String? suggestPrice, @JsonKey(name: "comission")  String? comission, @JsonKey(name: "amount")  String? amount, @JsonKey(name: "status")  Status? status, @JsonKey(name: "paid_amount")  String? paidAmount, @JsonKey(name: "remaining_amount")  String? remainingAmount)  $default,) {final _that = this;
switch (_that) {
case _Payload():
return $default(_that.id,_that.distanceBetweenThem,_that.durationBetweenThem,_that.service,_that.rider,_that.chatChannelId,_that.pickupLocation,_that.arriveLocation,_that.pickupLat,_that.pickupLng,_that.arriveLat,_that.arriveLng,_that.travelNo,_that.yourRate,_that.paymentStatus,_that.arrivalTime,_that.waitingTime,_that.waitingTimeFeesAmount,_that.discount,_that.driverProfit,_that.duration,_that.distance,_that.suggestPrice,_that.comission,_that.amount,_that.status,_that.paidAmount,_that.remainingAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "distance_between_them")  dynamic distanceBetweenThem, @JsonKey(name: "duration_between_them")  dynamic durationBetweenThem, @JsonKey(name: "service")  Service? service, @JsonKey(name: "rider")  Rider? rider, @JsonKey(name: "chat_channel_id")  int? chatChannelId, @JsonKey(name: "pickup_location")  String? pickupLocation, @JsonKey(name: "arrive_location")  String? arriveLocation, @JsonKey(name: "pickup_lat")  String? pickupLat, @JsonKey(name: "pickup_lng")  String? pickupLng, @JsonKey(name: "arrive_lat")  String? arriveLat, @JsonKey(name: "arrive_lng")  String? arriveLng, @JsonKey(name: "travel_no")  int? travelNo, @JsonKey(name: "your_rate")  String? yourRate, @JsonKey(name: "payment_status")  int? paymentStatus, @JsonKey(name: "arrival_time")  String? arrivalTime, @JsonKey(name: "waiting_time")  int? waitingTime, @JsonKey(name: "waiting_time_fees_amount")  String? waitingTimeFeesAmount, @JsonKey(name: "discount")  String? discount, @JsonKey(name: "driver_profit")  String? driverProfit, @JsonKey(name: "duration")  int? duration, @JsonKey(name: "distance")  String? distance, @JsonKey(name: "suggest_price")  String? suggestPrice, @JsonKey(name: "comission")  String? comission, @JsonKey(name: "amount")  String? amount, @JsonKey(name: "status")  Status? status, @JsonKey(name: "paid_amount")  String? paidAmount, @JsonKey(name: "remaining_amount")  String? remainingAmount)?  $default,) {final _that = this;
switch (_that) {
case _Payload() when $default != null:
return $default(_that.id,_that.distanceBetweenThem,_that.durationBetweenThem,_that.service,_that.rider,_that.chatChannelId,_that.pickupLocation,_that.arriveLocation,_that.pickupLat,_that.pickupLng,_that.arriveLat,_that.arriveLng,_that.travelNo,_that.yourRate,_that.paymentStatus,_that.arrivalTime,_that.waitingTime,_that.waitingTimeFeesAmount,_that.discount,_that.driverProfit,_that.duration,_that.distance,_that.suggestPrice,_that.comission,_that.amount,_that.status,_that.paidAmount,_that.remainingAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payload implements Payload {
  const _Payload({@JsonKey(name: "id") this.id, @JsonKey(name: "distance_between_them") this.distanceBetweenThem, @JsonKey(name: "duration_between_them") this.durationBetweenThem, @JsonKey(name: "service") this.service, @JsonKey(name: "rider") this.rider, @JsonKey(name: "chat_channel_id") this.chatChannelId, @JsonKey(name: "pickup_location") this.pickupLocation, @JsonKey(name: "arrive_location") this.arriveLocation, @JsonKey(name: "pickup_lat") this.pickupLat, @JsonKey(name: "pickup_lng") this.pickupLng, @JsonKey(name: "arrive_lat") this.arriveLat, @JsonKey(name: "arrive_lng") this.arriveLng, @JsonKey(name: "travel_no") this.travelNo, @JsonKey(name: "your_rate") this.yourRate, @JsonKey(name: "payment_status") this.paymentStatus, @JsonKey(name: "arrival_time") this.arrivalTime, @JsonKey(name: "waiting_time") this.waitingTime, @JsonKey(name: "waiting_time_fees_amount") this.waitingTimeFeesAmount, @JsonKey(name: "discount") this.discount, @JsonKey(name: "driver_profit") this.driverProfit, @JsonKey(name: "duration") this.duration, @JsonKey(name: "distance") this.distance, @JsonKey(name: "suggest_price") this.suggestPrice, @JsonKey(name: "comission") this.comission, @JsonKey(name: "amount") this.amount, @JsonKey(name: "status") this.status, @JsonKey(name: "paid_amount") this.paidAmount, @JsonKey(name: "remaining_amount") this.remainingAmount});
  factory _Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "distance_between_them") final  dynamic distanceBetweenThem;
@override@JsonKey(name: "duration_between_them") final  dynamic durationBetweenThem;
@override@JsonKey(name: "service") final  Service? service;
@override@JsonKey(name: "rider") final  Rider? rider;
@override@JsonKey(name: "chat_channel_id") final  int? chatChannelId;
@override@JsonKey(name: "pickup_location") final  String? pickupLocation;
@override@JsonKey(name: "arrive_location") final  String? arriveLocation;
@override@JsonKey(name: "pickup_lat") final  String? pickupLat;
@override@JsonKey(name: "pickup_lng") final  String? pickupLng;
@override@JsonKey(name: "arrive_lat") final  String? arriveLat;
@override@JsonKey(name: "arrive_lng") final  String? arriveLng;
@override@JsonKey(name: "travel_no") final  int? travelNo;
@override@JsonKey(name: "your_rate") final  String? yourRate;
@override@JsonKey(name: "payment_status") final  int? paymentStatus;
@override@JsonKey(name: "arrival_time") final  String? arrivalTime;
@override@JsonKey(name: "waiting_time") final  int? waitingTime;
@override@JsonKey(name: "waiting_time_fees_amount") final  String? waitingTimeFeesAmount;
@override@JsonKey(name: "discount") final  String? discount;
@override@JsonKey(name: "driver_profit") final  String? driverProfit;
@override@JsonKey(name: "duration") final  int? duration;
@override@JsonKey(name: "distance") final  String? distance;
@override@JsonKey(name: "suggest_price") final  String? suggestPrice;
@override@JsonKey(name: "comission") final  String? comission;
@override@JsonKey(name: "amount") final  String? amount;
@override@JsonKey(name: "status") final  Status? status;
@override@JsonKey(name: "paid_amount") final  String? paidAmount;
@override@JsonKey(name: "remaining_amount") final  String? remainingAmount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payload&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.distanceBetweenThem, distanceBetweenThem)&&const DeepCollectionEquality().equals(other.durationBetweenThem, durationBetweenThem)&&(identical(other.service, service) || other.service == service)&&(identical(other.rider, rider) || other.rider == rider)&&(identical(other.chatChannelId, chatChannelId) || other.chatChannelId == chatChannelId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.arriveLocation, arriveLocation) || other.arriveLocation == arriveLocation)&&(identical(other.pickupLat, pickupLat) || other.pickupLat == pickupLat)&&(identical(other.pickupLng, pickupLng) || other.pickupLng == pickupLng)&&(identical(other.arriveLat, arriveLat) || other.arriveLat == arriveLat)&&(identical(other.arriveLng, arriveLng) || other.arriveLng == arriveLng)&&(identical(other.travelNo, travelNo) || other.travelNo == travelNo)&&(identical(other.yourRate, yourRate) || other.yourRate == yourRate)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.waitingTime, waitingTime) || other.waitingTime == waitingTime)&&(identical(other.waitingTimeFeesAmount, waitingTimeFeesAmount) || other.waitingTimeFeesAmount == waitingTimeFeesAmount)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.driverProfit, driverProfit) || other.driverProfit == driverProfit)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.suggestPrice, suggestPrice) || other.suggestPrice == suggestPrice)&&(identical(other.comission, comission) || other.comission == comission)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,const DeepCollectionEquality().hash(distanceBetweenThem),const DeepCollectionEquality().hash(durationBetweenThem),service,rider,chatChannelId,pickupLocation,arriveLocation,pickupLat,pickupLng,arriveLat,arriveLng,travelNo,yourRate,paymentStatus,arrivalTime,waitingTime,waitingTimeFeesAmount,discount,driverProfit,duration,distance,suggestPrice,comission,amount,status,paidAmount,remainingAmount]);

@override
String toString() {
  return 'Payload(id: $id, distanceBetweenThem: $distanceBetweenThem, durationBetweenThem: $durationBetweenThem, service: $service, rider: $rider, chatChannelId: $chatChannelId, pickupLocation: $pickupLocation, arriveLocation: $arriveLocation, pickupLat: $pickupLat, pickupLng: $pickupLng, arriveLat: $arriveLat, arriveLng: $arriveLng, travelNo: $travelNo, yourRate: $yourRate, paymentStatus: $paymentStatus, arrivalTime: $arrivalTime, waitingTime: $waitingTime, waitingTimeFeesAmount: $waitingTimeFeesAmount, discount: $discount, driverProfit: $driverProfit, duration: $duration, distance: $distance, suggestPrice: $suggestPrice, comission: $comission, amount: $amount, status: $status, paidAmount: $paidAmount, remainingAmount: $remainingAmount)';
}


}

/// @nodoc
abstract mixin class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) _then) = __$PayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "distance_between_them") dynamic distanceBetweenThem,@JsonKey(name: "duration_between_them") dynamic durationBetweenThem,@JsonKey(name: "service") Service? service,@JsonKey(name: "rider") Rider? rider,@JsonKey(name: "chat_channel_id") int? chatChannelId,@JsonKey(name: "pickup_location") String? pickupLocation,@JsonKey(name: "arrive_location") String? arriveLocation,@JsonKey(name: "pickup_lat") String? pickupLat,@JsonKey(name: "pickup_lng") String? pickupLng,@JsonKey(name: "arrive_lat") String? arriveLat,@JsonKey(name: "arrive_lng") String? arriveLng,@JsonKey(name: "travel_no") int? travelNo,@JsonKey(name: "your_rate") String? yourRate,@JsonKey(name: "payment_status") int? paymentStatus,@JsonKey(name: "arrival_time") String? arrivalTime,@JsonKey(name: "waiting_time") int? waitingTime,@JsonKey(name: "waiting_time_fees_amount") String? waitingTimeFeesAmount,@JsonKey(name: "discount") String? discount,@JsonKey(name: "driver_profit") String? driverProfit,@JsonKey(name: "duration") int? duration,@JsonKey(name: "distance") String? distance,@JsonKey(name: "suggest_price") String? suggestPrice,@JsonKey(name: "comission") String? comission,@JsonKey(name: "amount") String? amount,@JsonKey(name: "status") Status? status,@JsonKey(name: "paid_amount") String? paidAmount,@JsonKey(name: "remaining_amount") String? remainingAmount
});


@override $ServiceCopyWith<$Res>? get service;@override $RiderCopyWith<$Res>? get rider;@override $StatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(this._self, this._then);

  final _Payload _self;
  final $Res Function(_Payload) _then;

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? distanceBetweenThem = freezed,Object? durationBetweenThem = freezed,Object? service = freezed,Object? rider = freezed,Object? chatChannelId = freezed,Object? pickupLocation = freezed,Object? arriveLocation = freezed,Object? pickupLat = freezed,Object? pickupLng = freezed,Object? arriveLat = freezed,Object? arriveLng = freezed,Object? travelNo = freezed,Object? yourRate = freezed,Object? paymentStatus = freezed,Object? arrivalTime = freezed,Object? waitingTime = freezed,Object? waitingTimeFeesAmount = freezed,Object? discount = freezed,Object? driverProfit = freezed,Object? duration = freezed,Object? distance = freezed,Object? suggestPrice = freezed,Object? comission = freezed,Object? amount = freezed,Object? status = freezed,Object? paidAmount = freezed,Object? remainingAmount = freezed,}) {
  return _then(_Payload(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,distanceBetweenThem: freezed == distanceBetweenThem ? _self.distanceBetweenThem : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
as dynamic,durationBetweenThem: freezed == durationBetweenThem ? _self.durationBetweenThem : durationBetweenThem // ignore: cast_nullable_to_non_nullable
as dynamic,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,rider: freezed == rider ? _self.rider : rider // ignore: cast_nullable_to_non_nullable
as Rider?,chatChannelId: freezed == chatChannelId ? _self.chatChannelId : chatChannelId // ignore: cast_nullable_to_non_nullable
as int?,pickupLocation: freezed == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String?,arriveLocation: freezed == arriveLocation ? _self.arriveLocation : arriveLocation // ignore: cast_nullable_to_non_nullable
as String?,pickupLat: freezed == pickupLat ? _self.pickupLat : pickupLat // ignore: cast_nullable_to_non_nullable
as String?,pickupLng: freezed == pickupLng ? _self.pickupLng : pickupLng // ignore: cast_nullable_to_non_nullable
as String?,arriveLat: freezed == arriveLat ? _self.arriveLat : arriveLat // ignore: cast_nullable_to_non_nullable
as String?,arriveLng: freezed == arriveLng ? _self.arriveLng : arriveLng // ignore: cast_nullable_to_non_nullable
as String?,travelNo: freezed == travelNo ? _self.travelNo : travelNo // ignore: cast_nullable_to_non_nullable
as int?,yourRate: freezed == yourRate ? _self.yourRate : yourRate // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as int?,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as String?,waitingTime: freezed == waitingTime ? _self.waitingTime : waitingTime // ignore: cast_nullable_to_non_nullable
as int?,waitingTimeFeesAmount: freezed == waitingTimeFeesAmount ? _self.waitingTimeFeesAmount : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,driverProfit: freezed == driverProfit ? _self.driverProfit : driverProfit // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,suggestPrice: freezed == suggestPrice ? _self.suggestPrice : suggestPrice // ignore: cast_nullable_to_non_nullable
as String?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of Payload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiderCopyWith<$Res>? get rider {
    if (_self.rider == null) {
    return null;
  }

  return $RiderCopyWith<$Res>(_self.rider!, (value) {
    return _then(_self.copyWith(rider: value));
  });
}/// Create a copy of Payload
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
mixin _$Service {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "image") String? get image;
/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCopyWith<Service> get copyWith => _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Service&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'Service(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res>  {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) = _$ServiceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image
});




}
/// @nodoc
class _$ServiceCopyWithImpl<$Res>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Service].
extension ServicePatterns on Service {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Service value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Service() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Service value)  $default,){
final _that = this;
switch (_that) {
case _Service():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Service value)?  $default,){
final _that = this;
switch (_that) {
case _Service() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)  $default,) {final _that = this;
switch (_that) {
case _Service():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)?  $default,) {final _that = this;
switch (_that) {
case _Service() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Service implements Service {
  const _Service({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "image") this.image});
  factory _Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "image") final  String? image;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceCopyWith<_Service> get copyWith => __$ServiceCopyWithImpl<_Service>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Service&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'Service(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) = __$ServiceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image
});




}
/// @nodoc
class __$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_Service(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
