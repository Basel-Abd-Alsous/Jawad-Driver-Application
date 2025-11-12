class NewPasswordModel {
  final String? userType;
  final String? phone;
  final String? password;
  final String? passwordConfirmation;

  NewPasswordModel({this.userType, this.phone, this.password, this.passwordConfirmation});

  NewPasswordModel.fromJson(Map<String, dynamic> json)
    : userType = json['user_type'] as String?,
      phone = json['phone'] as String?,
      password = json['password'] as String?,
      passwordConfirmation = json['password_confirmation'] as String?;

  Map<String, dynamic> toJson() => {'user_type': userType, 'phone': phone, 'password': password, 'password_confirmation': passwordConfirmation};
}
