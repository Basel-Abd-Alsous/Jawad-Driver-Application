class VerifyOTPModel {
  final String? userType;
  final String? phone;
  final String? otp;

  VerifyOTPModel({this.userType, this.phone, this.otp});

  VerifyOTPModel.fromJson(Map<String, dynamic> json) : userType = json['user_type'] as String?, phone = json['phone'] as String?, otp = json['otp'] as String?;

  Map<String, dynamic> toJson() => {'user_type': userType, 'phone': phone, 'otp': otp};
}
