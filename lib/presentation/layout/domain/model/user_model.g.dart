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
    );
  }

  @override
  void write(BinaryWriter writer, Driver obj) {
    writer
      ..writeByte(14)
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
      ..write(obj.rating);
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
};
