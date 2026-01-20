// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentStatusModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'data') Data? get data;
/// Create a copy of DocumentStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentStatusModelCopyWith<DocumentStatusModel> get copyWith => _$DocumentStatusModelCopyWithImpl<DocumentStatusModel>(this as DocumentStatusModel, _$identity);

  /// Serializes this DocumentStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'DocumentStatusModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $DocumentStatusModelCopyWith<$Res>  {
  factory $DocumentStatusModelCopyWith(DocumentStatusModel value, $Res Function(DocumentStatusModel) _then) = _$DocumentStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'data') Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$DocumentStatusModelCopyWithImpl<$Res>
    implements $DocumentStatusModelCopyWith<$Res> {
  _$DocumentStatusModelCopyWithImpl(this._self, this._then);

  final DocumentStatusModel _self;
  final $Res Function(DocumentStatusModel) _then;

/// Create a copy of DocumentStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of DocumentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocumentStatusModel].
extension DocumentStatusModelPatterns on DocumentStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'data')  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentStatusModel() when $default != null:
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'data')  Data? data)  $default,) {final _that = this;
switch (_that) {
case _DocumentStatusModel():
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'data')  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _DocumentStatusModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentStatusModel implements DocumentStatusModel {
  const _DocumentStatusModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'data') this.data});
  factory _DocumentStatusModel.fromJson(Map<String, dynamic> json) => _$DocumentStatusModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'data') final  Data? data;

/// Create a copy of DocumentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentStatusModelCopyWith<_DocumentStatusModel> get copyWith => __$DocumentStatusModelCopyWithImpl<_DocumentStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentStatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'DocumentStatusModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DocumentStatusModelCopyWith<$Res> implements $DocumentStatusModelCopyWith<$Res> {
  factory _$DocumentStatusModelCopyWith(_DocumentStatusModel value, $Res Function(_DocumentStatusModel) _then) = __$DocumentStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'data') Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$DocumentStatusModelCopyWithImpl<$Res>
    implements _$DocumentStatusModelCopyWith<$Res> {
  __$DocumentStatusModelCopyWithImpl(this._self, this._then);

  final _DocumentStatusModel _self;
  final $Res Function(_DocumentStatusModel) _then;

/// Create a copy of DocumentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? data = freezed,}) {
  return _then(_DocumentStatusModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of DocumentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: 'total_required') int? get totalRequired;@JsonKey(name: 'uploaded') int? get uploaded;@JsonKey(name: 'approved') int? get approved;@JsonKey(name: 'pending') int? get pending;@JsonKey(name: 'rejected') int? get rejected;@JsonKey(name: 'missing') List<dynamic>? get missing;@JsonKey(name: 'completion_percentage') int? get completionPercentage;@JsonKey(name: 'all_approved') bool? get allApproved;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.totalRequired, totalRequired) || other.totalRequired == totalRequired)&&(identical(other.uploaded, uploaded) || other.uploaded == uploaded)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.rejected, rejected) || other.rejected == rejected)&&const DeepCollectionEquality().equals(other.missing, missing)&&(identical(other.completionPercentage, completionPercentage) || other.completionPercentage == completionPercentage)&&(identical(other.allApproved, allApproved) || other.allApproved == allApproved));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequired,uploaded,approved,pending,rejected,const DeepCollectionEquality().hash(missing),completionPercentage,allApproved);

@override
String toString() {
  return 'Data(totalRequired: $totalRequired, uploaded: $uploaded, approved: $approved, pending: $pending, rejected: $rejected, missing: $missing, completionPercentage: $completionPercentage, allApproved: $allApproved)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_required') int? totalRequired,@JsonKey(name: 'uploaded') int? uploaded,@JsonKey(name: 'approved') int? approved,@JsonKey(name: 'pending') int? pending,@JsonKey(name: 'rejected') int? rejected,@JsonKey(name: 'missing') List<dynamic>? missing,@JsonKey(name: 'completion_percentage') int? completionPercentage,@JsonKey(name: 'all_approved') bool? allApproved
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRequired = freezed,Object? uploaded = freezed,Object? approved = freezed,Object? pending = freezed,Object? rejected = freezed,Object? missing = freezed,Object? completionPercentage = freezed,Object? allApproved = freezed,}) {
  return _then(_self.copyWith(
totalRequired: freezed == totalRequired ? _self.totalRequired : totalRequired // ignore: cast_nullable_to_non_nullable
as int?,uploaded: freezed == uploaded ? _self.uploaded : uploaded // ignore: cast_nullable_to_non_nullable
as int?,approved: freezed == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as int?,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int?,rejected: freezed == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int?,missing: freezed == missing ? _self.missing : missing // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,completionPercentage: freezed == completionPercentage ? _self.completionPercentage : completionPercentage // ignore: cast_nullable_to_non_nullable
as int?,allApproved: freezed == allApproved ? _self.allApproved : allApproved // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_required')  int? totalRequired, @JsonKey(name: 'uploaded')  int? uploaded, @JsonKey(name: 'approved')  int? approved, @JsonKey(name: 'pending')  int? pending, @JsonKey(name: 'rejected')  int? rejected, @JsonKey(name: 'missing')  List<dynamic>? missing, @JsonKey(name: 'completion_percentage')  int? completionPercentage, @JsonKey(name: 'all_approved')  bool? allApproved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.totalRequired,_that.uploaded,_that.approved,_that.pending,_that.rejected,_that.missing,_that.completionPercentage,_that.allApproved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_required')  int? totalRequired, @JsonKey(name: 'uploaded')  int? uploaded, @JsonKey(name: 'approved')  int? approved, @JsonKey(name: 'pending')  int? pending, @JsonKey(name: 'rejected')  int? rejected, @JsonKey(name: 'missing')  List<dynamic>? missing, @JsonKey(name: 'completion_percentage')  int? completionPercentage, @JsonKey(name: 'all_approved')  bool? allApproved)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.totalRequired,_that.uploaded,_that.approved,_that.pending,_that.rejected,_that.missing,_that.completionPercentage,_that.allApproved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_required')  int? totalRequired, @JsonKey(name: 'uploaded')  int? uploaded, @JsonKey(name: 'approved')  int? approved, @JsonKey(name: 'pending')  int? pending, @JsonKey(name: 'rejected')  int? rejected, @JsonKey(name: 'missing')  List<dynamic>? missing, @JsonKey(name: 'completion_percentage')  int? completionPercentage, @JsonKey(name: 'all_approved')  bool? allApproved)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.totalRequired,_that.uploaded,_that.approved,_that.pending,_that.rejected,_that.missing,_that.completionPercentage,_that.allApproved);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: 'total_required') this.totalRequired, @JsonKey(name: 'uploaded') this.uploaded, @JsonKey(name: 'approved') this.approved, @JsonKey(name: 'pending') this.pending, @JsonKey(name: 'rejected') this.rejected, @JsonKey(name: 'missing') final  List<dynamic>? missing, @JsonKey(name: 'completion_percentage') this.completionPercentage, @JsonKey(name: 'all_approved') this.allApproved}): _missing = missing;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: 'total_required') final  int? totalRequired;
@override@JsonKey(name: 'uploaded') final  int? uploaded;
@override@JsonKey(name: 'approved') final  int? approved;
@override@JsonKey(name: 'pending') final  int? pending;
@override@JsonKey(name: 'rejected') final  int? rejected;
 final  List<dynamic>? _missing;
@override@JsonKey(name: 'missing') List<dynamic>? get missing {
  final value = _missing;
  if (value == null) return null;
  if (_missing is EqualUnmodifiableListView) return _missing;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'completion_percentage') final  int? completionPercentage;
@override@JsonKey(name: 'all_approved') final  bool? allApproved;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.totalRequired, totalRequired) || other.totalRequired == totalRequired)&&(identical(other.uploaded, uploaded) || other.uploaded == uploaded)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.rejected, rejected) || other.rejected == rejected)&&const DeepCollectionEquality().equals(other._missing, _missing)&&(identical(other.completionPercentage, completionPercentage) || other.completionPercentage == completionPercentage)&&(identical(other.allApproved, allApproved) || other.allApproved == allApproved));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequired,uploaded,approved,pending,rejected,const DeepCollectionEquality().hash(_missing),completionPercentage,allApproved);

@override
String toString() {
  return 'Data(totalRequired: $totalRequired, uploaded: $uploaded, approved: $approved, pending: $pending, rejected: $rejected, missing: $missing, completionPercentage: $completionPercentage, allApproved: $allApproved)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_required') int? totalRequired,@JsonKey(name: 'uploaded') int? uploaded,@JsonKey(name: 'approved') int? approved,@JsonKey(name: 'pending') int? pending,@JsonKey(name: 'rejected') int? rejected,@JsonKey(name: 'missing') List<dynamic>? missing,@JsonKey(name: 'completion_percentage') int? completionPercentage,@JsonKey(name: 'all_approved') bool? allApproved
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRequired = freezed,Object? uploaded = freezed,Object? approved = freezed,Object? pending = freezed,Object? rejected = freezed,Object? missing = freezed,Object? completionPercentage = freezed,Object? allApproved = freezed,}) {
  return _then(_Data(
totalRequired: freezed == totalRequired ? _self.totalRequired : totalRequired // ignore: cast_nullable_to_non_nullable
as int?,uploaded: freezed == uploaded ? _self.uploaded : uploaded // ignore: cast_nullable_to_non_nullable
as int?,approved: freezed == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as int?,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int?,rejected: freezed == rejected ? _self.rejected : rejected // ignore: cast_nullable_to_non_nullable
as int?,missing: freezed == missing ? _self._missing : missing // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,completionPercentage: freezed == completionPercentage ? _self.completionPercentage : completionPercentage // ignore: cast_nullable_to_non_nullable
as int?,allApproved: freezed == allApproved ? _self.allApproved : allApproved // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
