import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';
part 'feedback_model.g.dart';

@freezed
abstract class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "payload") required List<Feedback> payload,
    @JsonKey(name: "isSuccess") required bool isSuccess,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) => _$FeedbackModelFromJson(json);
}

@freezed
abstract class Feedback with _$Feedback {
  const factory Feedback({@JsonKey(name: "value") required String value, @JsonKey(name: "label") required String label}) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) => _$FeedbackFromJson(json);
}
