class LoginRequiestModel {
  final String? phone;
  final String? password;
  final String? userType;
  final String? fcmToken;

  LoginRequiestModel({this.phone, this.password, this.fcmToken, this.userType});

  LoginRequiestModel.fromJson(Map<String, dynamic> json)
    : phone = json['phone'] as String?,
      password = json['password'] as String?,
      fcmToken = json['fcm_token'] as String?,
      userType = json['user_type'] as String?;

  Map<String, dynamic> toJson() => {'phone': phone, 'password': password, 'fcm_token': fcmToken, 'user_type': userType};
}
