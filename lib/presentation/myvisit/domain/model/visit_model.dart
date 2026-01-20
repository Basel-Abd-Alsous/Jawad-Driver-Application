import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/model/travel_requist_model.dart';
import '../../../wallet/domain/model/transactions_model.dart';

part 'visit_model.freezed.dart';
part 'visit_model.g.dart';

@freezed
abstract class VisitModel with _$VisitModel {
  const factory VisitModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") Payload? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _VisitModel;

  factory VisitModel.fromJson(Map<String, dynamic> json) => _$VisitModelFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({@JsonKey(name: "travels") List<Travel>? travels, @JsonKey(name: "pagination") Pagination? pagination}) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
abstract class Travel with _$Travel {
  const factory Travel({
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
    @JsonKey(name: "remaining_amount") String? remainingAmount,
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);
}
