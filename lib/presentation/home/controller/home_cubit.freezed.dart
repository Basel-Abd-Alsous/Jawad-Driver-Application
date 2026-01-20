// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _ErrorProfile value)?  errorProfile,TResult Function( _LoadingMap value)?  loadingMap,TResult Function( _LoadedMap value)?  loadedMap,TResult Function( _LoadingTravelRequest value)?  loadingTravelRequest,TResult Function( _LoadedTravelRequest value)?  loadedTravelRequest,TResult Function( _ErrorTravelRequest value)?  errorTravelRequest,TResult Function( _LoadingWorkStatus value)?  loadingWorkStatus,TResult Function( _LoadedWorkStatus value)?  loadedWorkStatus,TResult Function( _ErrorWorkStatus value)?  errorWorkStatus,TResult Function( _LocationUpdated value)?  locationUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ErrorProfile() when errorProfile != null:
return errorProfile(_that);case _LoadingMap() when loadingMap != null:
return loadingMap(_that);case _LoadedMap() when loadedMap != null:
return loadedMap(_that);case _LoadingTravelRequest() when loadingTravelRequest != null:
return loadingTravelRequest(_that);case _LoadedTravelRequest() when loadedTravelRequest != null:
return loadedTravelRequest(_that);case _ErrorTravelRequest() when errorTravelRequest != null:
return errorTravelRequest(_that);case _LoadingWorkStatus() when loadingWorkStatus != null:
return loadingWorkStatus(_that);case _LoadedWorkStatus() when loadedWorkStatus != null:
return loadedWorkStatus(_that);case _ErrorWorkStatus() when errorWorkStatus != null:
return errorWorkStatus(_that);case _LocationUpdated() when locationUpdated != null:
return locationUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _ErrorProfile value)  errorProfile,required TResult Function( _LoadingMap value)  loadingMap,required TResult Function( _LoadedMap value)  loadedMap,required TResult Function( _LoadingTravelRequest value)  loadingTravelRequest,required TResult Function( _LoadedTravelRequest value)  loadedTravelRequest,required TResult Function( _ErrorTravelRequest value)  errorTravelRequest,required TResult Function( _LoadingWorkStatus value)  loadingWorkStatus,required TResult Function( _LoadedWorkStatus value)  loadedWorkStatus,required TResult Function( _ErrorWorkStatus value)  errorWorkStatus,required TResult Function( _LocationUpdated value)  locationUpdated,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _ErrorProfile():
return errorProfile(_that);case _LoadingMap():
return loadingMap(_that);case _LoadedMap():
return loadedMap(_that);case _LoadingTravelRequest():
return loadingTravelRequest(_that);case _LoadedTravelRequest():
return loadedTravelRequest(_that);case _ErrorTravelRequest():
return errorTravelRequest(_that);case _LoadingWorkStatus():
return loadingWorkStatus(_that);case _LoadedWorkStatus():
return loadedWorkStatus(_that);case _ErrorWorkStatus():
return errorWorkStatus(_that);case _LocationUpdated():
return locationUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _ErrorProfile value)?  errorProfile,TResult? Function( _LoadingMap value)?  loadingMap,TResult? Function( _LoadedMap value)?  loadedMap,TResult? Function( _LoadingTravelRequest value)?  loadingTravelRequest,TResult? Function( _LoadedTravelRequest value)?  loadedTravelRequest,TResult? Function( _ErrorTravelRequest value)?  errorTravelRequest,TResult? Function( _LoadingWorkStatus value)?  loadingWorkStatus,TResult? Function( _LoadedWorkStatus value)?  loadedWorkStatus,TResult? Function( _ErrorWorkStatus value)?  errorWorkStatus,TResult? Function( _LocationUpdated value)?  locationUpdated,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ErrorProfile() when errorProfile != null:
return errorProfile(_that);case _LoadingMap() when loadingMap != null:
return loadingMap(_that);case _LoadedMap() when loadedMap != null:
return loadedMap(_that);case _LoadingTravelRequest() when loadingTravelRequest != null:
return loadingTravelRequest(_that);case _LoadedTravelRequest() when loadedTravelRequest != null:
return loadedTravelRequest(_that);case _ErrorTravelRequest() when errorTravelRequest != null:
return errorTravelRequest(_that);case _LoadingWorkStatus() when loadingWorkStatus != null:
return loadingWorkStatus(_that);case _LoadedWorkStatus() when loadedWorkStatus != null:
return loadedWorkStatus(_that);case _ErrorWorkStatus() when errorWorkStatus != null:
return errorWorkStatus(_that);case _LocationUpdated() when locationUpdated != null:
return locationUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  errorProfile,TResult Function()?  loadingMap,TResult Function()?  loadedMap,TResult Function()?  loadingTravelRequest,TResult Function( List<TravelRequest> userModel)?  loadedTravelRequest,TResult Function( String message)?  errorTravelRequest,TResult Function()?  loadingWorkStatus,TResult Function( UserModel userModel)?  loadedWorkStatus,TResult Function( String message)?  errorWorkStatus,TResult Function( double latitude,  double longitude,  double? accuracy,  double? speed)?  locationUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ErrorProfile() when errorProfile != null:
return errorProfile(_that.message);case _LoadingMap() when loadingMap != null:
return loadingMap();case _LoadedMap() when loadedMap != null:
return loadedMap();case _LoadingTravelRequest() when loadingTravelRequest != null:
return loadingTravelRequest();case _LoadedTravelRequest() when loadedTravelRequest != null:
return loadedTravelRequest(_that.userModel);case _ErrorTravelRequest() when errorTravelRequest != null:
return errorTravelRequest(_that.message);case _LoadingWorkStatus() when loadingWorkStatus != null:
return loadingWorkStatus();case _LoadedWorkStatus() when loadedWorkStatus != null:
return loadedWorkStatus(_that.userModel);case _ErrorWorkStatus() when errorWorkStatus != null:
return errorWorkStatus(_that.message);case _LocationUpdated() when locationUpdated != null:
return locationUpdated(_that.latitude,_that.longitude,_that.accuracy,_that.speed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  errorProfile,required TResult Function()  loadingMap,required TResult Function()  loadedMap,required TResult Function()  loadingTravelRequest,required TResult Function( List<TravelRequest> userModel)  loadedTravelRequest,required TResult Function( String message)  errorTravelRequest,required TResult Function()  loadingWorkStatus,required TResult Function( UserModel userModel)  loadedWorkStatus,required TResult Function( String message)  errorWorkStatus,required TResult Function( double latitude,  double longitude,  double? accuracy,  double? speed)  locationUpdated,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _ErrorProfile():
return errorProfile(_that.message);case _LoadingMap():
return loadingMap();case _LoadedMap():
return loadedMap();case _LoadingTravelRequest():
return loadingTravelRequest();case _LoadedTravelRequest():
return loadedTravelRequest(_that.userModel);case _ErrorTravelRequest():
return errorTravelRequest(_that.message);case _LoadingWorkStatus():
return loadingWorkStatus();case _LoadedWorkStatus():
return loadedWorkStatus(_that.userModel);case _ErrorWorkStatus():
return errorWorkStatus(_that.message);case _LocationUpdated():
return locationUpdated(_that.latitude,_that.longitude,_that.accuracy,_that.speed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  errorProfile,TResult? Function()?  loadingMap,TResult? Function()?  loadedMap,TResult? Function()?  loadingTravelRequest,TResult? Function( List<TravelRequest> userModel)?  loadedTravelRequest,TResult? Function( String message)?  errorTravelRequest,TResult? Function()?  loadingWorkStatus,TResult? Function( UserModel userModel)?  loadedWorkStatus,TResult? Function( String message)?  errorWorkStatus,TResult? Function( double latitude,  double longitude,  double? accuracy,  double? speed)?  locationUpdated,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ErrorProfile() when errorProfile != null:
return errorProfile(_that.message);case _LoadingMap() when loadingMap != null:
return loadingMap();case _LoadedMap() when loadedMap != null:
return loadedMap();case _LoadingTravelRequest() when loadingTravelRequest != null:
return loadingTravelRequest();case _LoadedTravelRequest() when loadedTravelRequest != null:
return loadedTravelRequest(_that.userModel);case _ErrorTravelRequest() when errorTravelRequest != null:
return errorTravelRequest(_that.message);case _LoadingWorkStatus() when loadingWorkStatus != null:
return loadingWorkStatus();case _LoadedWorkStatus() when loadedWorkStatus != null:
return loadedWorkStatus(_that.userModel);case _ErrorWorkStatus() when errorWorkStatus != null:
return errorWorkStatus(_that.message);case _LocationUpdated() when locationUpdated != null:
return locationUpdated(_that.latitude,_that.longitude,_that.accuracy,_that.speed);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _ErrorProfile implements HomeState {
  const _ErrorProfile(this.message);
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorProfileCopyWith<_ErrorProfile> get copyWith => __$ErrorProfileCopyWithImpl<_ErrorProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorProfile&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.errorProfile(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorProfileCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$ErrorProfileCopyWith(_ErrorProfile value, $Res Function(_ErrorProfile) _then) = __$ErrorProfileCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorProfileCopyWithImpl<$Res>
    implements _$ErrorProfileCopyWith<$Res> {
  __$ErrorProfileCopyWithImpl(this._self, this._then);

  final _ErrorProfile _self;
  final $Res Function(_ErrorProfile) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorProfile(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingMap implements HomeState {
  const _LoadingMap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingMap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadingMap()';
}


}




/// @nodoc


class _LoadedMap implements HomeState {
  const _LoadedMap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedMap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadedMap()';
}


}




/// @nodoc


class _LoadingTravelRequest implements HomeState {
  const _LoadingTravelRequest();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingTravelRequest);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadingTravelRequest()';
}


}




/// @nodoc


class _LoadedTravelRequest implements HomeState {
  const _LoadedTravelRequest(final  List<TravelRequest> userModel): _userModel = userModel;
  

 final  List<TravelRequest> _userModel;
 List<TravelRequest> get userModel {
  if (_userModel is EqualUnmodifiableListView) return _userModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userModel);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedTravelRequestCopyWith<_LoadedTravelRequest> get copyWith => __$LoadedTravelRequestCopyWithImpl<_LoadedTravelRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedTravelRequest&&const DeepCollectionEquality().equals(other._userModel, _userModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userModel));

@override
String toString() {
  return 'HomeState.loadedTravelRequest(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class _$LoadedTravelRequestCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$LoadedTravelRequestCopyWith(_LoadedTravelRequest value, $Res Function(_LoadedTravelRequest) _then) = __$LoadedTravelRequestCopyWithImpl;
@useResult
$Res call({
 List<TravelRequest> userModel
});




}
/// @nodoc
class __$LoadedTravelRequestCopyWithImpl<$Res>
    implements _$LoadedTravelRequestCopyWith<$Res> {
  __$LoadedTravelRequestCopyWithImpl(this._self, this._then);

  final _LoadedTravelRequest _self;
  final $Res Function(_LoadedTravelRequest) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = null,}) {
  return _then(_LoadedTravelRequest(
null == userModel ? _self._userModel : userModel // ignore: cast_nullable_to_non_nullable
as List<TravelRequest>,
  ));
}


}

/// @nodoc


class _ErrorTravelRequest implements HomeState {
  const _ErrorTravelRequest(this.message);
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorTravelRequestCopyWith<_ErrorTravelRequest> get copyWith => __$ErrorTravelRequestCopyWithImpl<_ErrorTravelRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorTravelRequest&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.errorTravelRequest(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorTravelRequestCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$ErrorTravelRequestCopyWith(_ErrorTravelRequest value, $Res Function(_ErrorTravelRequest) _then) = __$ErrorTravelRequestCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorTravelRequestCopyWithImpl<$Res>
    implements _$ErrorTravelRequestCopyWith<$Res> {
  __$ErrorTravelRequestCopyWithImpl(this._self, this._then);

  final _ErrorTravelRequest _self;
  final $Res Function(_ErrorTravelRequest) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorTravelRequest(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingWorkStatus implements HomeState {
  const _LoadingWorkStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingWorkStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loadingWorkStatus()';
}


}




/// @nodoc


class _LoadedWorkStatus implements HomeState {
  const _LoadedWorkStatus(this.userModel);
  

 final  UserModel userModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedWorkStatusCopyWith<_LoadedWorkStatus> get copyWith => __$LoadedWorkStatusCopyWithImpl<_LoadedWorkStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedWorkStatus&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,userModel);

@override
String toString() {
  return 'HomeState.loadedWorkStatus(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class _$LoadedWorkStatusCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$LoadedWorkStatusCopyWith(_LoadedWorkStatus value, $Res Function(_LoadedWorkStatus) _then) = __$LoadedWorkStatusCopyWithImpl;
@useResult
$Res call({
 UserModel userModel
});


$UserModelCopyWith<$Res> get userModel;

}
/// @nodoc
class __$LoadedWorkStatusCopyWithImpl<$Res>
    implements _$LoadedWorkStatusCopyWith<$Res> {
  __$LoadedWorkStatusCopyWithImpl(this._self, this._then);

  final _LoadedWorkStatus _self;
  final $Res Function(_LoadedWorkStatus) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = null,}) {
  return _then(_LoadedWorkStatus(
null == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get userModel {
  
  return $UserModelCopyWith<$Res>(_self.userModel, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}

/// @nodoc


class _ErrorWorkStatus implements HomeState {
  const _ErrorWorkStatus(this.message);
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorWorkStatusCopyWith<_ErrorWorkStatus> get copyWith => __$ErrorWorkStatusCopyWithImpl<_ErrorWorkStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorWorkStatus&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.errorWorkStatus(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorWorkStatusCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$ErrorWorkStatusCopyWith(_ErrorWorkStatus value, $Res Function(_ErrorWorkStatus) _then) = __$ErrorWorkStatusCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorWorkStatusCopyWithImpl<$Res>
    implements _$ErrorWorkStatusCopyWith<$Res> {
  __$ErrorWorkStatusCopyWithImpl(this._self, this._then);

  final _ErrorWorkStatus _self;
  final $Res Function(_ErrorWorkStatus) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorWorkStatus(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LocationUpdated implements HomeState {
  const _LocationUpdated({required this.latitude, required this.longitude, this.accuracy, this.speed});
  

 final  double latitude;
 final  double longitude;
 final  double? accuracy;
 final  double? speed;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationUpdatedCopyWith<_LocationUpdated> get copyWith => __$LocationUpdatedCopyWithImpl<_LocationUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationUpdated&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.speed, speed) || other.speed == speed));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,accuracy,speed);

@override
String toString() {
  return 'HomeState.locationUpdated(latitude: $latitude, longitude: $longitude, accuracy: $accuracy, speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$LocationUpdatedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$LocationUpdatedCopyWith(_LocationUpdated value, $Res Function(_LocationUpdated) _then) = __$LocationUpdatedCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, double? accuracy, double? speed
});




}
/// @nodoc
class __$LocationUpdatedCopyWithImpl<$Res>
    implements _$LocationUpdatedCopyWith<$Res> {
  __$LocationUpdatedCopyWithImpl(this._self, this._then);

  final _LocationUpdated _self;
  final $Res Function(_LocationUpdated) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? accuracy = freezed,Object? speed = freezed,}) {
  return _then(_LocationUpdated(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
