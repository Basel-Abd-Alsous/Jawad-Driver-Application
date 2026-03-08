// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DriverAdapter extends TypeAdapter<Driver> {
  @override
  final typeId = 0;

  @override
  Driver read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Driver(
      id: (fields[1] as num?)?.toInt(),
      firstName: fields[2] as String?,
      lastName: fields[3] as dynamic,
      email: fields[4] as dynamic,
      phone: fields[5] as String?,
      address: fields[6] as dynamic,
      gender: fields[7] as dynamic,
      registrationStatus: fields[8] as String?,
      status: fields[9] as String?,
      workStatus: fields[10] as bool?,
      profileImage: fields[11] as String?,
      createdAt: fields[12] as DateTime?,
      updatedAt: fields[13] as DateTime?,
      rating: fields[14] as dynamic,
      legalStatus: fields[15] as String?,
      carInfo: fields[16] as CarInfo?,
      bankInfo: fields[17] as BankInfo?,
    );
  }

  @override
  void write(BinaryWriter writer, Driver obj) {
    writer
      ..writeByte(17)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.firstName)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.phone)
      ..writeByte(6)
      ..write(obj.address)
      ..writeByte(7)
      ..write(obj.gender)
      ..writeByte(8)
      ..write(obj.registrationStatus)
      ..writeByte(9)
      ..write(obj.status)
      ..writeByte(10)
      ..write(obj.workStatus)
      ..writeByte(11)
      ..write(obj.profileImage)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(14)
      ..write(obj.rating)
      ..writeByte(15)
      ..write(obj.legalStatus)
      ..writeByte(16)
      ..write(obj.carInfo)
      ..writeByte(17)
      ..write(obj.bankInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DriverAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BankInfoAdapter extends TypeAdapter<BankInfo> {
  @override
  final typeId = 1;

  @override
  BankInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BankInfo(
      id: (fields[1] as num?)?.toInt(),
      bankName: fields[2] as String?,
      accountName: fields[3] as dynamic,
      accountNumber: fields[4] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, BankInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.bankName)
      ..writeByte(3)
      ..write(obj.accountName)
      ..writeByte(4)
      ..write(obj.accountNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BankInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CarInfoAdapter extends TypeAdapter<CarInfo> {
  @override
  final typeId = 2;

  @override
  CarInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarInfo(
      id: (fields[1] as num?)?.toInt(),
      carModel: fields[2] as String?,
      carColor: fields[3] as String?,
      carPlateNumber: fields[4] as String?,
      carYear: (fields[5] as num?)?.toInt(),
      licenseExpiryDate: fields[6] as DateTime?,
      sequenceNumber: fields[7] as String?,
      plateType: (fields[8] as num?)?.toInt(),
      legalStatus: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CarInfo obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.carModel)
      ..writeByte(3)
      ..write(obj.carColor)
      ..writeByte(4)
      ..write(obj.carPlateNumber)
      ..writeByte(5)
      ..write(obj.carYear)
      ..writeByte(6)
      ..write(obj.licenseExpiryDate)
      ..writeByte(7)
      ..write(obj.sequenceNumber)
      ..writeByte(8)
      ..write(obj.plateType)
      ..writeByte(9)
      ..write(obj.legalStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  status: json['status'] as String?,
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  payload: json['payload'] == null
      ? null
      : Payload.fromJson(json['payload'] as Map<String, dynamic>),
  isSuccess: json['isSuccess'] as bool?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.payload,
      'isSuccess': instance.isSuccess,
    };

_Payload _$PayloadFromJson(Map<String, dynamic> json) => _Payload(
  driver: json['driver'] == null
      ? null
      : Driver.fromJson(json['driver'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PayloadToJson(_Payload instance) => <String, dynamic>{
  'driver': instance.driver,
};

_Driver _$DriverFromJson(Map<String, dynamic> json) => _Driver(
  id: (json['id'] as num?)?.toInt(),
  firstName: json['first_name'] as String?,
  lastName: json['last_name'],
  email: json['email'],
  phone: json['phone'] as String?,
  address: json['address'],
  gender: json['gender'],
  registrationStatus: json['registration_status'] as String?,
  status: json['status'] as String?,
  workStatus: json['work_status'] as bool?,
  profileImage: json['profile_image'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  rating: json['rating'],
  legalStatus: json['legal_status'] as String?,
  carInfo: json['car_info'] == null
      ? null
      : CarInfo.fromJson(json['car_info'] as Map<String, dynamic>),
  bankInfo: json['bank_info'] == null
      ? null
      : BankInfo.fromJson(json['bank_info'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DriverToJson(_Driver instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'phone': instance.phone,
  'address': instance.address,
  'gender': instance.gender,
  'registration_status': instance.registrationStatus,
  'status': instance.status,
  'work_status': instance.workStatus,
  'profile_image': instance.profileImage,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'rating': instance.rating,
  'legal_status': instance.legalStatus,
  'car_info': instance.carInfo,
  'bank_info': instance.bankInfo,
};

_BankInfo _$BankInfoFromJson(Map<String, dynamic> json) => _BankInfo(
  id: (json['id'] as num?)?.toInt(),
  bankName: json['bank_name'] as String?,
  accountName: json['account_name'],
  accountNumber: json['account_number'],
);

Map<String, dynamic> _$BankInfoToJson(_BankInfo instance) => <String, dynamic>{
  'id': instance.id,
  'bank_name': instance.bankName,
  'account_name': instance.accountName,
  'account_number': instance.accountNumber,
};

_CarInfo _$CarInfoFromJson(Map<String, dynamic> json) => _CarInfo(
  id: (json['id'] as num?)?.toInt(),
  carModel: json['car_model'] as String?,
  carColor: json['car_color'] as String?,
  carPlateNumber: json['car_plate_number'] as String?,
  carYear: (json['car_year'] as num?)?.toInt(),
  licenseExpiryDate: json['license_expiry_date'] == null
      ? null
      : DateTime.parse(json['license_expiry_date'] as String),
  sequenceNumber: json['sequence_number'] as String?,
  plateType: (json['plate_type'] as num?)?.toInt(),
  legalStatus: json['legal_status'] as String?,
);

Map<String, dynamic> _$CarInfoToJson(_CarInfo instance) => <String, dynamic>{
  'id': instance.id,
  'car_model': instance.carModel,
  'car_color': instance.carColor,
  'car_plate_number': instance.carPlateNumber,
  'car_year': instance.carYear,
  'license_expiry_date': instance.licenseExpiryDate?.toIso8601String(),
  'sequence_number': instance.sequenceNumber,
  'plate_type': instance.plateType,
  'legal_status': instance.legalStatus,
};
