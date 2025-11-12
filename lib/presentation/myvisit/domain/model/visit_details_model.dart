import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/model/travel_requist_model.dart';

part 'visit_details_model.freezed.dart';
part 'visit_details_model.g.dart';

@freezed
class VisitDetailsModel with _$VisitDetailsModel {
  const factory VisitDetailsModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") Payload? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _VisitDetailsModel;

  factory VisitDetailsModel.fromJson(Map<String, dynamic> json) => _$VisitDetailsModelFromJson(json);
}

@freezed
class Payload with _$Payload {
  const factory Payload({
    @JsonKey(name: "id") int? id,
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
    @JsonKey(name: "your_rate") String? yourRate,
    @JsonKey(name: "payment_status") int? paymentStatus,
    @JsonKey(name: "arrival_time") String? arrivalTime,
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
    @JsonKey(name: "remaining_amount") String? remainingAmount,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name, @JsonKey(name: "image") String? image}) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}
