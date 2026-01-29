class RegisterModel {
  final String? idNumber;
  final String? dateOfBirth;
  final String? password;
  final String? passwordConfirmation;
  final String? phone;
  final String? plateNumber;
  final String? plateCode;
  final String? vehicleColorsId;
  final String? vehicleTypeId;
  final String? vehicleModelsId;
  final String? year;
  final String? sequenceNumber;
  final String? plateType;
  final String? fcmToken;
  final String? otp;

  RegisterModel({
    this.idNumber,
    this.dateOfBirth,
    this.password,
    this.passwordConfirmation,
    this.phone,
    this.plateNumber,
    this.plateCode,
    this.vehicleColorsId,
    this.vehicleTypeId,
    this.vehicleModelsId,
    this.year,
    this.sequenceNumber,
    this.plateType,
    this.fcmToken,
    this.otp,
  });

  RegisterModel copyWith({
    String? idNumber,
    String? dateOfBirth,
    String? password,
    String? passwordConfirmation,
    String? phone,
    String? plateNumber,
    String? plateCode,
    String? vehicleColorsId,
    String? vehicleTypeId,
    String? vehicleModelsId,
    String? year,
    String? sequenceNumber,
    String? plateType,
    String? fcmToken,
    String? otp,
  }) {
    return RegisterModel(
      idNumber: idNumber ?? this.idNumber,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      password: password ?? this.password,
      passwordConfirmation:
          passwordConfirmation ?? this.passwordConfirmation,
      phone: phone ?? this.phone,
      plateNumber: plateNumber ?? this.plateNumber,
      plateCode: plateCode ?? this.plateCode,
      vehicleColorsId: vehicleColorsId ?? this.vehicleColorsId,
      vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
      vehicleModelsId: vehicleModelsId ?? this.vehicleModelsId,
      year: year ?? this.year,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      plateType: plateType ?? this.plateType,
      fcmToken: fcmToken ?? this.fcmToken,
      otp: otp ?? this.otp,
    );
  }

  RegisterModel.fromJson(Map<String, dynamic> json)
      : idNumber = json['id_number'] as String?,
        dateOfBirth = json['date_of_birth'] as String?,
        password = json['password'] as String?,
        passwordConfirmation = json['password_confirmation'] as String?,
        phone = json['phone'] as String?,
        plateNumber = json['plate_number'] as String?,
        otp = json['otp'] as String?,
        plateCode = json['plate_code'] as String?,
        vehicleColorsId = json['vehicle_colors_id'] as String?,
        vehicleTypeId = json['vehicle_type_id'] as String?,
        vehicleModelsId = json['vehicle_models_id'] as String?,
        year = json['year'] as String?,
        sequenceNumber = json['sequence_number'] as String?,
        plateType = json['plate_type'] as String?,
        fcmToken = json['fcm_token'] as String?;

  Map<String, dynamic> toJson() => {
        'first_name': ".",
        'id_number': idNumber,
        'date_of_birth': dateOfBirth,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'phone': phone,
        'otp': otp,
        'plate_number': plateNumber,
        'plate_code': plateCode,
        'vehicle_colors_id': vehicleColorsId,
        'vehicle_type_id': vehicleTypeId,
        'vehicle_models_id': vehicleModelsId,
        'year': year,
        'sequence_number': sequenceNumber,
        'plate_type': plateType,
        'fcm_token': fcmToken,
      };
}
