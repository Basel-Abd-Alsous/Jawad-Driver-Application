import 'dart:io';

class ProfileParam {
  final String? firstName;
  final String? lastName;
  final File? profileImage;
  final String? email;

  ProfileParam({this.firstName, this.profileImage, this.lastName, this.email});

  ProfileParam.fromJson(Map<String, dynamic> json)
    : firstName = json['first_name'] as String?,
      profileImage = json['profile_image'] as File?,
      lastName = json['last_name'] as String?,

      email = json['email'] as String?;

  Map<String, dynamic> toJson() => {'first_name': firstName, 'profile_image': profileImage, 'last_name': lastName, 'email': email};
}
