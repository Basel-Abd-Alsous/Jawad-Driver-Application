class FeedbackParam {
  FeedbackParam({required this.appType, required this.feedbackType, required this.email, required this.phone, required this.message});
  late final String appType;
  late final String feedbackType;
  late final String email;
  late final String phone;
  late final String message;

  FeedbackParam.fromJson(Map<String, dynamic> json) {
    appType = json['app_type'];
    feedbackType = json['feedback_type'];
    email = json['email'];
    phone = json['phone'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['app_type'] = appType;
    data['feedback_type'] = feedbackType;
    data['email'] = email;
    data['phone'] = phone;
    data['message'] = message;
    return data;
  }
}
