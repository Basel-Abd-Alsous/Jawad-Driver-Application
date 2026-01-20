import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_track_model.freezed.dart';
part 'travel_track_model.g.dart';

@freezed
abstract class TravelTrackModel with _$TravelTrackModel {
  const factory TravelTrackModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payload") List<Payload>? payload,
    @JsonKey(name: "isSuccess") bool? isSuccess,
  }) = _TravelTrackModel;

  factory TravelTrackModel.fromJson(Map<String, dynamic> json) => _$TravelTrackModelFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({@JsonKey(name: "latitude") double? latitude, @JsonKey(name: "longitude") double? longitude}) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}
