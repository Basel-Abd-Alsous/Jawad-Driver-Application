// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisitModel _$VisitModelFromJson(Map<String, dynamic> json) {
  return _VisitModel.fromJson(json);
}

/// @nodoc
mixin _$VisitModel {
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
  $VisitModelCopyWith<VisitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitModelCopyWith<$Res> {
  factory $VisitModelCopyWith(
          VisitModel value, $Res Function(VisitModel) then) =
      _$VisitModelCopyWithImpl<$Res, VisitModel>;
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
class _$VisitModelCopyWithImpl<$Res, $Val extends VisitModel>
    implements $VisitModelCopyWith<$Res> {
  _$VisitModelCopyWithImpl(this._value, this._then);

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
abstract class _$$VisitModelImplCopyWith<$Res>
    implements $VisitModelCopyWith<$Res> {
  factory _$$VisitModelImplCopyWith(
          _$VisitModelImpl value, $Res Function(_$VisitModelImpl) then) =
      __$$VisitModelImplCopyWithImpl<$Res>;
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
class __$$VisitModelImplCopyWithImpl<$Res>
    extends _$VisitModelCopyWithImpl<$Res, _$VisitModelImpl>
    implements _$$VisitModelImplCopyWith<$Res> {
  __$$VisitModelImplCopyWithImpl(
      _$VisitModelImpl _value, $Res Function(_$VisitModelImpl) _then)
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
    return _then(_$VisitModelImpl(
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
class _$VisitModelImpl implements _VisitModel {
  const _$VisitModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "payload") this.payload,
      @JsonKey(name: "isSuccess") this.isSuccess});

  factory _$VisitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitModelImplFromJson(json);

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
    return 'VisitModel(status: $status, code: $code, message: $message, payload: $payload, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitModelImpl &&
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
  _$$VisitModelImplCopyWith<_$VisitModelImpl> get copyWith =>
      __$$VisitModelImplCopyWithImpl<_$VisitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitModelImplToJson(
      this,
    );
  }
}

abstract class _VisitModel implements VisitModel {
  const factory _VisitModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "payload") final Payload? payload,
      @JsonKey(name: "isSuccess") final bool? isSuccess}) = _$VisitModelImpl;

  factory _VisitModel.fromJson(Map<String, dynamic> json) =
      _$VisitModelImpl.fromJson;

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
  _$$VisitModelImplCopyWith<_$VisitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: "travels")
  List<Travel>? get travels => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "travels") List<Travel>? travels,
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
    Object? travels = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      travels: freezed == travels
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>?,
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
      {@JsonKey(name: "travels") List<Travel>? travels,
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
    Object? travels = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$PayloadImpl(
      travels: freezed == travels
          ? _value._travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>?,
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
      {@JsonKey(name: "travels") final List<Travel>? travels,
      @JsonKey(name: "pagination") this.pagination})
      : _travels = travels;

  factory _$PayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadImplFromJson(json);

  final List<Travel>? _travels;
  @override
  @JsonKey(name: "travels")
  List<Travel>? get travels {
    final value = _travels;
    if (value == null) return null;
    if (_travels is EqualUnmodifiableListView) return _travels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;

  @override
  String toString() {
    return 'Payload(travels: $travels, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayloadImpl &&
            const DeepCollectionEquality().equals(other._travels, _travels) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_travels), pagination);

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
          {@JsonKey(name: "travels") final List<Travel>? travels,
          @JsonKey(name: "pagination") final Pagination? pagination}) =
      _$PayloadImpl;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$PayloadImpl.fromJson;

  @override
  @JsonKey(name: "travels")
  List<Travel>? get travels;
  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$PayloadImplCopyWith<_$PayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
mixin _$Travel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "distance_between_them")
  dynamic get distanceBetweenThem => throw _privateConstructorUsedError;
  @JsonKey(name: "duration_between_them")
  dynamic get durationBetweenThem => throw _privateConstructorUsedError;
  @JsonKey(name: "service")
  Service? get service => throw _privateConstructorUsedError;
  @JsonKey(name: "rider")
  Rider? get rider => throw _privateConstructorUsedError;
  @JsonKey(name: "chat_channel_id")
  int? get chatChannelId => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_location")
  String? get pickupLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "arrive_location")
  String? get arriveLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_lat")
  String? get pickupLat => throw _privateConstructorUsedError;
  @JsonKey(name: "pickup_lng")
  String? get pickupLng => throw _privateConstructorUsedError;
  @JsonKey(name: "arrive_lat")
  String? get arriveLat => throw _privateConstructorUsedError;
  @JsonKey(name: "arrive_lng")
  String? get arriveLng => throw _privateConstructorUsedError;
  @JsonKey(name: "travel_no")
  int? get travelNo => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  int? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "arrival_time")
  String? get arrivalTime => throw _privateConstructorUsedError;
  @JsonKey(name: "your_rate")
  String? get yourRate => throw _privateConstructorUsedError;
  @JsonKey(name: "waiting_time")
  int? get waitingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "waiting_time_fees_amount")
  String? get waitingTimeFeesAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "driver_profit")
  String? get driverProfit => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "distance")
  String? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: "suggest_price")
  String? get suggestPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "comission")
  String? get comission => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_amount")
  String? get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "remaining_amount")
  String? get remainingAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res, Travel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "distance_between_them") dynamic distanceBetweenThem,
      @JsonKey(name: "duration_between_them") dynamic durationBetweenThem,
      @JsonKey(name: "service") Service? service,
      @JsonKey(name: "rider") Rider? rider,
      @JsonKey(name: "chat_channel_id") int? chatChannelId,
      @JsonKey(name: "pickup_location") String? pickupLocation,
      @JsonKey(name: "arrive_location") String? arriveLocation,
      @JsonKey(name: "pickup_lat") String? pickupLat,
      @JsonKey(name: "pickup_lng") String? pickupLng,
      @JsonKey(name: "arrive_lat") String? arriveLat,
      @JsonKey(name: "arrive_lng") String? arriveLng,
      @JsonKey(name: "travel_no") int? travelNo,
      @JsonKey(name: "payment_status") int? paymentStatus,
      @JsonKey(name: "arrival_time") String? arrivalTime,
      @JsonKey(name: "your_rate") String? yourRate,
      @JsonKey(name: "waiting_time") int? waitingTime,
      @JsonKey(name: "waiting_time_fees_amount") String? waitingTimeFeesAmount,
      @JsonKey(name: "discount") String? discount,
      @JsonKey(name: "driver_profit") String? driverProfit,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "distance") String? distance,
      @JsonKey(name: "suggest_price") String? suggestPrice,
      @JsonKey(name: "comission") String? comission,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "status") Status? status,
      @JsonKey(name: "paid_amount") String? paidAmount,
      @JsonKey(name: "remaining_amount") String? remainingAmount});

  $ServiceCopyWith<$Res>? get service;
  $RiderCopyWith<$Res>? get rider;
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$TravelCopyWithImpl<$Res, $Val extends Travel>
    implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? distanceBetweenThem = freezed,
    Object? durationBetweenThem = freezed,
    Object? service = freezed,
    Object? rider = freezed,
    Object? chatChannelId = freezed,
    Object? pickupLocation = freezed,
    Object? arriveLocation = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? arriveLat = freezed,
    Object? arriveLng = freezed,
    Object? travelNo = freezed,
    Object? paymentStatus = freezed,
    Object? arrivalTime = freezed,
    Object? yourRate = freezed,
    Object? waitingTime = freezed,
    Object? waitingTimeFeesAmount = freezed,
    Object? discount = freezed,
    Object? driverProfit = freezed,
    Object? duration = freezed,
    Object? distance = freezed,
    Object? suggestPrice = freezed,
    Object? comission = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? paidAmount = freezed,
    Object? remainingAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceBetweenThem: freezed == distanceBetweenThem
          ? _value.distanceBetweenThem
          : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      durationBetweenThem: freezed == durationBetweenThem
          ? _value.durationBetweenThem
          : durationBetweenThem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      rider: freezed == rider
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider?,
      chatChannelId: freezed == chatChannelId
          ? _value.chatChannelId
          : chatChannelId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLocation: freezed == arriveLocation
          ? _value.arriveLocation
          : arriveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLat: freezed == pickupLat
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLng: freezed == pickupLng
          ? _value.pickupLng
          : pickupLng // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLat: freezed == arriveLat
          ? _value.arriveLat
          : arriveLat // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLng: freezed == arriveLng
          ? _value.arriveLng
          : arriveLng // ignore: cast_nullable_to_non_nullable
              as String?,
      travelNo: freezed == travelNo
          ? _value.travelNo
          : travelNo // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      yourRate: freezed == yourRate
          ? _value.yourRate
          : yourRate // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimeFeesAmount: freezed == waitingTimeFeesAmount
          ? _value.waitingTimeFeesAmount
          : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      driverProfit: freezed == driverProfit
          ? _value.driverProfit
          : driverProfit // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestPrice: freezed == suggestPrice
          ? _value.suggestPrice
          : suggestPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      comission: freezed == comission
          ? _value.comission
          : comission // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$TravelImplCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$$TravelImplCopyWith(
          _$TravelImpl value, $Res Function(_$TravelImpl) then) =
      __$$TravelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "distance_between_them") dynamic distanceBetweenThem,
      @JsonKey(name: "duration_between_them") dynamic durationBetweenThem,
      @JsonKey(name: "service") Service? service,
      @JsonKey(name: "rider") Rider? rider,
      @JsonKey(name: "chat_channel_id") int? chatChannelId,
      @JsonKey(name: "pickup_location") String? pickupLocation,
      @JsonKey(name: "arrive_location") String? arriveLocation,
      @JsonKey(name: "pickup_lat") String? pickupLat,
      @JsonKey(name: "pickup_lng") String? pickupLng,
      @JsonKey(name: "arrive_lat") String? arriveLat,
      @JsonKey(name: "arrive_lng") String? arriveLng,
      @JsonKey(name: "travel_no") int? travelNo,
      @JsonKey(name: "payment_status") int? paymentStatus,
      @JsonKey(name: "arrival_time") String? arrivalTime,
      @JsonKey(name: "your_rate") String? yourRate,
      @JsonKey(name: "waiting_time") int? waitingTime,
      @JsonKey(name: "waiting_time_fees_amount") String? waitingTimeFeesAmount,
      @JsonKey(name: "discount") String? discount,
      @JsonKey(name: "driver_profit") String? driverProfit,
      @JsonKey(name: "duration") int? duration,
      @JsonKey(name: "distance") String? distance,
      @JsonKey(name: "suggest_price") String? suggestPrice,
      @JsonKey(name: "comission") String? comission,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "status") Status? status,
      @JsonKey(name: "paid_amount") String? paidAmount,
      @JsonKey(name: "remaining_amount") String? remainingAmount});

  @override
  $ServiceCopyWith<$Res>? get service;
  @override
  $RiderCopyWith<$Res>? get rider;
  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$TravelImplCopyWithImpl<$Res>
    extends _$TravelCopyWithImpl<$Res, _$TravelImpl>
    implements _$$TravelImplCopyWith<$Res> {
  __$$TravelImplCopyWithImpl(
      _$TravelImpl _value, $Res Function(_$TravelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? distanceBetweenThem = freezed,
    Object? durationBetweenThem = freezed,
    Object? service = freezed,
    Object? rider = freezed,
    Object? chatChannelId = freezed,
    Object? pickupLocation = freezed,
    Object? arriveLocation = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? arriveLat = freezed,
    Object? arriveLng = freezed,
    Object? travelNo = freezed,
    Object? paymentStatus = freezed,
    Object? arrivalTime = freezed,
    Object? yourRate = freezed,
    Object? waitingTime = freezed,
    Object? waitingTimeFeesAmount = freezed,
    Object? discount = freezed,
    Object? driverProfit = freezed,
    Object? duration = freezed,
    Object? distance = freezed,
    Object? suggestPrice = freezed,
    Object? comission = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? paidAmount = freezed,
    Object? remainingAmount = freezed,
  }) {
    return _then(_$TravelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceBetweenThem: freezed == distanceBetweenThem
          ? _value.distanceBetweenThem
          : distanceBetweenThem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      durationBetweenThem: freezed == durationBetweenThem
          ? _value.durationBetweenThem
          : durationBetweenThem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      rider: freezed == rider
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as Rider?,
      chatChannelId: freezed == chatChannelId
          ? _value.chatChannelId
          : chatChannelId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLocation: freezed == arriveLocation
          ? _value.arriveLocation
          : arriveLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLat: freezed == pickupLat
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLng: freezed == pickupLng
          ? _value.pickupLng
          : pickupLng // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLat: freezed == arriveLat
          ? _value.arriveLat
          : arriveLat // ignore: cast_nullable_to_non_nullable
              as String?,
      arriveLng: freezed == arriveLng
          ? _value.arriveLng
          : arriveLng // ignore: cast_nullable_to_non_nullable
              as String?,
      travelNo: freezed == travelNo
          ? _value.travelNo
          : travelNo // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      yourRate: freezed == yourRate
          ? _value.yourRate
          : yourRate // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTimeFeesAmount: freezed == waitingTimeFeesAmount
          ? _value.waitingTimeFeesAmount
          : waitingTimeFeesAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      driverProfit: freezed == driverProfit
          ? _value.driverProfit
          : driverProfit // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestPrice: freezed == suggestPrice
          ? _value.suggestPrice
          : suggestPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      comission: freezed == comission
          ? _value.comission
          : comission // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAmount: freezed == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelImpl implements _Travel {
  const _$TravelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "distance_between_them") this.distanceBetweenThem,
      @JsonKey(name: "duration_between_them") this.durationBetweenThem,
      @JsonKey(name: "service") this.service,
      @JsonKey(name: "rider") this.rider,
      @JsonKey(name: "chat_channel_id") this.chatChannelId,
      @JsonKey(name: "pickup_location") this.pickupLocation,
      @JsonKey(name: "arrive_location") this.arriveLocation,
      @JsonKey(name: "pickup_lat") this.pickupLat,
      @JsonKey(name: "pickup_lng") this.pickupLng,
      @JsonKey(name: "arrive_lat") this.arriveLat,
      @JsonKey(name: "arrive_lng") this.arriveLng,
      @JsonKey(name: "travel_no") this.travelNo,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "arrival_time") this.arrivalTime,
      @JsonKey(name: "your_rate") this.yourRate,
      @JsonKey(name: "waiting_time") this.waitingTime,
      @JsonKey(name: "waiting_time_fees_amount") this.waitingTimeFeesAmount,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "driver_profit") this.driverProfit,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "distance") this.distance,
      @JsonKey(name: "suggest_price") this.suggestPrice,
      @JsonKey(name: "comission") this.comission,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "paid_amount") this.paidAmount,
      @JsonKey(name: "remaining_amount") this.remainingAmount});

  factory _$TravelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "distance_between_them")
  final dynamic distanceBetweenThem;
  @override
  @JsonKey(name: "duration_between_them")
  final dynamic durationBetweenThem;
  @override
  @JsonKey(name: "service")
  final Service? service;
  @override
  @JsonKey(name: "rider")
  final Rider? rider;
  @override
  @JsonKey(name: "chat_channel_id")
  final int? chatChannelId;
  @override
  @JsonKey(name: "pickup_location")
  final String? pickupLocation;
  @override
  @JsonKey(name: "arrive_location")
  final String? arriveLocation;
  @override
  @JsonKey(name: "pickup_lat")
  final String? pickupLat;
  @override
  @JsonKey(name: "pickup_lng")
  final String? pickupLng;
  @override
  @JsonKey(name: "arrive_lat")
  final String? arriveLat;
  @override
  @JsonKey(name: "arrive_lng")
  final String? arriveLng;
  @override
  @JsonKey(name: "travel_no")
  final int? travelNo;
  @override
  @JsonKey(name: "payment_status")
  final int? paymentStatus;
  @override
  @JsonKey(name: "arrival_time")
  final String? arrivalTime;
  @override
  @JsonKey(name: "your_rate")
  final String? yourRate;
  @override
  @JsonKey(name: "waiting_time")
  final int? waitingTime;
  @override
  @JsonKey(name: "waiting_time_fees_amount")
  final String? waitingTimeFeesAmount;
  @override
  @JsonKey(name: "discount")
  final String? discount;
  @override
  @JsonKey(name: "driver_profit")
  final String? driverProfit;
  @override
  @JsonKey(name: "duration")
  final int? duration;
  @override
  @JsonKey(name: "distance")
  final String? distance;
  @override
  @JsonKey(name: "suggest_price")
  final String? suggestPrice;
  @override
  @JsonKey(name: "comission")
  final String? comission;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "status")
  final Status? status;
  @override
  @JsonKey(name: "paid_amount")
  final String? paidAmount;
  @override
  @JsonKey(name: "remaining_amount")
  final String? remainingAmount;

  @override
  String toString() {
    return 'Travel(id: $id, distanceBetweenThem: $distanceBetweenThem, durationBetweenThem: $durationBetweenThem, service: $service, rider: $rider, chatChannelId: $chatChannelId, pickupLocation: $pickupLocation, arriveLocation: $arriveLocation, pickupLat: $pickupLat, pickupLng: $pickupLng, arriveLat: $arriveLat, arriveLng: $arriveLng, travelNo: $travelNo, paymentStatus: $paymentStatus, arrivalTime: $arrivalTime, yourRate: $yourRate, waitingTime: $waitingTime, waitingTimeFeesAmount: $waitingTimeFeesAmount, discount: $discount, driverProfit: $driverProfit, duration: $duration, distance: $distance, suggestPrice: $suggestPrice, comission: $comission, amount: $amount, status: $status, paidAmount: $paidAmount, remainingAmount: $remainingAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.distanceBetweenThem, distanceBetweenThem) &&
            const DeepCollectionEquality()
                .equals(other.durationBetweenThem, durationBetweenThem) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.rider, rider) || other.rider == rider) &&
            (identical(other.chatChannelId, chatChannelId) ||
                other.chatChannelId == chatChannelId) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.arriveLocation, arriveLocation) ||
                other.arriveLocation == arriveLocation) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.arriveLat, arriveLat) ||
                other.arriveLat == arriveLat) &&
            (identical(other.arriveLng, arriveLng) ||
                other.arriveLng == arriveLng) &&
            (identical(other.travelNo, travelNo) ||
                other.travelNo == travelNo) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.yourRate, yourRate) ||
                other.yourRate == yourRate) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime) &&
            (identical(other.waitingTimeFeesAmount, waitingTimeFeesAmount) ||
                other.waitingTimeFeesAmount == waitingTimeFeesAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.driverProfit, driverProfit) ||
                other.driverProfit == driverProfit) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.suggestPrice, suggestPrice) ||
                other.suggestPrice == suggestPrice) &&
            (identical(other.comission, comission) ||
                other.comission == comission) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(distanceBetweenThem),
        const DeepCollectionEquality().hash(durationBetweenThem),
        service,
        rider,
        chatChannelId,
        pickupLocation,
        arriveLocation,
        pickupLat,
        pickupLng,
        arriveLat,
        arriveLng,
        travelNo,
        paymentStatus,
        arrivalTime,
        yourRate,
        waitingTime,
        waitingTimeFeesAmount,
        discount,
        driverProfit,
        duration,
        distance,
        suggestPrice,
        comission,
        amount,
        status,
        paidAmount,
        remainingAmount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      __$$TravelImplCopyWithImpl<_$TravelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelImplToJson(
      this,
    );
  }
}

abstract class _Travel implements Travel {
  const factory _Travel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "distance_between_them") final dynamic distanceBetweenThem,
      @JsonKey(name: "duration_between_them") final dynamic durationBetweenThem,
      @JsonKey(name: "service") final Service? service,
      @JsonKey(name: "rider") final Rider? rider,
      @JsonKey(name: "chat_channel_id") final int? chatChannelId,
      @JsonKey(name: "pickup_location") final String? pickupLocation,
      @JsonKey(name: "arrive_location") final String? arriveLocation,
      @JsonKey(name: "pickup_lat") final String? pickupLat,
      @JsonKey(name: "pickup_lng") final String? pickupLng,
      @JsonKey(name: "arrive_lat") final String? arriveLat,
      @JsonKey(name: "arrive_lng") final String? arriveLng,
      @JsonKey(name: "travel_no") final int? travelNo,
      @JsonKey(name: "payment_status") final int? paymentStatus,
      @JsonKey(name: "arrival_time") final String? arrivalTime,
      @JsonKey(name: "your_rate") final String? yourRate,
      @JsonKey(name: "waiting_time") final int? waitingTime,
      @JsonKey(name: "waiting_time_fees_amount")
      final String? waitingTimeFeesAmount,
      @JsonKey(name: "discount") final String? discount,
      @JsonKey(name: "driver_profit") final String? driverProfit,
      @JsonKey(name: "duration") final int? duration,
      @JsonKey(name: "distance") final String? distance,
      @JsonKey(name: "suggest_price") final String? suggestPrice,
      @JsonKey(name: "comission") final String? comission,
      @JsonKey(name: "amount") final String? amount,
      @JsonKey(name: "status") final Status? status,
      @JsonKey(name: "paid_amount") final String? paidAmount,
      @JsonKey(name: "remaining_amount")
      final String? remainingAmount}) = _$TravelImpl;

  factory _Travel.fromJson(Map<String, dynamic> json) = _$TravelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "distance_between_them")
  dynamic get distanceBetweenThem;
  @override
  @JsonKey(name: "duration_between_them")
  dynamic get durationBetweenThem;
  @override
  @JsonKey(name: "service")
  Service? get service;
  @override
  @JsonKey(name: "rider")
  Rider? get rider;
  @override
  @JsonKey(name: "chat_channel_id")
  int? get chatChannelId;
  @override
  @JsonKey(name: "pickup_location")
  String? get pickupLocation;
  @override
  @JsonKey(name: "arrive_location")
  String? get arriveLocation;
  @override
  @JsonKey(name: "pickup_lat")
  String? get pickupLat;
  @override
  @JsonKey(name: "pickup_lng")
  String? get pickupLng;
  @override
  @JsonKey(name: "arrive_lat")
  String? get arriveLat;
  @override
  @JsonKey(name: "arrive_lng")
  String? get arriveLng;
  @override
  @JsonKey(name: "travel_no")
  int? get travelNo;
  @override
  @JsonKey(name: "payment_status")
  int? get paymentStatus;
  @override
  @JsonKey(name: "arrival_time")
  String? get arrivalTime;
  @override
  @JsonKey(name: "your_rate")
  String? get yourRate;
  @override
  @JsonKey(name: "waiting_time")
  int? get waitingTime;
  @override
  @JsonKey(name: "waiting_time_fees_amount")
  String? get waitingTimeFeesAmount;
  @override
  @JsonKey(name: "discount")
  String? get discount;
  @override
  @JsonKey(name: "driver_profit")
  String? get driverProfit;
  @override
  @JsonKey(name: "duration")
  int? get duration;
  @override
  @JsonKey(name: "distance")
  String? get distance;
  @override
  @JsonKey(name: "suggest_price")
  String? get suggestPrice;
  @override
  @JsonKey(name: "comission")
  String? get comission;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "status")
  Status? get status;
  @override
  @JsonKey(name: "paid_amount")
  String? get paidAmount;
  @override
  @JsonKey(name: "remaining_amount")
  String? get remainingAmount;
  @override
  @JsonKey(ignore: true)
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
