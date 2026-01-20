// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactModel _$ContactModelFromJson(Map<String, dynamic> json) =>
    _ContactModel(
      status: json['status'] as String,
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      contact: Contact.fromJson(json['payload'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool,
    );

Map<String, dynamic> _$ContactModelToJson(_ContactModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'payload': instance.contact,
      'isSuccess': instance.isSuccess,
    };

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  companyName: json['company_name'] as String,
  companyDescription: json['company_description'] as String,
  supportMobile: json['support_mobile'] as String,
  phoneNumbers: (json['phone_numbers'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  email: json['email'] as String,
  instagramLink: json['instagram_link'] as String,
  twitterLink: json['twitter_link'] as String,
  whatsappLink: json['whatsapp_link'] as String,
  copyrightText: json['copyright_text'] as String,
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'company_name': instance.companyName,
  'company_description': instance.companyDescription,
  'support_mobile': instance.supportMobile,
  'phone_numbers': instance.phoneNumbers,
  'email': instance.email,
  'instagram_link': instance.instagramLink,
  'twitter_link': instance.twitterLink,
  'whatsapp_link': instance.whatsappLink,
  'copyright_text': instance.copyrightText,
};
