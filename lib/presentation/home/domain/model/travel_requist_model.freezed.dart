// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_requist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelRequistModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'code') int? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payload') List<TravelRequest>? get payload;@JsonKey(name: 'isSuccess') bool? get isSuccess;
/// Create a copy of TravelRequistModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelRequistModelCopyWith<TravelRequistModel> get copyWith => _$TravelRequistModelCopyWithImpl<TravelRequistModel>(this as TravelRequistModel, _$identity);

  /// Serializes this TravelRequistModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelRequistModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(payload),isSuccess);

@override
String toString() {
  return 'TravelRequistModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $TravelRequistModelCopyWith<$Res>  {
  factory $TravelRequistModelCopyWith(TravelRequistModel value, $Res Function(TravelRequistModel) _then) = _$TravelRequistModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') List<TravelRequest>? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});




}
/// @nodoc
class _$TravelRequistModelCopyWithImpl<$Res>
    implements $TravelRequistModelCopyWith<$Res> {
  _$TravelRequistModelCopyWithImpl(this._self, this._then);

  final TravelRequistModel _self;
  final $Res Function(TravelRequistModel) _then;

/// Create a copy of TravelRequistModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TravelRequest>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelRequistModel].
extension TravelRequistModelPatterns on TravelRequistModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelRequistModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelRequistModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelRequistModel value)  $default,){
final _that = this;
switch (_that) {
case _TravelRequistModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelRequistModel value)?  $default,){
final _that = this;
switch (_that) {
case _TravelRequistModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  List<TravelRequest>? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelRequistModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  List<TravelRequest>? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)  $default,) {final _that = this;
switch (_that) {
case _TravelRequistModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'code')  int? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payload')  List<TravelRequest>? payload, @JsonKey(name: 'isSuccess')  bool? isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _TravelRequistModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.payload,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelRequistModel implements TravelRequistModel {
  const _TravelRequistModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payload') final  List<TravelRequest>? payload, @JsonKey(name: 'isSuccess') this.isSuccess}): _payload = payload;
  factory _TravelRequistModel.fromJson(Map<String, dynamic> json) => _$TravelRequistModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'code') final  int? code;
@override@JsonKey(name: 'message') final  String? message;
 final  List<TravelRequest>? _payload;
@override@JsonKey(name: 'payload') List<TravelRequest>? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableListView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'isSuccess') final  bool? isSuccess;

/// Create a copy of TravelRequistModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelRequistModelCopyWith<_TravelRequistModel> get copyWith => __$TravelRequistModelCopyWithImpl<_TravelRequistModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelRequistModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelRequistModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._payload, _payload)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_payload),isSuccess);

@override
String toString() {
  return 'TravelRequistModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$TravelRequistModelCopyWith<$Res> implements $TravelRequistModelCopyWith<$Res> {
  factory _$TravelRequistModelCopyWith(_TravelRequistModel value, $Res Function(_TravelRequistModel) _then) = __$TravelRequistModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'code') int? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payload') List<TravelRequest>? payload,@JsonKey(name: 'isSuccess') bool? isSuccess
});




}
/// @nodoc
class __$TravelRequistModelCopyWithImpl<$Res>
    implements _$TravelRequistModelCopyWith<$Res> {
  __$TravelRequistModelCopyWithImpl(this._self, this._then);

  final _TravelRequistModel _self;
  final $Res Function(_TravelRequistModel) _then;

/// Create a copy of TravelRequistModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,Object? payload = freezed,Object? isSuccess = freezed,}) {
  return _then(_TravelRequistModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as List<TravelRequest>?,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$TravelRequest {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'rider') Rider? get rider;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'status') Status? get status;@JsonKey(name: 'service') Service? get service;@JsonKey(name: 'discount') String? get discount;@JsonKey(name: 'distance') String? get distance;@JsonKey(name: 'duration') int? get duration;@JsonKey(name: 'comission') String? get comission;@JsonKey(name: 'travel_no') int? get travelNo;@JsonKey(name: 'arrive_lat') String? get arriveLat;@JsonKey(name: 'arrive_lng') String? get arriveLng;@JsonKey(name: 'pickup_lat') String? get pickupLat;@JsonKey(name: 'pickup_lng') String? get pickupLng;@JsonKey(name: 'paid_amount') dynamic get paidAmount;@JsonKey(name: 'arrival_time') dynamic get arrivalTime;@JsonKey(name: 'waiting_time') int? get waitingTime;@JsonKey(name: "your_rate") String? get yourRate;@JsonKey(name: 'driver_profit') String? get driverProfit;@JsonKey(name: 'suggest_price') String? get suggestPrice;@JsonKey(name: 'payment_status') int? get paymentStatus;@JsonKey(name: 'arrive_location') String? get arriveLocation;@JsonKey(name: 'chat_channel_id') int? get chatChannelId;@JsonKey(name: 'pickup_location') String? get pickupLocation;@JsonKey(name: 'remaining_amount') String? get remainingAmount;@JsonKey(name: 'distance_between_them') int? get distanceBetweenThem;@JsonKey(name: 'duration_between_them') int? get durationBetweenThem;@JsonKey(name: 'waiting_time_fees_amount') String? get waitingTimeFeesAmount;@JsonKey(name: 'rider_debt_paid') String? get riderDebtPaid;@JsonKey(name: 'charge_client_wallet') String? get chargeClientWallet;
/// Create a copy of TravelRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelRequestCopyWith<TravelRequest> get copyWith => _$TravelRequestCopyWithImpl<TravelRequest>(this as TravelRequest, _$identity);

  /// Serializes this TravelRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.rider, rider) || other.rider == rider)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.service, service) || other.service == service)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.comission, comission) || other.comission == comission)&&(identical(other.travelNo, travelNo) || other.travelNo == travelNo)&&(identical(other.arriveLat, arriveLat) || other.arriveLat == arriveLat)&&(identical(other.arriveLng, arriveLng) || other.arriveLng == arriveLng)&&(identical(other.pickupLat, pickupLat) || other.pickupLat == pickupLat)&&(identical(other.pickupLng, pickupLng) || other.pickupLng == pickupLng)&&const DeepCollectionEquality().equals(other.paidAmount, paidAmount)&&const DeepCollectionEquality().equals(other.arrivalTime, arrivalTime)&&(identical(other.waitingTime, waitingTime) || other.waitingTime == waitingTime)&&(identical(other.yourRate, yourRate) || other.yourRate == yourRate)&&(identical(other.driverProfit, driverProfit) || other.driverProfit == driverProfit)&&(identical(other.suggestPrice, suggestPrice) || other.suggestPrice == suggestPrice)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.arriveLocation, arriveLocation) || other.arriveLocation == arriveLocation)&&(identical(other.chatChannelId, chatChannelId) || other.chatChannelId == chatChannelId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount)&&(identical(other.distanceBetweenThem, distanceBetweenThem) || other.distanceBetweenThem == distanceBetweenThem)&&(identical(other.durationBetweenThem, durationBetweenThem) || other.durationBetweenThem == durationBetweenThem)&&(identical(other.waitingTimeFeesAmount, waitingTimeFeesAmount) || other.waitingTimeFeesAmount == waitingTimeFeesAmount)&&(identical(other.riderDebtPaid, riderDebtPaid) || other.riderDebtPaid == riderDebtPaid)&&(identical(other.chargeClientWallet, chargeClientWallet) || other.chargeClientWallet == chargeClientWallet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,rider,amount,status,service,discount,distance,duration,comission,travelNo,arriveLat,arriveLng,pickupLat,pickupLng,const DeepCollectionEquality().hash(paidAmount),const DeepCollectionEquality().hash(arrivalTime),waitingTime,yourRate,driverProfit,suggestPrice,paymentStatus,arriveLocation,chatChannelId,pickupLocation,remainingAmount,distanceBetweenThem,durationBetweenThem,waitingTimeFeesAmount,riderDebtPaid,chargeClientWallet]);

@override
String toString() {
  return 'TravelRequest(id: $id, rider: $rider, amount: $amount, status: $status, service: $service, discount: $discount, distance: $distance, duration: $duration, comission: $comission, travelNo: $travelNo, arriveLat: $arriveLat, arriveLng: $arriveLng, pickupLat: $pickupLat, pickupLng: $pickupLng, paidAmount: $paidAmount, arrivalTime: $arrivalTime, waitingTime: $waitingTime, yourRate: $yourRate, driverProfit: $driverProfit, suggestPrice: $suggestPrice, paymentStatus: $paymentStatus, arriveLocation: $arriveLocation, chatChannelId: $chatChannelId, pickupLocation: $pickupLocation, remainingAmount: $remainingAmount, distanceBetweenThem: $distanceBetweenThem, durationBetweenThem: $durationBetweenThem, waitingTimeFeesAmount: $waitingTimeFeesAmount, riderDebtPaid: $riderDebtPaid, chargeClientWallet: $chargeClientWallet)';
}


}

/// @nodoc
abstract mixin class $TravelRequestCopyWith<$Res>  {
  factory $TravelRequestCopyWith(TravelRequest value, $Res Function(TravelRequest) _then) = _$TravelRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'rider') Rider? rider,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'status') Status? status,@JsonKey(name: 'service') Service? service,@JsonKey(name: 'discount') String? discount,@JsonKey(name: 'distance') String? distance,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'comission') String? comission,@JsonKey(name: 'travel_no') int? travelNo,@JsonKey(name: 'arrive_lat') String? arriveLat,@JsonKey(name: 'arrive_lng') String? arriveLng,@JsonKey(name: 'pickup_lat') String? pickupLat,@JsonKey(name: 'pickup_lng') String? pickupLng,@JsonKey(name: 'paid_amount') dynamic paidAmount,@JsonKey(name: 'arrival_time') dynamic arrivalTime,@JsonKey(name: 'waiting_time') int? waitingTime,@JsonKey(name: "your_rate") String? yourRate,@JsonKey(name: 'driver_profit') String? driverProfit,@JsonKey(name: 'suggest_price') String? suggestPrice,@JsonKey(name: 'payment_status') int? paymentStatus,@JsonKey(name: 'arrive_location') String? arriveLocation,@JsonKey(name: 'chat_channel_id') int? chatChannelId,@JsonKey(name: 'pickup_location') String? pickupLocation,@JsonKey(name: 'remaining_amount') String? remainingAmount,@JsonKey(name: 'distance_between_them') int? distanceBetweenThem,@JsonKey(name: 'duration_between_them') int? durationBetweenThem,@JsonKey(name: 'waiting_time_fees_amount') String? waitingTimeFeesAmount,@JsonKey(name: 'rider_debt_paid') String? riderDebtPaid,@JsonKey(name: 'charge_client_wallet') String? chargeClientWallet
});


$RiderCopyWith<$Res>? get rider;$StatusCopyWith<$Res>? get status;$ServiceCopyWith<$Res>? get service;

}
/// @nodoc
class _$TravelRequestCopyWithImpl<$Res>
    implements $TravelRequestCopyWith<$Res> {
  _$TravelRequestCopyWithImpl(this._self, this._then);

  final TravelRequest _self;
  final $Res Function(TravelRequest) _then;

/// Create a copy of TravelRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? rider = freezed,Object? amount = freezed,Object? status = freezed,Object? service = freezed,Object? discount = freezed,Object? distance = freezed,Object? duration = freezed,Object? comission = freezed,Object? travelNo = freezed,Object? arriveLat = freezed,Object? arriveLng = freezed,Object? pickupLat = freezed,Object? pickupLng = freezed,Object? paidAmount = freezed,Object? arrivalTime = freezed,Object? waitingTime = freezed,Object? yourRate = freezed,Object? driverProfit = freezed,Object? suggestPrice = freezed,Object? paymentStatus = freezed,Object? arriveLocation = freezed,Object? chatChannelId = freezed,Object? pickupLocation = freezed,Object? remainingAmount = freezed,Object? distanceBetweenThem = freezed,Object? durationBetweenThem = freezed,Object? waitingTimeFeesAmount = freezed,Object? riderDebtPaid = freezed,Object? chargeClientWallet = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,rider: freezed == rider ? _self.rider : rider // ignore: cast_nullable_to_non_nullable
as Rider?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as String?,travelNo: freezed == travelNo ? _self.travelNo : travelNo // ignore: cast_nullable_to_non_nullable
as int?,arriveLat: freezed == arriveLat ? _self.arriveLat : arriveLat // ignore: cast_nullable_to_non_nullable
as String?,arriveLng: freezed == arriveLng ? _self.arriveLng : arriveLng // ignore: cast_nullable_to_non_nullable
as String?,pickupLat: freezed == pickupLat ? _self.pickupLat : pickupLat // ignore: cast_nullable_to_non_nullable
as String?,pickupLng: freezed == pickupLng ? _self.pickupLng : pickupLng // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as dynamic,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as dynamic,waitingTime: freezed == waitingTime ? _self.waitingTime : waitingTime // ignore: cast_nullable_to_non_nullable
as int?,yourRate: freezed == yourRate ? _self.yourRate : yourRate // ignore: cast_nullable_to_non_nullable
as String?,driverProfit: freezed == driverProfit ? _self.driverProfit : driverProfit // ignore: cast_nullable_to_non_nullable
as String?,suggestPrice: freezed == suggestPrice ? _self.suggestPrice : suggestPrice // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as int?,arriveLocation: freezed == arriveLocation ? _self.arriveLocation : arriveLocation // ignore: cast_nullable_to_non_nullable
as String?,chatChannelId: freezed == chatChannelId ? _self.chatChannelId : chatChannelId // ignore: cast_nullable_to_non_nullable
as int?,pickupLocation: freezed == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as String?,distanceBetweenThem: freezed == distanceBetweenThem ? _self.distanceBetweenThem : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
as int?,durationBetweenThem: freezed == durationBetweenThem ? _self.durationBetweenThem : durationBetweenThem // ignore: cast_nullable_to_non_nullable
as int?,waitingTimeFeesAmount: freezed == waitingTimeFeesAmount ? _self.waitingTimeFeesAmount : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
as String?,riderDebtPaid: freezed == riderDebtPaid ? _self.riderDebtPaid : riderDebtPaid // ignore: cast_nullable_to_non_nullable
as String?,chargeClientWallet: freezed == chargeClientWallet ? _self.chargeClientWallet : chargeClientWallet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TravelRequest
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
}/// Create a copy of TravelRequest
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
}/// Create a copy of TravelRequest
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
}
}


/// Adds pattern-matching-related methods to [TravelRequest].
extension TravelRequestPatterns on TravelRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelRequest value)  $default,){
final _that = this;
switch (_that) {
case _TravelRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TravelRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'rider')  Rider? rider, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'status')  Status? status, @JsonKey(name: 'service')  Service? service, @JsonKey(name: 'discount')  String? discount, @JsonKey(name: 'distance')  String? distance, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'comission')  String? comission, @JsonKey(name: 'travel_no')  int? travelNo, @JsonKey(name: 'arrive_lat')  String? arriveLat, @JsonKey(name: 'arrive_lng')  String? arriveLng, @JsonKey(name: 'pickup_lat')  String? pickupLat, @JsonKey(name: 'pickup_lng')  String? pickupLng, @JsonKey(name: 'paid_amount')  dynamic paidAmount, @JsonKey(name: 'arrival_time')  dynamic arrivalTime, @JsonKey(name: 'waiting_time')  int? waitingTime, @JsonKey(name: "your_rate")  String? yourRate, @JsonKey(name: 'driver_profit')  String? driverProfit, @JsonKey(name: 'suggest_price')  String? suggestPrice, @JsonKey(name: 'payment_status')  int? paymentStatus, @JsonKey(name: 'arrive_location')  String? arriveLocation, @JsonKey(name: 'chat_channel_id')  int? chatChannelId, @JsonKey(name: 'pickup_location')  String? pickupLocation, @JsonKey(name: 'remaining_amount')  String? remainingAmount, @JsonKey(name: 'distance_between_them')  int? distanceBetweenThem, @JsonKey(name: 'duration_between_them')  int? durationBetweenThem, @JsonKey(name: 'waiting_time_fees_amount')  String? waitingTimeFeesAmount, @JsonKey(name: 'rider_debt_paid')  String? riderDebtPaid, @JsonKey(name: 'charge_client_wallet')  String? chargeClientWallet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelRequest() when $default != null:
return $default(_that.id,_that.rider,_that.amount,_that.status,_that.service,_that.discount,_that.distance,_that.duration,_that.comission,_that.travelNo,_that.arriveLat,_that.arriveLng,_that.pickupLat,_that.pickupLng,_that.paidAmount,_that.arrivalTime,_that.waitingTime,_that.yourRate,_that.driverProfit,_that.suggestPrice,_that.paymentStatus,_that.arriveLocation,_that.chatChannelId,_that.pickupLocation,_that.remainingAmount,_that.distanceBetweenThem,_that.durationBetweenThem,_that.waitingTimeFeesAmount,_that.riderDebtPaid,_that.chargeClientWallet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'rider')  Rider? rider, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'status')  Status? status, @JsonKey(name: 'service')  Service? service, @JsonKey(name: 'discount')  String? discount, @JsonKey(name: 'distance')  String? distance, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'comission')  String? comission, @JsonKey(name: 'travel_no')  int? travelNo, @JsonKey(name: 'arrive_lat')  String? arriveLat, @JsonKey(name: 'arrive_lng')  String? arriveLng, @JsonKey(name: 'pickup_lat')  String? pickupLat, @JsonKey(name: 'pickup_lng')  String? pickupLng, @JsonKey(name: 'paid_amount')  dynamic paidAmount, @JsonKey(name: 'arrival_time')  dynamic arrivalTime, @JsonKey(name: 'waiting_time')  int? waitingTime, @JsonKey(name: "your_rate")  String? yourRate, @JsonKey(name: 'driver_profit')  String? driverProfit, @JsonKey(name: 'suggest_price')  String? suggestPrice, @JsonKey(name: 'payment_status')  int? paymentStatus, @JsonKey(name: 'arrive_location')  String? arriveLocation, @JsonKey(name: 'chat_channel_id')  int? chatChannelId, @JsonKey(name: 'pickup_location')  String? pickupLocation, @JsonKey(name: 'remaining_amount')  String? remainingAmount, @JsonKey(name: 'distance_between_them')  int? distanceBetweenThem, @JsonKey(name: 'duration_between_them')  int? durationBetweenThem, @JsonKey(name: 'waiting_time_fees_amount')  String? waitingTimeFeesAmount, @JsonKey(name: 'rider_debt_paid')  String? riderDebtPaid, @JsonKey(name: 'charge_client_wallet')  String? chargeClientWallet)  $default,) {final _that = this;
switch (_that) {
case _TravelRequest():
return $default(_that.id,_that.rider,_that.amount,_that.status,_that.service,_that.discount,_that.distance,_that.duration,_that.comission,_that.travelNo,_that.arriveLat,_that.arriveLng,_that.pickupLat,_that.pickupLng,_that.paidAmount,_that.arrivalTime,_that.waitingTime,_that.yourRate,_that.driverProfit,_that.suggestPrice,_that.paymentStatus,_that.arriveLocation,_that.chatChannelId,_that.pickupLocation,_that.remainingAmount,_that.distanceBetweenThem,_that.durationBetweenThem,_that.waitingTimeFeesAmount,_that.riderDebtPaid,_that.chargeClientWallet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'rider')  Rider? rider, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'status')  Status? status, @JsonKey(name: 'service')  Service? service, @JsonKey(name: 'discount')  String? discount, @JsonKey(name: 'distance')  String? distance, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'comission')  String? comission, @JsonKey(name: 'travel_no')  int? travelNo, @JsonKey(name: 'arrive_lat')  String? arriveLat, @JsonKey(name: 'arrive_lng')  String? arriveLng, @JsonKey(name: 'pickup_lat')  String? pickupLat, @JsonKey(name: 'pickup_lng')  String? pickupLng, @JsonKey(name: 'paid_amount')  dynamic paidAmount, @JsonKey(name: 'arrival_time')  dynamic arrivalTime, @JsonKey(name: 'waiting_time')  int? waitingTime, @JsonKey(name: "your_rate")  String? yourRate, @JsonKey(name: 'driver_profit')  String? driverProfit, @JsonKey(name: 'suggest_price')  String? suggestPrice, @JsonKey(name: 'payment_status')  int? paymentStatus, @JsonKey(name: 'arrive_location')  String? arriveLocation, @JsonKey(name: 'chat_channel_id')  int? chatChannelId, @JsonKey(name: 'pickup_location')  String? pickupLocation, @JsonKey(name: 'remaining_amount')  String? remainingAmount, @JsonKey(name: 'distance_between_them')  int? distanceBetweenThem, @JsonKey(name: 'duration_between_them')  int? durationBetweenThem, @JsonKey(name: 'waiting_time_fees_amount')  String? waitingTimeFeesAmount, @JsonKey(name: 'rider_debt_paid')  String? riderDebtPaid, @JsonKey(name: 'charge_client_wallet')  String? chargeClientWallet)?  $default,) {final _that = this;
switch (_that) {
case _TravelRequest() when $default != null:
return $default(_that.id,_that.rider,_that.amount,_that.status,_that.service,_that.discount,_that.distance,_that.duration,_that.comission,_that.travelNo,_that.arriveLat,_that.arriveLng,_that.pickupLat,_that.pickupLng,_that.paidAmount,_that.arrivalTime,_that.waitingTime,_that.yourRate,_that.driverProfit,_that.suggestPrice,_that.paymentStatus,_that.arriveLocation,_that.chatChannelId,_that.pickupLocation,_that.remainingAmount,_that.distanceBetweenThem,_that.durationBetweenThem,_that.waitingTimeFeesAmount,_that.riderDebtPaid,_that.chargeClientWallet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelRequest implements TravelRequest {
  const _TravelRequest({@JsonKey(name: 'id') this.id, @JsonKey(name: 'rider') this.rider, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'status') this.status, @JsonKey(name: 'service') this.service, @JsonKey(name: 'discount') this.discount, @JsonKey(name: 'distance') this.distance, @JsonKey(name: 'duration') this.duration, @JsonKey(name: 'comission') this.comission, @JsonKey(name: 'travel_no') this.travelNo, @JsonKey(name: 'arrive_lat') this.arriveLat, @JsonKey(name: 'arrive_lng') this.arriveLng, @JsonKey(name: 'pickup_lat') this.pickupLat, @JsonKey(name: 'pickup_lng') this.pickupLng, @JsonKey(name: 'paid_amount') this.paidAmount, @JsonKey(name: 'arrival_time') this.arrivalTime, @JsonKey(name: 'waiting_time') this.waitingTime, @JsonKey(name: "your_rate") this.yourRate, @JsonKey(name: 'driver_profit') this.driverProfit, @JsonKey(name: 'suggest_price') this.suggestPrice, @JsonKey(name: 'payment_status') this.paymentStatus, @JsonKey(name: 'arrive_location') this.arriveLocation, @JsonKey(name: 'chat_channel_id') this.chatChannelId, @JsonKey(name: 'pickup_location') this.pickupLocation, @JsonKey(name: 'remaining_amount') this.remainingAmount, @JsonKey(name: 'distance_between_them') this.distanceBetweenThem, @JsonKey(name: 'duration_between_them') this.durationBetweenThem, @JsonKey(name: 'waiting_time_fees_amount') this.waitingTimeFeesAmount, @JsonKey(name: 'rider_debt_paid') this.riderDebtPaid, @JsonKey(name: 'charge_client_wallet') this.chargeClientWallet});
  factory _TravelRequest.fromJson(Map<String, dynamic> json) => _$TravelRequestFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'rider') final  Rider? rider;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'status') final  Status? status;
@override@JsonKey(name: 'service') final  Service? service;
@override@JsonKey(name: 'discount') final  String? discount;
@override@JsonKey(name: 'distance') final  String? distance;
@override@JsonKey(name: 'duration') final  int? duration;
@override@JsonKey(name: 'comission') final  String? comission;
@override@JsonKey(name: 'travel_no') final  int? travelNo;
@override@JsonKey(name: 'arrive_lat') final  String? arriveLat;
@override@JsonKey(name: 'arrive_lng') final  String? arriveLng;
@override@JsonKey(name: 'pickup_lat') final  String? pickupLat;
@override@JsonKey(name: 'pickup_lng') final  String? pickupLng;
@override@JsonKey(name: 'paid_amount') final  dynamic paidAmount;
@override@JsonKey(name: 'arrival_time') final  dynamic arrivalTime;
@override@JsonKey(name: 'waiting_time') final  int? waitingTime;
@override@JsonKey(name: "your_rate") final  String? yourRate;
@override@JsonKey(name: 'driver_profit') final  String? driverProfit;
@override@JsonKey(name: 'suggest_price') final  String? suggestPrice;
@override@JsonKey(name: 'payment_status') final  int? paymentStatus;
@override@JsonKey(name: 'arrive_location') final  String? arriveLocation;
@override@JsonKey(name: 'chat_channel_id') final  int? chatChannelId;
@override@JsonKey(name: 'pickup_location') final  String? pickupLocation;
@override@JsonKey(name: 'remaining_amount') final  String? remainingAmount;
@override@JsonKey(name: 'distance_between_them') final  int? distanceBetweenThem;
@override@JsonKey(name: 'duration_between_them') final  int? durationBetweenThem;
@override@JsonKey(name: 'waiting_time_fees_amount') final  String? waitingTimeFeesAmount;
@override@JsonKey(name: 'rider_debt_paid') final  String? riderDebtPaid;
@override@JsonKey(name: 'charge_client_wallet') final  String? chargeClientWallet;

/// Create a copy of TravelRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelRequestCopyWith<_TravelRequest> get copyWith => __$TravelRequestCopyWithImpl<_TravelRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.rider, rider) || other.rider == rider)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.service, service) || other.service == service)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.comission, comission) || other.comission == comission)&&(identical(other.travelNo, travelNo) || other.travelNo == travelNo)&&(identical(other.arriveLat, arriveLat) || other.arriveLat == arriveLat)&&(identical(other.arriveLng, arriveLng) || other.arriveLng == arriveLng)&&(identical(other.pickupLat, pickupLat) || other.pickupLat == pickupLat)&&(identical(other.pickupLng, pickupLng) || other.pickupLng == pickupLng)&&const DeepCollectionEquality().equals(other.paidAmount, paidAmount)&&const DeepCollectionEquality().equals(other.arrivalTime, arrivalTime)&&(identical(other.waitingTime, waitingTime) || other.waitingTime == waitingTime)&&(identical(other.yourRate, yourRate) || other.yourRate == yourRate)&&(identical(other.driverProfit, driverProfit) || other.driverProfit == driverProfit)&&(identical(other.suggestPrice, suggestPrice) || other.suggestPrice == suggestPrice)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.arriveLocation, arriveLocation) || other.arriveLocation == arriveLocation)&&(identical(other.chatChannelId, chatChannelId) || other.chatChannelId == chatChannelId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount)&&(identical(other.distanceBetweenThem, distanceBetweenThem) || other.distanceBetweenThem == distanceBetweenThem)&&(identical(other.durationBetweenThem, durationBetweenThem) || other.durationBetweenThem == durationBetweenThem)&&(identical(other.waitingTimeFeesAmount, waitingTimeFeesAmount) || other.waitingTimeFeesAmount == waitingTimeFeesAmount)&&(identical(other.riderDebtPaid, riderDebtPaid) || other.riderDebtPaid == riderDebtPaid)&&(identical(other.chargeClientWallet, chargeClientWallet) || other.chargeClientWallet == chargeClientWallet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,rider,amount,status,service,discount,distance,duration,comission,travelNo,arriveLat,arriveLng,pickupLat,pickupLng,const DeepCollectionEquality().hash(paidAmount),const DeepCollectionEquality().hash(arrivalTime),waitingTime,yourRate,driverProfit,suggestPrice,paymentStatus,arriveLocation,chatChannelId,pickupLocation,remainingAmount,distanceBetweenThem,durationBetweenThem,waitingTimeFeesAmount,riderDebtPaid,chargeClientWallet]);

@override
String toString() {
  return 'TravelRequest(id: $id, rider: $rider, amount: $amount, status: $status, service: $service, discount: $discount, distance: $distance, duration: $duration, comission: $comission, travelNo: $travelNo, arriveLat: $arriveLat, arriveLng: $arriveLng, pickupLat: $pickupLat, pickupLng: $pickupLng, paidAmount: $paidAmount, arrivalTime: $arrivalTime, waitingTime: $waitingTime, yourRate: $yourRate, driverProfit: $driverProfit, suggestPrice: $suggestPrice, paymentStatus: $paymentStatus, arriveLocation: $arriveLocation, chatChannelId: $chatChannelId, pickupLocation: $pickupLocation, remainingAmount: $remainingAmount, distanceBetweenThem: $distanceBetweenThem, durationBetweenThem: $durationBetweenThem, waitingTimeFeesAmount: $waitingTimeFeesAmount, riderDebtPaid: $riderDebtPaid, chargeClientWallet: $chargeClientWallet)';
}


}

/// @nodoc
abstract mixin class _$TravelRequestCopyWith<$Res> implements $TravelRequestCopyWith<$Res> {
  factory _$TravelRequestCopyWith(_TravelRequest value, $Res Function(_TravelRequest) _then) = __$TravelRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'rider') Rider? rider,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'status') Status? status,@JsonKey(name: 'service') Service? service,@JsonKey(name: 'discount') String? discount,@JsonKey(name: 'distance') String? distance,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'comission') String? comission,@JsonKey(name: 'travel_no') int? travelNo,@JsonKey(name: 'arrive_lat') String? arriveLat,@JsonKey(name: 'arrive_lng') String? arriveLng,@JsonKey(name: 'pickup_lat') String? pickupLat,@JsonKey(name: 'pickup_lng') String? pickupLng,@JsonKey(name: 'paid_amount') dynamic paidAmount,@JsonKey(name: 'arrival_time') dynamic arrivalTime,@JsonKey(name: 'waiting_time') int? waitingTime,@JsonKey(name: "your_rate") String? yourRate,@JsonKey(name: 'driver_profit') String? driverProfit,@JsonKey(name: 'suggest_price') String? suggestPrice,@JsonKey(name: 'payment_status') int? paymentStatus,@JsonKey(name: 'arrive_location') String? arriveLocation,@JsonKey(name: 'chat_channel_id') int? chatChannelId,@JsonKey(name: 'pickup_location') String? pickupLocation,@JsonKey(name: 'remaining_amount') String? remainingAmount,@JsonKey(name: 'distance_between_them') int? distanceBetweenThem,@JsonKey(name: 'duration_between_them') int? durationBetweenThem,@JsonKey(name: 'waiting_time_fees_amount') String? waitingTimeFeesAmount,@JsonKey(name: 'rider_debt_paid') String? riderDebtPaid,@JsonKey(name: 'charge_client_wallet') String? chargeClientWallet
});


@override $RiderCopyWith<$Res>? get rider;@override $StatusCopyWith<$Res>? get status;@override $ServiceCopyWith<$Res>? get service;

}
/// @nodoc
class __$TravelRequestCopyWithImpl<$Res>
    implements _$TravelRequestCopyWith<$Res> {
  __$TravelRequestCopyWithImpl(this._self, this._then);

  final _TravelRequest _self;
  final $Res Function(_TravelRequest) _then;

/// Create a copy of TravelRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? rider = freezed,Object? amount = freezed,Object? status = freezed,Object? service = freezed,Object? discount = freezed,Object? distance = freezed,Object? duration = freezed,Object? comission = freezed,Object? travelNo = freezed,Object? arriveLat = freezed,Object? arriveLng = freezed,Object? pickupLat = freezed,Object? pickupLng = freezed,Object? paidAmount = freezed,Object? arrivalTime = freezed,Object? waitingTime = freezed,Object? yourRate = freezed,Object? driverProfit = freezed,Object? suggestPrice = freezed,Object? paymentStatus = freezed,Object? arriveLocation = freezed,Object? chatChannelId = freezed,Object? pickupLocation = freezed,Object? remainingAmount = freezed,Object? distanceBetweenThem = freezed,Object? durationBetweenThem = freezed,Object? waitingTimeFeesAmount = freezed,Object? riderDebtPaid = freezed,Object? chargeClientWallet = freezed,}) {
  return _then(_TravelRequest(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,rider: freezed == rider ? _self.rider : rider // ignore: cast_nullable_to_non_nullable
as Rider?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,comission: freezed == comission ? _self.comission : comission // ignore: cast_nullable_to_non_nullable
as String?,travelNo: freezed == travelNo ? _self.travelNo : travelNo // ignore: cast_nullable_to_non_nullable
as int?,arriveLat: freezed == arriveLat ? _self.arriveLat : arriveLat // ignore: cast_nullable_to_non_nullable
as String?,arriveLng: freezed == arriveLng ? _self.arriveLng : arriveLng // ignore: cast_nullable_to_non_nullable
as String?,pickupLat: freezed == pickupLat ? _self.pickupLat : pickupLat // ignore: cast_nullable_to_non_nullable
as String?,pickupLng: freezed == pickupLng ? _self.pickupLng : pickupLng // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as dynamic,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as dynamic,waitingTime: freezed == waitingTime ? _self.waitingTime : waitingTime // ignore: cast_nullable_to_non_nullable
as int?,yourRate: freezed == yourRate ? _self.yourRate : yourRate // ignore: cast_nullable_to_non_nullable
as String?,driverProfit: freezed == driverProfit ? _self.driverProfit : driverProfit // ignore: cast_nullable_to_non_nullable
as String?,suggestPrice: freezed == suggestPrice ? _self.suggestPrice : suggestPrice // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as int?,arriveLocation: freezed == arriveLocation ? _self.arriveLocation : arriveLocation // ignore: cast_nullable_to_non_nullable
as String?,chatChannelId: freezed == chatChannelId ? _self.chatChannelId : chatChannelId // ignore: cast_nullable_to_non_nullable
as int?,pickupLocation: freezed == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as String?,distanceBetweenThem: freezed == distanceBetweenThem ? _self.distanceBetweenThem : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
as int?,durationBetweenThem: freezed == durationBetweenThem ? _self.durationBetweenThem : durationBetweenThem // ignore: cast_nullable_to_non_nullable
as int?,waitingTimeFeesAmount: freezed == waitingTimeFeesAmount ? _self.waitingTimeFeesAmount : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
as String?,riderDebtPaid: freezed == riderDebtPaid ? _self.riderDebtPaid : riderDebtPaid // ignore: cast_nullable_to_non_nullable
as String?,chargeClientWallet: freezed == chargeClientWallet ? _self.chargeClientWallet : chargeClientWallet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TravelRequest
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
}/// Create a copy of TravelRequest
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
}/// Create a copy of TravelRequest
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
}
}


/// @nodoc
mixin _$Rider {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'rating') int? get rating;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'number_of_rated_travels') int? get numberOfRatedTravels;
/// Create a copy of Rider
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiderCopyWith<Rider> get copyWith => _$RiderCopyWithImpl<Rider>(this as Rider, _$identity);

  /// Serializes this Rider to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rider&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.numberOfRatedTravels, numberOfRatedTravels) || other.numberOfRatedTravels == numberOfRatedTravels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,rating,profileImage,numberOfRatedTravels);

@override
String toString() {
  return 'Rider(id: $id, name: $name, phone: $phone, rating: $rating, profileImage: $profileImage, numberOfRatedTravels: $numberOfRatedTravels)';
}


}

/// @nodoc
abstract mixin class $RiderCopyWith<$Res>  {
  factory $RiderCopyWith(Rider value, $Res Function(Rider) _then) = _$RiderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'rating') int? rating,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'number_of_rated_travels') int? numberOfRatedTravels
});




}
/// @nodoc
class _$RiderCopyWithImpl<$Res>
    implements $RiderCopyWith<$Res> {
  _$RiderCopyWithImpl(this._self, this._then);

  final Rider _self;
  final $Res Function(Rider) _then;

/// Create a copy of Rider
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? rating = freezed,Object? profileImage = freezed,Object? numberOfRatedTravels = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,numberOfRatedTravels: freezed == numberOfRatedTravels ? _self.numberOfRatedTravels : numberOfRatedTravels // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Rider].
extension RiderPatterns on Rider {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rider value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rider() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rider value)  $default,){
final _that = this;
switch (_that) {
case _Rider():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rider value)?  $default,){
final _that = this;
switch (_that) {
case _Rider() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'rating')  int? rating, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'number_of_rated_travels')  int? numberOfRatedTravels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rider() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.rating,_that.profileImage,_that.numberOfRatedTravels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'rating')  int? rating, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'number_of_rated_travels')  int? numberOfRatedTravels)  $default,) {final _that = this;
switch (_that) {
case _Rider():
return $default(_that.id,_that.name,_that.phone,_that.rating,_that.profileImage,_that.numberOfRatedTravels);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'rating')  int? rating, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'number_of_rated_travels')  int? numberOfRatedTravels)?  $default,) {final _that = this;
switch (_that) {
case _Rider() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.rating,_that.profileImage,_that.numberOfRatedTravels);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rider implements Rider {
  const _Rider({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'rating') this.rating, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'number_of_rated_travels') this.numberOfRatedTravels});
  factory _Rider.fromJson(Map<String, dynamic> json) => _$RiderFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'rating') final  int? rating;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'number_of_rated_travels') final  int? numberOfRatedTravels;

/// Create a copy of Rider
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiderCopyWith<_Rider> get copyWith => __$RiderCopyWithImpl<_Rider>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rider&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.numberOfRatedTravels, numberOfRatedTravels) || other.numberOfRatedTravels == numberOfRatedTravels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,rating,profileImage,numberOfRatedTravels);

@override
String toString() {
  return 'Rider(id: $id, name: $name, phone: $phone, rating: $rating, profileImage: $profileImage, numberOfRatedTravels: $numberOfRatedTravels)';
}


}

/// @nodoc
abstract mixin class _$RiderCopyWith<$Res> implements $RiderCopyWith<$Res> {
  factory _$RiderCopyWith(_Rider value, $Res Function(_Rider) _then) = __$RiderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'rating') int? rating,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'number_of_rated_travels') int? numberOfRatedTravels
});




}
/// @nodoc
class __$RiderCopyWithImpl<$Res>
    implements _$RiderCopyWith<$Res> {
  __$RiderCopyWithImpl(this._self, this._then);

  final _Rider _self;
  final $Res Function(_Rider) _then;

/// Create a copy of Rider
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? rating = freezed,Object? profileImage = freezed,Object? numberOfRatedTravels = freezed,}) {
  return _then(_Rider(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,numberOfRatedTravels: freezed == numberOfRatedTravels ? _self.numberOfRatedTravels : numberOfRatedTravels // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Service {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'image') String? get image;
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
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)?  $default,) {final _that = this;
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
  const _Service({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'image') this.image});
  factory _Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'image') final  String? image;

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
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image
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


/// @nodoc
mixin _$Status {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'value') String? get value;
/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusCopyWith<Status> get copyWith => _$StatusCopyWithImpl<Status>(this as Status, _$identity);

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Status&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,color,value);

@override
String toString() {
  return 'Status(name: $name, color: $color, value: $value)';
}


}

/// @nodoc
abstract mixin class $StatusCopyWith<$Res>  {
  factory $StatusCopyWith(Status value, $Res Function(Status) _then) = _$StatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'color') String? color,@JsonKey(name: 'value') String? value
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? color = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'value')  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.name,_that.color,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'value')  String? value)  $default,) {final _that = this;
switch (_that) {
case _Status():
return $default(_that.name,_that.color,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'value')  String? value)?  $default,) {final _that = this;
switch (_that) {
case _Status() when $default != null:
return $default(_that.name,_that.color,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Status implements Status {
  const _Status({@JsonKey(name: 'name') this.name, @JsonKey(name: 'color') this.color, @JsonKey(name: 'value') this.value});
  factory _Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'value') final  String? value;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Status&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,color,value);

@override
String toString() {
  return 'Status(name: $name, color: $color, value: $value)';
}


}

/// @nodoc
abstract mixin class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) _then) = __$StatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'color') String? color,@JsonKey(name: 'value') String? value
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? color = freezed,Object? value = freezed,}) {
  return _then(_Status(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
