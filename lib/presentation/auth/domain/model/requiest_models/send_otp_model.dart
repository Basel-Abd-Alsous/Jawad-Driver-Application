class SendOTPModel {
  final String? userType;
  final String? phone;

  SendOTPModel({this.userType, this.phone});

  SendOTPModel.fromJson(Map<String, dynamic> json) : userType = json['user_type'] as String?, phone = json['phone'] as String?;

  Map<String, dynamic> toJson() => {'user_type': userType, 'phone': phone};
}
