// To parse this JSON data, do
//
//     final travelRequistModel = travelRequistModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'travel_requist_model.freezed.dart';
part 'travel_requist_model.g.dart';

TravelRequistModel travelRequistModelFromJson(String str) => TravelRequistModel.fromJson(json.decode(str));

String travelRequistModelToJson(TravelRequistModel data) => json.encode(data.toJson());

@freezed
abstract class TravelRequistModel with _$TravelRequistModel {
  const factory TravelRequistModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payload') List<TravelRequest>? payload,
    @JsonKey(name: 'isSuccess') bool? isSuccess,
  }) = _TravelRequistModel;

  factory TravelRequistModel.fromJson(Map<String, dynamic> json) => _$TravelRequistModelFromJson(json);
}

@freezed
abstract class TravelRequest with _$TravelRequest {
  const factory TravelRequest({
    @JsonKey(name: 'id') int? id,
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
    @JsonKey(name: 'waiting_time_fees_amount') String? waitingTimeFeesAmount,
    @JsonKey(name: 'rider_debt_paid') String? riderDebtPaid,
    @JsonKey(name: 'charge_client_wallet') String? chargeClientWallet,
  }) = _TravelRequest;

  factory TravelRequest.fromJson(Map<String, dynamic> json) => _$TravelRequestFromJson(json);
}

@freezed
abstract class Rider with _$Rider {
  const factory Rider({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'number_of_rated_travels') int? numberOfRatedTravels,
  }) = _Rider;

  factory Rider.fromJson(Map<String, dynamic> json) => _$RiderFromJson(json);
}

@freezed
abstract class Service with _$Service {
  const factory Service({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name, @JsonKey(name: 'image') String? image}) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

@freezed
abstract class Status with _$Status {
  const factory Status({@JsonKey(name: 'name') String? name, @JsonKey(name: 'color') String? color, @JsonKey(name: 'value') String? value}) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
