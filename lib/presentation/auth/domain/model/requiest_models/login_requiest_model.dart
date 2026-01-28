class LoginRequiestModel {
  final String? phone;
  final String? userType;
  final String? fcmToken;

  LoginRequiestModel({this.phone, this.fcmToken, this.userType});

  LoginRequiestModel.fromJson(Map<String, dynamic> json) : phone = json['phone'] as String?, fcmToken = json['fcm_token'] as String?, userType = json['user_type'] as String?;

  Map<String, dynamic> toJson() => {'phone': phone, 'fcm_token': fcmToken, 'user_type': userType};
}
