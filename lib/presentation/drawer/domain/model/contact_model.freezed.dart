// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactModel {

@JsonKey(name: "status") String get status;@JsonKey(name: "code") int get code;@JsonKey(name: "message") String get message;@JsonKey(name: "payload") Contact get contact;@JsonKey(name: "isSuccess") bool get isSuccess;
/// Create a copy of ContactModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactModelCopyWith<ContactModel> get copyWith => _$ContactModelCopyWithImpl<ContactModel>(this as ContactModel, _$identity);

  /// Serializes this ContactModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,contact,isSuccess);

@override
String toString() {
  return 'ContactModel(status: $status, code: $code, message: $message, contact: $contact, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $ContactModelCopyWith<$Res>  {
  factory $ContactModelCopyWith(ContactModel value, $Res Function(ContactModel) _then) = _$ContactModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "code") int code,@JsonKey(name: "message") String message,@JsonKey(name: "payload") Contact contact,@JsonKey(name: "isSuccess") bool isSuccess
});


$ContactCopyWith<$Res> get contact;

}
/// @nodoc
class _$ContactModelCopyWithImpl<$Res>
    implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._self, this._then);

  final ContactModel _self;
  final $Res Function(ContactModel) _then;

/// Create a copy of ContactModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? contact = null,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ContactModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res> get contact {
  
  return $ContactCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContactModel].
extension ContactModelPatterns on ContactModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactModel value)  $default,){
final _that = this;
switch (_that) {
case _ContactModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContactModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "code")  int code, @JsonKey(name: "message")  String message, @JsonKey(name: "payload")  Contact contact, @JsonKey(name: "isSuccess")  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.contact,_that.isSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "code")  int code, @JsonKey(name: "message")  String message, @JsonKey(name: "payload")  Contact contact, @JsonKey(name: "isSuccess")  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _ContactModel():
return $default(_that.status,_that.code,_that.message,_that.contact,_that.isSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "code")  int code, @JsonKey(name: "message")  String message, @JsonKey(name: "payload")  Contact contact, @JsonKey(name: "isSuccess")  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ContactModel() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.contact,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactModel implements ContactModel {
  const _ContactModel({@JsonKey(name: "status") required this.status, @JsonKey(name: "code") required this.code, @JsonKey(name: "message") required this.message, @JsonKey(name: "payload") required this.contact, @JsonKey(name: "isSuccess") required this.isSuccess});
  factory _ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "code") final  int code;
@override@JsonKey(name: "message") final  String message;
@override@JsonKey(name: "payload") final  Contact contact;
@override@JsonKey(name: "isSuccess") final  bool isSuccess;

/// Create a copy of ContactModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactModelCopyWith<_ContactModel> get copyWith => __$ContactModelCopyWithImpl<_ContactModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactModel&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,contact,isSuccess);

@override
String toString() {
  return 'ContactModel(status: $status, code: $code, message: $message, contact: $contact, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$ContactModelCopyWith<$Res> implements $ContactModelCopyWith<$Res> {
  factory _$ContactModelCopyWith(_ContactModel value, $Res Function(_ContactModel) _then) = __$ContactModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "code") int code,@JsonKey(name: "message") String message,@JsonKey(name: "payload") Contact contact,@JsonKey(name: "isSuccess") bool isSuccess
});


@override $ContactCopyWith<$Res> get contact;

}
/// @nodoc
class __$ContactModelCopyWithImpl<$Res>
    implements _$ContactModelCopyWith<$Res> {
  __$ContactModelCopyWithImpl(this._self, this._then);

  final _ContactModel _self;
  final $Res Function(_ContactModel) _then;

/// Create a copy of ContactModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? contact = null,Object? isSuccess = null,}) {
  return _then(_ContactModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ContactModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res> get contact {
  
  return $ContactCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// @nodoc
mixin _$Contact {

@JsonKey(name: "company_name") String get companyName;@JsonKey(name: "company_description") String get companyDescription;@JsonKey(name: "support_mobile") String get supportMobile;@JsonKey(name: "phone_numbers") List<String> get phoneNumbers;@JsonKey(name: "email") String get email;@JsonKey(name: "instagram_link") String get instagramLink;@JsonKey(name: "twitter_link") String get twitterLink;@JsonKey(name: "whatsapp_link") String get whatsappLink;@JsonKey(name: "copyright_text") String get copyrightText;
/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactCopyWith<Contact> get copyWith => _$ContactCopyWithImpl<Contact>(this as Contact, _$identity);

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contact&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyDescription, companyDescription) || other.companyDescription == companyDescription)&&(identical(other.supportMobile, supportMobile) || other.supportMobile == supportMobile)&&const DeepCollectionEquality().equals(other.phoneNumbers, phoneNumbers)&&(identical(other.email, email) || other.email == email)&&(identical(other.instagramLink, instagramLink) || other.instagramLink == instagramLink)&&(identical(other.twitterLink, twitterLink) || other.twitterLink == twitterLink)&&(identical(other.whatsappLink, whatsappLink) || other.whatsappLink == whatsappLink)&&(identical(other.copyrightText, copyrightText) || other.copyrightText == copyrightText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,companyDescription,supportMobile,const DeepCollectionEquality().hash(phoneNumbers),email,instagramLink,twitterLink,whatsappLink,copyrightText);

@override
String toString() {
  return 'Contact(companyName: $companyName, companyDescription: $companyDescription, supportMobile: $supportMobile, phoneNumbers: $phoneNumbers, email: $email, instagramLink: $instagramLink, twitterLink: $twitterLink, whatsappLink: $whatsappLink, copyrightText: $copyrightText)';
}


}

/// @nodoc
abstract mixin class $ContactCopyWith<$Res>  {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) _then) = _$ContactCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "company_name") String companyName,@JsonKey(name: "company_description") String companyDescription,@JsonKey(name: "support_mobile") String supportMobile,@JsonKey(name: "phone_numbers") List<String> phoneNumbers,@JsonKey(name: "email") String email,@JsonKey(name: "instagram_link") String instagramLink,@JsonKey(name: "twitter_link") String twitterLink,@JsonKey(name: "whatsapp_link") String whatsappLink,@JsonKey(name: "copyright_text") String copyrightText
});




}
/// @nodoc
class _$ContactCopyWithImpl<$Res>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._self, this._then);

  final Contact _self;
  final $Res Function(Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? companyDescription = null,Object? supportMobile = null,Object? phoneNumbers = null,Object? email = null,Object? instagramLink = null,Object? twitterLink = null,Object? whatsappLink = null,Object? copyrightText = null,}) {
  return _then(_self.copyWith(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyDescription: null == companyDescription ? _self.companyDescription : companyDescription // ignore: cast_nullable_to_non_nullable
as String,supportMobile: null == supportMobile ? _self.supportMobile : supportMobile // ignore: cast_nullable_to_non_nullable
as String,phoneNumbers: null == phoneNumbers ? _self.phoneNumbers : phoneNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,instagramLink: null == instagramLink ? _self.instagramLink : instagramLink // ignore: cast_nullable_to_non_nullable
as String,twitterLink: null == twitterLink ? _self.twitterLink : twitterLink // ignore: cast_nullable_to_non_nullable
as String,whatsappLink: null == whatsappLink ? _self.whatsappLink : whatsappLink // ignore: cast_nullable_to_non_nullable
as String,copyrightText: null == copyrightText ? _self.copyrightText : copyrightText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Contact].
extension ContactPatterns on Contact {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contact value)  $default,){
final _that = this;
switch (_that) {
case _Contact():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contact value)?  $default,){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "company_name")  String companyName, @JsonKey(name: "company_description")  String companyDescription, @JsonKey(name: "support_mobile")  String supportMobile, @JsonKey(name: "phone_numbers")  List<String> phoneNumbers, @JsonKey(name: "email")  String email, @JsonKey(name: "instagram_link")  String instagramLink, @JsonKey(name: "twitter_link")  String twitterLink, @JsonKey(name: "whatsapp_link")  String whatsappLink, @JsonKey(name: "copyright_text")  String copyrightText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.companyName,_that.companyDescription,_that.supportMobile,_that.phoneNumbers,_that.email,_that.instagramLink,_that.twitterLink,_that.whatsappLink,_that.copyrightText);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "company_name")  String companyName, @JsonKey(name: "company_description")  String companyDescription, @JsonKey(name: "support_mobile")  String supportMobile, @JsonKey(name: "phone_numbers")  List<String> phoneNumbers, @JsonKey(name: "email")  String email, @JsonKey(name: "instagram_link")  String instagramLink, @JsonKey(name: "twitter_link")  String twitterLink, @JsonKey(name: "whatsapp_link")  String whatsappLink, @JsonKey(name: "copyright_text")  String copyrightText)  $default,) {final _that = this;
switch (_that) {
case _Contact():
return $default(_that.companyName,_that.companyDescription,_that.supportMobile,_that.phoneNumbers,_that.email,_that.instagramLink,_that.twitterLink,_that.whatsappLink,_that.copyrightText);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "company_name")  String companyName, @JsonKey(name: "company_description")  String companyDescription, @JsonKey(name: "support_mobile")  String supportMobile, @JsonKey(name: "phone_numbers")  List<String> phoneNumbers, @JsonKey(name: "email")  String email, @JsonKey(name: "instagram_link")  String instagramLink, @JsonKey(name: "twitter_link")  String twitterLink, @JsonKey(name: "whatsapp_link")  String whatsappLink, @JsonKey(name: "copyright_text")  String copyrightText)?  $default,) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.companyName,_that.companyDescription,_that.supportMobile,_that.phoneNumbers,_that.email,_that.instagramLink,_that.twitterLink,_that.whatsappLink,_that.copyrightText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Contact implements Contact {
  const _Contact({@JsonKey(name: "company_name") required this.companyName, @JsonKey(name: "company_description") required this.companyDescription, @JsonKey(name: "support_mobile") required this.supportMobile, @JsonKey(name: "phone_numbers") required final  List<String> phoneNumbers, @JsonKey(name: "email") required this.email, @JsonKey(name: "instagram_link") required this.instagramLink, @JsonKey(name: "twitter_link") required this.twitterLink, @JsonKey(name: "whatsapp_link") required this.whatsappLink, @JsonKey(name: "copyright_text") required this.copyrightText}): _phoneNumbers = phoneNumbers;
  factory _Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

@override@JsonKey(name: "company_name") final  String companyName;
@override@JsonKey(name: "company_description") final  String companyDescription;
@override@JsonKey(name: "support_mobile") final  String supportMobile;
 final  List<String> _phoneNumbers;
@override@JsonKey(name: "phone_numbers") List<String> get phoneNumbers {
  if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phoneNumbers);
}

@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "instagram_link") final  String instagramLink;
@override@JsonKey(name: "twitter_link") final  String twitterLink;
@override@JsonKey(name: "whatsapp_link") final  String whatsappLink;
@override@JsonKey(name: "copyright_text") final  String copyrightText;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactCopyWith<_Contact> get copyWith => __$ContactCopyWithImpl<_Contact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contact&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyDescription, companyDescription) || other.companyDescription == companyDescription)&&(identical(other.supportMobile, supportMobile) || other.supportMobile == supportMobile)&&const DeepCollectionEquality().equals(other._phoneNumbers, _phoneNumbers)&&(identical(other.email, email) || other.email == email)&&(identical(other.instagramLink, instagramLink) || other.instagramLink == instagramLink)&&(identical(other.twitterLink, twitterLink) || other.twitterLink == twitterLink)&&(identical(other.whatsappLink, whatsappLink) || other.whatsappLink == whatsappLink)&&(identical(other.copyrightText, copyrightText) || other.copyrightText == copyrightText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,companyDescription,supportMobile,const DeepCollectionEquality().hash(_phoneNumbers),email,instagramLink,twitterLink,whatsappLink,copyrightText);

@override
String toString() {
  return 'Contact(companyName: $companyName, companyDescription: $companyDescription, supportMobile: $supportMobile, phoneNumbers: $phoneNumbers, email: $email, instagramLink: $instagramLink, twitterLink: $twitterLink, whatsappLink: $whatsappLink, copyrightText: $copyrightText)';
}


}

/// @nodoc
abstract mixin class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) _then) = __$ContactCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "company_name") String companyName,@JsonKey(name: "company_description") String companyDescription,@JsonKey(name: "support_mobile") String supportMobile,@JsonKey(name: "phone_numbers") List<String> phoneNumbers,@JsonKey(name: "email") String email,@JsonKey(name: "instagram_link") String instagramLink,@JsonKey(name: "twitter_link") String twitterLink,@JsonKey(name: "whatsapp_link") String whatsappLink,@JsonKey(name: "copyright_text") String copyrightText
});




}
/// @nodoc
class __$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(this._self, this._then);

  final _Contact _self;
  final $Res Function(_Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? companyDescription = null,Object? supportMobile = null,Object? phoneNumbers = null,Object? email = null,Object? instagramLink = null,Object? twitterLink = null,Object? whatsappLink = null,Object? copyrightText = null,}) {
  return _then(_Contact(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyDescription: null == companyDescription ? _self.companyDescription : companyDescription // ignore: cast_nullable_to_non_nullable
as String,supportMobile: null == supportMobile ? _self.supportMobile : supportMobile // ignore: cast_nullable_to_non_nullable
as String,phoneNumbers: null == phoneNumbers ? _self._phoneNumbers : phoneNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,instagramLink: null == instagramLink ? _self.instagramLink : instagramLink // ignore: cast_nullable_to_non_nullable
as String,twitterLink: null == twitterLink ? _self.twitterLink : twitterLink // ignore: cast_nullable_to_non_nullable
as String,whatsappLink: null == whatsappLink ? _self.whatsappLink : whatsappLink // ignore: cast_nullable_to_non_nullable
as String,copyrightText: null == copyrightText ? _self.copyrightText : copyrightText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
