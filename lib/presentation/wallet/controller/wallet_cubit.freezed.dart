// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletState()';
}


}

/// @nodoc
class $WalletStateCopyWith<$Res>  {
$WalletStateCopyWith(WalletState _, $Res Function(WalletState) __);
}


/// Adds pattern-matching-related methods to [WalletState].
extension WalletStatePatterns on WalletState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingTransactionWallet value)?  loadingTransactionWallet,TResult Function( _LoadedTransactionWallet value)?  loadedTransactionWallet,TResult Function( _ErrorTransactionWallet value)?  errorTransactionWallet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingTransactionWallet() when loadingTransactionWallet != null:
return loadingTransactionWallet(_that);case _LoadedTransactionWallet() when loadedTransactionWallet != null:
return loadedTransactionWallet(_that);case _ErrorTransactionWallet() when errorTransactionWallet != null:
return errorTransactionWallet(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingTransactionWallet value)  loadingTransactionWallet,required TResult Function( _LoadedTransactionWallet value)  loadedTransactionWallet,required TResult Function( _ErrorTransactionWallet value)  errorTransactionWallet,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingTransactionWallet():
return loadingTransactionWallet(_that);case _LoadedTransactionWallet():
return loadedTransactionWallet(_that);case _ErrorTransactionWallet():
return errorTransactionWallet(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingTransactionWallet value)?  loadingTransactionWallet,TResult? Function( _LoadedTransactionWallet value)?  loadedTransactionWallet,TResult? Function( _ErrorTransactionWallet value)?  errorTransactionWallet,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingTransactionWallet() when loadingTransactionWallet != null:
return loadingTransactionWallet(_that);case _LoadedTransactionWallet() when loadedTransactionWallet != null:
return loadedTransactionWallet(_that);case _ErrorTransactionWallet() when errorTransactionWallet != null:
return errorTransactionWallet(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingTransactionWallet,TResult Function( TransactionsModel data,  bool? hasMore)?  loadedTransactionWallet,TResult Function( String message)?  errorTransactionWallet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingTransactionWallet() when loadingTransactionWallet != null:
return loadingTransactionWallet();case _LoadedTransactionWallet() when loadedTransactionWallet != null:
return loadedTransactionWallet(_that.data,_that.hasMore);case _ErrorTransactionWallet() when errorTransactionWallet != null:
return errorTransactionWallet(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingTransactionWallet,required TResult Function( TransactionsModel data,  bool? hasMore)  loadedTransactionWallet,required TResult Function( String message)  errorTransactionWallet,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingTransactionWallet():
return loadingTransactionWallet();case _LoadedTransactionWallet():
return loadedTransactionWallet(_that.data,_that.hasMore);case _ErrorTransactionWallet():
return errorTransactionWallet(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingTransactionWallet,TResult? Function( TransactionsModel data,  bool? hasMore)?  loadedTransactionWallet,TResult? Function( String message)?  errorTransactionWallet,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingTransactionWallet() when loadingTransactionWallet != null:
return loadingTransactionWallet();case _LoadedTransactionWallet() when loadedTransactionWallet != null:
return loadedTransactionWallet(_that.data,_that.hasMore);case _ErrorTransactionWallet() when errorTransactionWallet != null:
return errorTransactionWallet(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements WalletState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletState.initial()';
}


}




/// @nodoc


class _LoadingTransactionWallet implements WalletState {
  const _LoadingTransactionWallet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingTransactionWallet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletState.loadingTransactionWallet()';
}


}




/// @nodoc


class _LoadedTransactionWallet implements WalletState {
  const _LoadedTransactionWallet({required this.data, this.hasMore = false});
  

 final  TransactionsModel data;
@JsonKey() final  bool? hasMore;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedTransactionWalletCopyWith<_LoadedTransactionWallet> get copyWith => __$LoadedTransactionWalletCopyWithImpl<_LoadedTransactionWallet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedTransactionWallet&&(identical(other.data, data) || other.data == data)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,data,hasMore);

@override
String toString() {
  return 'WalletState.loadedTransactionWallet(data: $data, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedTransactionWalletCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory _$LoadedTransactionWalletCopyWith(_LoadedTransactionWallet value, $Res Function(_LoadedTransactionWallet) _then) = __$LoadedTransactionWalletCopyWithImpl;
@useResult
$Res call({
 TransactionsModel data, bool? hasMore
});


$TransactionsModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoadedTransactionWalletCopyWithImpl<$Res>
    implements _$LoadedTransactionWalletCopyWith<$Res> {
  __$LoadedTransactionWalletCopyWithImpl(this._self, this._then);

  final _LoadedTransactionWallet _self;
  final $Res Function(_LoadedTransactionWallet) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? hasMore = freezed,}) {
  return _then(_LoadedTransactionWallet(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionsModel,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionsModelCopyWith<$Res> get data {
  
  return $TransactionsModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _ErrorTransactionWallet implements WalletState {
  const _ErrorTransactionWallet(this.message);
  

 final  String message;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorTransactionWalletCopyWith<_ErrorTransactionWallet> get copyWith => __$ErrorTransactionWalletCopyWithImpl<_ErrorTransactionWallet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorTransactionWallet&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WalletState.errorTransactionWallet(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorTransactionWalletCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory _$ErrorTransactionWalletCopyWith(_ErrorTransactionWallet value, $Res Function(_ErrorTransactionWallet) _then) = __$ErrorTransactionWalletCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorTransactionWalletCopyWithImpl<$Res>
    implements _$ErrorTransactionWalletCopyWith<$Res> {
  __$ErrorTransactionWalletCopyWithImpl(this._self, this._then);

  final _ErrorTransactionWallet _self;
  final $Res Function(_ErrorTransactionWallet) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorTransactionWallet(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
