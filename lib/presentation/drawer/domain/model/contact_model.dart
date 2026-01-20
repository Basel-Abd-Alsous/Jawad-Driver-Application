import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
abstract class ContactModel with _$ContactModel {
  const factory ContactModel({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "payload") required Contact contact,
    @JsonKey(name: "isSuccess") required bool isSuccess,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);
}

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    @JsonKey(name: "company_name") required String companyName,
    @JsonKey(name: "company_description") required String companyDescription,
    @JsonKey(name: "support_mobile") required String supportMobile,
    @JsonKey(name: "phone_numbers") required List<String> phoneNumbers,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "instagram_link") required String instagramLink,
    @JsonKey(name: "twitter_link") required String twitterLink,
    @JsonKey(name: "whatsapp_link") required String whatsappLink,
    @JsonKey(name: "copyright_text") required String copyrightText,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}
