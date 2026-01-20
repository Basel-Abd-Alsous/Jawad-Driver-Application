// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VisitDetailsModel _$VisitDetailsModelFromJson(Map<String, dynamic> json) =>
    _VisitDetailsModel(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$VisitDetailsModelToJson(_VisitDetailsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_Payload _$PayloadFromJson(Map<String, dynamic> json) => _Payload(
  id: (json['id'] as num?)?.toInt(),
  distanceBetweenThem: json['distance_between_them'],
  durationBetweenThem: json['duration_between_them'],
  service: json['service'] == null
      ? null
      : Service.fromJson(json['service'] as Map<String, dynamic>),
  rider: json['rider'] == null
      ? null
      : Rider.fromJson(json['rider'] as Map<String, dynamic>),
  chatChannelId: (json['chat_channel_id'] as num?)?.toInt(),
  pickupLocation: json['pickup_location'] as String?,
  arriveLocation: json['arrive_location'] as String?,
  pickupLat: json['pickup_lat'] as String?,
  pickupLng: json['pickup_lng'] as String?,
  arriveLat: json['arrive_lat'] as String?,
  arriveLng: json['arrive_lng'] as String?,
  travelNo: (json['travel_no'] as num?)?.toInt(),
  yourRate: json['your_rate'] as String?,
  paymentStatus: (json['payment_status'] as num?)?.toInt(),
  arrivalTime: json['arrival_time'] as String?,
  waitingTime: (json['waiting_time'] as num?)?.toInt(),
  waitingTimeFeesAmount: json['waiting_time_fees_amount'] as String?,
  discount: json['discount'] as String?,
  driverProfit: json['driver_profit'] as String?,
  duration: (json['duration'] as num?)?.toInt(),
  distance: json['distance'] as String?,
  suggestPrice: json['suggest_price'] as String?,
  comission: json['comission'] as String?,
  amount: json['amount'] as String?,
  status: json['status'] == null
      ? null
      : Status.fromJson(json['status'] as Map<String, dynamic>),
  paidAmount: json['paid_amount'] as String?,
  remainingAmount: json['remaining_amount'] as String?,
);

Map<String, dynamic> _$PayloadToJson(_Payload instance) => <String, dynamic>{
  'id': instance.id,
  'distance_between_them': instance.distanceBetweenThem,
  'duration_between_them': instance.durationBetweenThem,
  'service': instance.service,
  'rider': instance.rider,
  'chat_channel_id': instance.chatChannelId,
  'pickup_location': instance.pickupLocation,
  'arrive_location': instance.arriveLocation,
  'pickup_lat': instance.pickupLat,
  'pickup_lng': instance.pickupLng,
  'arrive_lat': instance.arriveLat,
  'arrive_lng': instance.arriveLng,
  'travel_no': instance.travelNo,
  'your_rate': instance.yourRate,
  'payment_status': instance.paymentStatus,
  'arrival_time': instance.arrivalTime,
  'waiting_time': instance.waitingTime,
  'waiting_time_fees_amount': instance.waitingTimeFeesAmount,
  'discount': instance.discount,
  'driver_profit': instance.driverProfit,
  'duration': instance.duration,
  'distance': instance.distance,
  'suggest_price': instance.suggestPrice,
  'comission': instance.comission,
  'amount': instance.amount,
  'status': instance.status,
  'paid_amount': instance.paidAmount,
  'remaining_amount': instance.remainingAmount,
};

_Service _$ServiceFromJson(Map<String, dynamic> json) => _Service(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$ServiceToJson(_Service instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
};
