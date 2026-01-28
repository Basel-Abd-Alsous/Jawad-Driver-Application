// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_requist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelRequistModel _$TravelRequistModelFromJson(Map<String, dynamic> json) =>
    _TravelRequistModel(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) => TravelRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$TravelRequistModelToJson(_TravelRequistModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_TravelRequest _$TravelRequestFromJson(Map<String, dynamic> json) =>
    _TravelRequest(
      id: (json['id'] as num?)?.toInt(),
      rider: json['rider'] == null
          ? null
          : Rider.fromJson(json['rider'] as Map<String, dynamic>),
      amount: json['amount'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      discount: json['discount'] as String?,
      distance: json['distance'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      comission: json['comission'] as String?,
      travelNo: (json['travel_no'] as num?)?.toInt(),
      arriveLat: json['arrive_lat'] as String?,
      arriveLng: json['arrive_lng'] as String?,
      pickupLat: json['pickup_lat'] as String?,
      pickupLng: json['pickup_lng'] as String?,
      paidAmount: json['paid_amount'],
      arrivalTime: json['arrival_time'],
      waitingTime: (json['waiting_time'] as num?)?.toInt(),
      yourRate: json['your_rate'] as String?,
      driverProfit: json['driver_profit'] as String?,
      suggestPrice: json['suggest_price'] as String?,
      paymentStatus: (json['payment_status'] as num?)?.toInt(),
      arriveLocation: json['arrive_location'] as String?,
      chatChannelId: (json['chat_channel_id'] as num?)?.toInt(),
      pickupLocation: json['pickup_location'] as String?,
      remainingAmount: json['remaining_amount'] as String?,
      distanceBetweenThem: (json['distance_between_them'] as num?)?.toInt(),
      durationBetweenThem: (json['duration_between_them'] as num?)?.toInt(),
      waitingTimeFeesAmount: json['waiting_time_fees_amount'] as String?,
      riderDebtPaid: json['rider_debt_paid'] as String?,
      chargeClientWallet: json['charge_client_wallet'] as String?,
    );

Map<String, dynamic> _$TravelRequestToJson(_TravelRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rider': instance.rider,
      'amount': instance.amount,
      'status': instance.status,
      'service': instance.service,
      'discount': instance.discount,
      'distance': instance.distance,
      'duration': instance.duration,
      'comission': instance.comission,
      'travel_no': instance.travelNo,
      'arrive_lat': instance.arriveLat,
      'arrive_lng': instance.arriveLng,
      'pickup_lat': instance.pickupLat,
      'pickup_lng': instance.pickupLng,
      'paid_amount': instance.paidAmount,
      'arrival_time': instance.arrivalTime,
      'waiting_time': instance.waitingTime,
      'your_rate': instance.yourRate,
      'driver_profit': instance.driverProfit,
      'suggest_price': instance.suggestPrice,
      'payment_status': instance.paymentStatus,
      'arrive_location': instance.arriveLocation,
      'chat_channel_id': instance.chatChannelId,
      'pickup_location': instance.pickupLocation,
      'remaining_amount': instance.remainingAmount,
      'distance_between_them': instance.distanceBetweenThem,
      'duration_between_them': instance.durationBetweenThem,
      'waiting_time_fees_amount': instance.waitingTimeFeesAmount,
      'rider_debt_paid': instance.riderDebtPaid,
      'charge_client_wallet': instance.chargeClientWallet,
    };

_Rider _$RiderFromJson(Map<String, dynamic> json) => _Rider(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  rating: (json['rating'] as num?)?.toInt(),
  profileImage: json['profile_image'] as String?,
  numberOfRatedTravels: (json['number_of_rated_travels'] as num?)?.toInt(),
);

Map<String, dynamic> _$RiderToJson(_Rider instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'rating': instance.rating,
  'profile_image': instance.profileImage,
  'number_of_rated_travels': instance.numberOfRatedTravels,
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

_Status _$StatusFromJson(Map<String, dynamic> json) => _Status(
  name: json['name'] as String?,
  color: json['color'] as String?,
  value: json['value'] as String?,
);

Map<String, dynamic> _$StatusToJson(_Status instance) => <String, dynamic>{
  'name': instance.name,
  'color': instance.color,
  'value': instance.value,
};
