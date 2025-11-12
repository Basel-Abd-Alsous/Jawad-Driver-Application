// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_requist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelRequistModel _$TravelRequistModelFromJson(Map<String, dynamic> json) {
  return _TravelRequistModel.fromJson(json);
}

/// @nodoc
mixin _$TravelRequistModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  List<TravelRequest>? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelRequistModelCopyWith<TravelRequistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelRequistModelCopyWith<$Res> {
  factory $TravelRequistModelCopyWith(
          TravelRequistModel value, $Res Function(TravelRequistModel) then) =
      _$TravelRequistModelCopyWithImpl<$Res, TravelRequistModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') List<TravelRequest>? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});
}

/// @nodoc
class _$TravelRequistModelCopyWithImpl<$Res, $Val extends TravelRequistModel>
    implements $TravelRequistModelCopyWith<$Res> {
  _$TravelRequistModelCopyWithImpl(this._value, this._then);

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
              as List<TravelRequest>?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelRequistModelImplCopyWith<$Res>
    implements $TravelRequistModelCopyWith<$Res> {
  factory _$$TravelRequistModelImplCopyWith(_$TravelRequistModelImpl value,
          $Res Function(_$TravelRequistModelImpl) then) =
      __$$TravelRequistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payload') List<TravelRequest>? payload,
      @JsonKey(name: 'isSuccess') bool? isSuccess});
}

/// @nodoc
class __$$TravelRequistModelImplCopyWithImpl<$Res>
    extends _$TravelRequistModelCopyWithImpl<$Res, _$TravelRequistModelImpl>
    implements _$$TravelRequistModelImplCopyWith<$Res> {
  __$$TravelRequistModelImplCopyWithImpl(_$TravelRequistModelImpl _value,
      $Res Function(_$TravelRequistModelImpl) _then)
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
    return _then(_$TravelRequistModelImpl(
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
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<TravelRequest>?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelRequistModelImpl implements _TravelRequistModel {
  const _$TravelRequistModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'payload') final List<TravelRequest>? payload,
      @JsonKey(name: 'isSuccess') this.isSuccess})
      : _payload = payload;

  factory _$TravelRequistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelRequistModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<TravelRequest>? _payload;
  @override
  @JsonKey(name: 'payload')
  List<TravelRequest>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;

  @override
  String toString() {
    return 'TravelRequistModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelRequistModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_payload), isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelRequistModelImplCopyWith<_$TravelRequistModelImpl> get copyWith =>
      __$$TravelRequistModelImplCopyWithImpl<_$TravelRequistModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelRequistModelImplToJson(
      this,
    );
  }
}

abstract class _TravelRequistModel implements TravelRequistModel {
  const factory _TravelRequistModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'payload') final List<TravelRequest>? payload,
          @JsonKey(name: 'isSuccess') final bool? isSuccess}) =
      _$TravelRequistModelImpl;

  factory _TravelRequistModel.fromJson(Map<String, dynamic> json) =
      _$TravelRequistModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'payload')
  List<TravelRequest>? get payload;
  @override
  @JsonKey(name: 'isSuccess')
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$TravelRequistModelImplCopyWith<_$TravelRequistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelRequest _$TravelRequestFromJson(Map<String, dynamic> json) {
  return _TravelRequest.fromJson(json);
}

/// @nodoc
mixin _$TravelRequest {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider')
  Rider? get rider => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'service')
  Service? get service => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance')
  String? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'comission')
  String? get comission => throw _privateConstructorUsedError;
  @JsonKey(name: 'travel_no')
  int? get travelNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrive_lat')
  String? get arriveLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrive_lng')
  String? get arriveLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_lat')
  String? get pickupLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_lng')
  String? get pickupLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_amount')
  dynamic get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_time')
  dynamic get arrivalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_time')
  int? get waitingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "your_rate")
  String? get yourRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_profit')
  String? get driverProfit => throw _privateConstructorUsedError;
  @JsonKey(name: 'suggest_price')
  String? get suggestPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  int? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrive_location')
  String? get arriveLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_channel_id')
  int? get chatChannelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_location')
  String? get pickupLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_amount')
  String? get remainingAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_between_them')
  int? get distanceBetweenThem => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_between_them')
  int? get durationBetweenThem => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_time_fees_amount')
  String? get waitingTimeFeesAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelRequestCopyWith<TravelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelRequestCopyWith<$Res> {
  factory $TravelRequestCopyWith(
          TravelRequest value, $Res Function(TravelRequest) then) =
      _$TravelRequestCopyWithImpl<$Res, TravelRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'rider') Rider? rider,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'status') Status? status,
      @JsonKey(name: 'service') Service? service,
      @JsonKey(name: 'discount') String? discount,
      @JsonKey(name: 'distance') String? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'comission') String? comission,
      @JsonKey(name: 'travel_no') int? travelNo,
      @JsonKey(name: 'arrive_lat') String? arriveLat,
      @JsonKey(name: 'arrive_lng') String? arriveLng,
      @JsonKey(name: 'pickup_lat') String? pickupLat,
      @JsonKey(name: 'pickup_lng') String? pickupLng,
      @JsonKey(name: 'paid_amount') dynamic paidAmount,
      @JsonKey(name: 'arrival_time') dynamic arrivalTime,
      @JsonKey(name: 'waiting_time') int? waitingTime,
      @JsonKey(name: "your_rate") String? yourRate,
      @JsonKey(name: 'driver_profit') String? driverProfit,
      @JsonKey(name: 'suggest_price') String? suggestPrice,
      @JsonKey(name: 'payment_status') int? paymentStatus,
      @JsonKey(name: 'arrive_location') String? arriveLocation,
      @JsonKey(name: 'chat_channel_id') int? chatChannelId,
      @JsonKey(name: 'pickup_location') String? pickupLocation,
      @JsonKey(name: 'remaining_amount') String? remainingAmount,
      @JsonKey(name: 'distance_between_them') int? distanceBetweenThem,
      @JsonKey(name: 'duration_between_them') int? durationBetweenThem,
      @JsonKey(name: 'waiting_time_fees_amount')
      String? waitingTimeFeesAmount});

  $RiderCopyWith<$Res>? get rider;
  $StatusCopyWith<$Res>? get status;
  $ServiceCopyWith<$Res>? get service;
}

/// @nodoc
class _$TravelRequestCopyWithImpl<$Res, $Val extends TravelRequest>
    implements $TravelRequestCopyWith<$Res> {
  _$TravelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rider = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? service = freezed,
    Object? discount = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? comission = freezed,
    Object? travelNo = freezed,
    Object? arriveLat = freezed,
    Object? arriveLng = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? paidAmount = freezed,
    Object? arrivalTime = freezed,
    Object? waitingTime = freezed,
    Object? yourRate = freezed,
    Object? driverProfit = freezed,
    Object? suggestPrice = freezed,
    Object? paymentStatus = freezed,
    Object? arriveLocation = freezed,
    Object? chatChannelId = freezed,
    Object? pickupLocation = freezed,
    Object? remainingAmount = freezed,
    Object? distanceBetweenThem = freezed,
    Object? durationBetweenThem = freezed,
    Object? waitingTimeFeesAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rider: freezed == rider
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      comission: freezed == comission
          ? _value.comission
          : comission // ignore: cast_nullable_to_non_nullable
              as String?,
      travelNo: freezed == travelNo
          ? _value.travelNo
          : travelNo // ignore: cast_nullable_to_non_nullable
              as int?,
      arriveLat: freezed == arriveLat
          ? _value.arriveLat
          : arriveLat // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLng: freezed == arriveLng
          ? _value.arriveLng
          : arriveLng // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLat: freezed == pickupLat
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLng: freezed == pickupLng
          ? _value.pickupLng
          : pickupLng // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      yourRate: freezed == yourRate
          ? _value.yourRate
          : yourRate // ignore: cast_nullable_to_non_nullable
              as String?,
      driverProfit: freezed == driverProfit
          ? _value.driverProfit
          : driverProfit // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestPrice: freezed == suggestPrice
          ? _value.suggestPrice
          : suggestPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      arriveLocation: freezed == arriveLocation
          ? _value.arriveLocation
          : arriveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      chatChannelId: freezed == chatChannelId
          ? _value.chatChannelId
          : chatChannelId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceBetweenThem: freezed == distanceBetweenThem
          ? _value.distanceBetweenThem
          : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
              as int?,
      durationBetweenThem: freezed == durationBetweenThem
          ? _value.durationBetweenThem
          : durationBetweenThem // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimeFeesAmount: freezed == waitingTimeFeesAmount
          ? _value.waitingTimeFeesAmount
          : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RiderCopyWith<$Res>? get rider {
    if (_value.rider == null) {
      return null;
    }

    return $RiderCopyWith<$Res>(_value.rider!, (value) {
      return _then(_value.copyWith(rider: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelRequestImplCopyWith<$Res>
    implements $TravelRequestCopyWith<$Res> {
  factory _$$TravelRequestImplCopyWith(
          _$TravelRequestImpl value, $Res Function(_$TravelRequestImpl) then) =
      __$$TravelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'rider') Rider? rider,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'status') Status? status,
      @JsonKey(name: 'service') Service? service,
      @JsonKey(name: 'discount') String? discount,
      @JsonKey(name: 'distance') String? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'comission') String? comission,
      @JsonKey(name: 'travel_no') int? travelNo,
      @JsonKey(name: 'arrive_lat') String? arriveLat,
      @JsonKey(name: 'arrive_lng') String? arriveLng,
      @JsonKey(name: 'pickup_lat') String? pickupLat,
      @JsonKey(name: 'pickup_lng') String? pickupLng,
      @JsonKey(name: 'paid_amount') dynamic paidAmount,
      @JsonKey(name: 'arrival_time') dynamic arrivalTime,
      @JsonKey(name: 'waiting_time') int? waitingTime,
      @JsonKey(name: "your_rate") String? yourRate,
      @JsonKey(name: 'driver_profit') String? driverProfit,
      @JsonKey(name: 'suggest_price') String? suggestPrice,
      @JsonKey(name: 'payment_status') int? paymentStatus,
      @JsonKey(name: 'arrive_location') String? arriveLocation,
      @JsonKey(name: 'chat_channel_id') int? chatChannelId,
      @JsonKey(name: 'pickup_location') String? pickupLocation,
      @JsonKey(name: 'remaining_amount') String? remainingAmount,
      @JsonKey(name: 'distance_between_them') int? distanceBetweenThem,
      @JsonKey(name: 'duration_between_them') int? durationBetweenThem,
      @JsonKey(name: 'waiting_time_fees_amount')
      String? waitingTimeFeesAmount});

  @override
  $RiderCopyWith<$Res>? get rider;
  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $ServiceCopyWith<$Res>? get service;
}

/// @nodoc
class __$$TravelRequestImplCopyWithImpl<$Res>
    extends _$TravelRequestCopyWithImpl<$Res, _$TravelRequestImpl>
    implements _$$TravelRequestImplCopyWith<$Res> {
  __$$TravelRequestImplCopyWithImpl(
      _$TravelRequestImpl _value, $Res Function(_$TravelRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rider = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? service = freezed,
    Object? discount = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? comission = freezed,
    Object? travelNo = freezed,
    Object? arriveLat = freezed,
    Object? arriveLng = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? paidAmount = freezed,
    Object? arrivalTime = freezed,
    Object? waitingTime = freezed,
    Object? yourRate = freezed,
    Object? driverProfit = freezed,
    Object? suggestPrice = freezed,
    Object? paymentStatus = freezed,
    Object? arriveLocation = freezed,
    Object? chatChannelId = freezed,
    Object? pickupLocation = freezed,
    Object? remainingAmount = freezed,
    Object? distanceBetweenThem = freezed,
    Object? durationBetweenThem = freezed,
    Object? waitingTimeFeesAmount = freezed,
  }) {
    return _then(_$TravelRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rider: freezed == rider
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      comission: freezed == comission
          ? _value.comission
          : comission // ignore: cast_nullable_to_non_nullable
              as String?,
      travelNo: freezed == travelNo
          ? _value.travelNo
          : travelNo // ignore: cast_nullable_to_non_nullable
              as int?,
      arriveLat: freezed == arriveLat
          ? _value.arriveLat
          : arriveLat // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLng: freezed == arriveLng
          ? _value.arriveLng
          : arriveLng // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLat: freezed == pickupLat
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLng: freezed == pickupLng
          ? _value.pickupLng
          : pickupLng // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      yourRate: freezed == yourRate
          ? _value.yourRate
          : yourRate // ignore: cast_nullable_to_non_nullable
              as String?,
      driverProfit: freezed == driverProfit
          ? _value.driverProfit
          : driverProfit // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestPrice: freezed == suggestPrice
          ? _value.suggestPrice
          : suggestPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      arriveLocation: freezed == arriveLocation
          ? _value.arriveLocation
          : arriveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      chatChannelId: freezed == chatChannelId
          ? _value.chatChannelId
          : chatChannelId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceBetweenThem: freezed == distanceBetweenThem
          ? _value.distanceBetweenThem
          : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
              as int?,
      durationBetweenThem: freezed == durationBetweenThem
          ? _value.durationBetweenThem
          : durationBetweenThem // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimeFeesAmount: freezed == waitingTimeFeesAmount
          ? _value.waitingTimeFeesAmount
          : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelRequestImpl implements _TravelRequest {
  const _$TravelRequestImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'rider') this.rider,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'service') this.service,
      @JsonKey(name: 'discount') this.discount,
      @JsonKey(name: 'distance') this.distance,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'comission') this.comission,
      @JsonKey(name: 'travel_no') this.travelNo,
      @JsonKey(name: 'arrive_lat') this.arriveLat,
      @JsonKey(name: 'arrive_lng') this.arriveLng,
      @JsonKey(name: 'pickup_lat') this.pickupLat,
      @JsonKey(name: 'pickup_lng') this.pickupLng,
      @JsonKey(name: 'paid_amount') this.paidAmount,
      @JsonKey(name: 'arrival_time') this.arrivalTime,
      @JsonKey(name: 'waiting_time') this.waitingTime,
      @JsonKey(name: "your_rate") this.yourRate,
      @JsonKey(name: 'driver_profit') this.driverProfit,
      @JsonKey(name: 'suggest_price') this.suggestPrice,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'arrive_location') this.arriveLocation,
      @JsonKey(name: 'chat_channel_id') this.chatChannelId,
      @JsonKey(name: 'pickup_location') this.pickupLocation,
      @JsonKey(name: 'remaining_amount') this.remainingAmount,
      @JsonKey(name: 'distance_between_them') this.distanceBetweenThem,
      @JsonKey(name: 'duration_between_them') this.durationBetweenThem,
      @JsonKey(name: 'waiting_time_fees_amount') this.waitingTimeFeesAmount});

  factory _$TravelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelRequestImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'rider')
  final Rider? rider;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'status')
  final Status? status;
  @override
  @JsonKey(name: 'service')
  final Service? service;
  @override
  @JsonKey(name: 'discount')
  final String? discount;
  @override
  @JsonKey(name: 'distance')
  final String? distance;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'comission')
  final String? comission;
  @override
  @JsonKey(name: 'travel_no')
  final int? travelNo;
  @override
  @JsonKey(name: 'arrive_lat')
  final String? arriveLat;
  @override
  @JsonKey(name: 'arrive_lng')
  final String? arriveLng;
  @override
  @JsonKey(name: 'pickup_lat')
  final String? pickupLat;
  @override
  @JsonKey(name: 'pickup_lng')
  final String? pickupLng;
  @override
  @JsonKey(name: 'paid_amount')
  final dynamic paidAmount;
  @override
  @JsonKey(name: 'arrival_time')
  final dynamic arrivalTime;
  @override
  @JsonKey(name: 'waiting_time')
  final int? waitingTime;
  @override
  @JsonKey(name: "your_rate")
  final String? yourRate;
  @override
  @JsonKey(name: 'driver_profit')
  final String? driverProfit;
  @override
  @JsonKey(name: 'suggest_price')
  final String? suggestPrice;
  @override
  @JsonKey(name: 'payment_status')
  final int? paymentStatus;
  @override
  @JsonKey(name: 'arrive_location')
  final String? arriveLocation;
  @override
  @JsonKey(name: 'chat_channel_id')
  final int? chatChannelId;
  @override
  @JsonKey(name: 'pickup_location')
  final String? pickupLocation;
  @override
  @JsonKey(name: 'remaining_amount')
  final String? remainingAmount;
  @override
  @JsonKey(name: 'distance_between_them')
  final int? distanceBetweenThem;
  @override
  @JsonKey(name: 'duration_between_them')
  final int? durationBetweenThem;
  @override
  @JsonKey(name: 'waiting_time_fees_amount')
  final String? waitingTimeFeesAmount;

  @override
  String toString() {
    return 'TravelRequest(id: $id, rider: $rider, amount: $amount, status: $status, service: $service, discount: $discount, distance: $distance, duration: $duration, comission: $comission, travelNo: $travelNo, arriveLat: $arriveLat, arriveLng: $arriveLng, pickupLat: $pickupLat, pickupLng: $pickupLng, paidAmount: $paidAmount, arrivalTime: $arrivalTime, waitingTime: $waitingTime, yourRate: $yourRate, driverProfit: $driverProfit, suggestPrice: $suggestPrice, paymentStatus: $paymentStatus, arriveLocation: $arriveLocation, chatChannelId: $chatChannelId, pickupLocation: $pickupLocation, remainingAmount: $remainingAmount, distanceBetweenThem: $distanceBetweenThem, durationBetweenThem: $durationBetweenThem, waitingTimeFeesAmount: $waitingTimeFeesAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rider, rider) || other.rider == rider) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.comission, comission) ||
                other.comission == comission) &&
            (identical(other.travelNo, travelNo) ||
                other.travelNo == travelNo) &&
            (identical(other.arriveLat, arriveLat) ||
                other.arriveLat == arriveLat) &&
            (identical(other.arriveLng, arriveLng) ||
                other.arriveLng == arriveLng) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            const DeepCollectionEquality()
                .equals(other.paidAmount, paidAmount) &&
            const DeepCollectionEquality()
                .equals(other.arrivalTime, arrivalTime) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime) &&
            (identical(other.yourRate, yourRate) ||
                other.yourRate == yourRate) &&
            (identical(other.driverProfit, driverProfit) ||
                other.driverProfit == driverProfit) &&
            (identical(other.suggestPrice, suggestPrice) ||
                other.suggestPrice == suggestPrice) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.arriveLocation, arriveLocation) ||
                other.arriveLocation == arriveLocation) &&
            (identical(other.chatChannelId, chatChannelId) ||
                other.chatChannelId == chatChannelId) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.distanceBetweenThem, distanceBetweenThem) ||
                other.distanceBetweenThem == distanceBetweenThem) &&
            (identical(other.durationBetweenThem, durationBetweenThem) ||
                other.durationBetweenThem == durationBetweenThem) &&
            (identical(other.waitingTimeFeesAmount, waitingTimeFeesAmount) ||
                other.waitingTimeFeesAmount == waitingTimeFeesAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        rider,
        amount,
        status,
        service,
        discount,
        distance,
        duration,
        comission,
        travelNo,
        arriveLat,
        arriveLng,
        pickupLat,
        pickupLng,
        const DeepCollectionEquality().hash(paidAmount),
        const DeepCollectionEquality().hash(arrivalTime),
        waitingTime,
        yourRate,
        driverProfit,
        suggestPrice,
        paymentStatus,
        arriveLocation,
        chatChannelId,
        pickupLocation,
        remainingAmount,
        distanceBetweenThem,
        durationBetweenThem,
        waitingTimeFeesAmount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelRequestImplCopyWith<_$TravelRequestImpl> get copyWith =>
      __$$TravelRequestImplCopyWithImpl<_$TravelRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelRequestImplToJson(
      this,
    );
  }
}

abstract class _TravelRequest implements TravelRequest {
  const factory _TravelRequest(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'rider') final Rider? rider,
      @JsonKey(name: 'amount') final String? amount,
      @JsonKey(name: 'status') final Status? status,
      @JsonKey(name: 'service') final Service? service,
      @JsonKey(name: 'discount') final String? discount,
      @JsonKey(name: 'distance') final String? distance,
      @JsonKey(name: 'duration') final int? duration,
      @JsonKey(name: 'comission') final String? comission,
      @JsonKey(name: 'travel_no') final int? travelNo,
      @JsonKey(name: 'arrive_lat') final String? arriveLat,
      @JsonKey(name: 'arrive_lng') final String? arriveLng,
      @JsonKey(name: 'pickup_lat') final String? pickupLat,
      @JsonKey(name: 'pickup_lng') final String? pickupLng,
      @JsonKey(name: 'paid_amount') final dynamic paidAmount,
      @JsonKey(name: 'arrival_time') final dynamic arrivalTime,
      @JsonKey(name: 'waiting_time') final int? waitingTime,
      @JsonKey(name: "your_rate") final String? yourRate,
      @JsonKey(name: 'driver_profit') final String? driverProfit,
      @JsonKey(name: 'suggest_price') final String? suggestPrice,
      @JsonKey(name: 'payment_status') final int? paymentStatus,
      @JsonKey(name: 'arrive_location') final String? arriveLocation,
      @JsonKey(name: 'chat_channel_id') final int? chatChannelId,
      @JsonKey(name: 'pickup_location') final String? pickupLocation,
      @JsonKey(name: 'remaining_amount') final String? remainingAmount,
      @JsonKey(name: 'distance_between_them') final int? distanceBetweenThem,
      @JsonKey(name: 'duration_between_them') final int? durationBetweenThem,
      @JsonKey(name: 'waiting_time_fees_amount')
      final String? waitingTimeFeesAmount}) = _$TravelRequestImpl;

  factory _TravelRequest.fromJson(Map<String, dynamic> json) =
      _$TravelRequestImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'rider')
  Rider? get rider;
  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'status')
  Status? get status;
  @override
  @JsonKey(name: 'service')
  Service? get service;
  @override
  @JsonKey(name: 'discount')
  String? get discount;
  @override
  @JsonKey(name: 'distance')
  String? get distance;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'comission')
  String? get comission;
  @override
  @JsonKey(name: 'travel_no')
  int? get travelNo;
  @override
  @JsonKey(name: 'arrive_lat')
  String? get arriveLat;
  @override
  @JsonKey(name: 'arrive_lng')
  String? get arriveLng;
  @override
  @JsonKey(name: 'pickup_lat')
  String? get pickupLat;
  @override
  @JsonKey(name: 'pickup_lng')
  String? get pickupLng;
  @override
  @JsonKey(name: 'paid_amount')
  dynamic get paidAmount;
  @override
  @JsonKey(name: 'arrival_time')
  dynamic get arrivalTime;
  @override
  @JsonKey(name: 'waiting_time')
  int? get waitingTime;
  @override
  @JsonKey(name: "your_rate")
  String? get yourRate;
  @override
  @JsonKey(name: 'driver_profit')
  String? get driverProfit;
  @override
  @JsonKey(name: 'suggest_price')
  String? get suggestPrice;
  @override
  @JsonKey(name: 'payment_status')
  int? get paymentStatus;
  @override
  @JsonKey(name: 'arrive_location')
  String? get arriveLocation;
  @override
  @JsonKey(name: 'chat_channel_id')
  int? get chatChannelId;
  @override
  @JsonKey(name: 'pickup_location')
  String? get pickupLocation;
  @override
  @JsonKey(name: 'remaining_amount')
  String? get remainingAmount;
  @override
  @JsonKey(name: 'distance_between_them')
  int? get distanceBetweenThem;
  @override
  @JsonKey(name: 'duration_between_them')
  int? get durationBetweenThem;
  @override
  @JsonKey(name: 'waiting_time_fees_amount')
  String? get waitingTimeFeesAmount;
  @override
  @JsonKey(ignore: true)
  _$$TravelRequestImplCopyWith<_$TravelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rider _$RiderFromJson(Map<String, dynamic> json) {
  return _Rider.fromJson(json);
}

/// @nodoc
mixin _$Rider {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_rated_travels')
  int? get numberOfRatedTravels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiderCopyWith<Rider> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderCopyWith<$Res> {
  factory $RiderCopyWith(Rider value, $Res Function(Rider) then) =
      _$RiderCopyWithImpl<$Res, Rider>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'number_of_rated_travels') int? numberOfRatedTravels});
}

/// @nodoc
class _$RiderCopyWithImpl<$Res, $Val extends Rider>
    implements $RiderCopyWith<$Res> {
  _$RiderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? profileImage = freezed,
    Object? numberOfRatedTravels = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfRatedTravels: freezed == numberOfRatedTravels
          ? _value.numberOfRatedTravels
          : numberOfRatedTravels // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiderImplCopyWith<$Res> implements $RiderCopyWith<$Res> {
  factory _$$RiderImplCopyWith(
          _$RiderImpl value, $Res Function(_$RiderImpl) then) =
      __$$RiderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'number_of_rated_travels') int? numberOfRatedTravels});
}

/// @nodoc
class __$$RiderImplCopyWithImpl<$Res>
    extends _$RiderCopyWithImpl<$Res, _$RiderImpl>
    implements _$$RiderImplCopyWith<$Res> {
  __$$RiderImplCopyWithImpl(
      _$RiderImpl _value, $Res Function(_$RiderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? profileImage = freezed,
    Object? numberOfRatedTravels = freezed,
  }) {
    return _then(_$RiderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfRatedTravels: freezed == numberOfRatedTravels
          ? _value.numberOfRatedTravels
          : numberOfRatedTravels // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiderImpl implements _Rider {
  const _$RiderImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'number_of_rated_travels') this.numberOfRatedTravels});

  factory _$RiderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiderImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'number_of_rated_travels')
  final int? numberOfRatedTravels;

  @override
  String toString() {
    return 'Rider(id: $id, name: $name, phone: $phone, rating: $rating, profileImage: $profileImage, numberOfRatedTravels: $numberOfRatedTravels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.numberOfRatedTravels, numberOfRatedTravels) ||
                other.numberOfRatedTravels == numberOfRatedTravels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phone, rating, profileImage, numberOfRatedTravels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderImplCopyWith<_$RiderImpl> get copyWith =>
      __$$RiderImplCopyWithImpl<_$RiderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiderImplToJson(
      this,
    );
  }
}

abstract class _Rider implements Rider {
  const factory _Rider(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'rating') final int? rating,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'number_of_rated_travels')
      final int? numberOfRatedTravels}) = _$RiderImpl;

  factory _Rider.fromJson(Map<String, dynamic> json) = _$RiderImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'number_of_rated_travels')
  int? get numberOfRatedTravels;
  @override
  @JsonKey(ignore: true)
  _$$RiderImplCopyWith<_$RiderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ServiceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl implements _Service {
  const _$ServiceImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image});

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'Service(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(
      this,
    );
  }
}

abstract class _Service implements Service {
  const factory _Service(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'image') final String? image}) = _$ServiceImpl;

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? value = freezed,
  }) {
    return _then(_$StatusImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'value') this.value});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'color')
  final String? color;
  @override
  @JsonKey(name: 'value')
  final String? value;

  @override
  String toString() {
    return 'Status(name: $name, color: $color, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'color') final String? color,
      @JsonKey(name: 'value') final String? value}) = _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'color')
  String? get color;
  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
