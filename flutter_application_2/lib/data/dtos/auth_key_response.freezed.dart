// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_key_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthKeyResponse {

@JsonKey(name: 'key') String get key;
/// Create a copy of AuthKeyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthKeyResponseCopyWith<AuthKeyResponse> get copyWith => _$AuthKeyResponseCopyWithImpl<AuthKeyResponse>(this as AuthKeyResponse, _$identity);

  /// Serializes this AuthKeyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthKeyResponse&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'AuthKeyResponse(key: $key)';
}


}

/// @nodoc
abstract mixin class $AuthKeyResponseCopyWith<$Res>  {
  factory $AuthKeyResponseCopyWith(AuthKeyResponse value, $Res Function(AuthKeyResponse) _then) = _$AuthKeyResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key') String key
});




}
/// @nodoc
class _$AuthKeyResponseCopyWithImpl<$Res>
    implements $AuthKeyResponseCopyWith<$Res> {
  _$AuthKeyResponseCopyWithImpl(this._self, this._then);

  final AuthKeyResponse _self;
  final $Res Function(AuthKeyResponse) _then;

/// Create a copy of AuthKeyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthKeyResponse].
extension AuthKeyResponsePatterns on AuthKeyResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthKeyResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthKeyResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthKeyResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthKeyResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthKeyResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthKeyResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthKeyResponse() when $default != null:
return $default(_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key)  $default,) {final _that = this;
switch (_that) {
case _AuthKeyResponse():
return $default(_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'key')  String key)?  $default,) {final _that = this;
switch (_that) {
case _AuthKeyResponse() when $default != null:
return $default(_that.key);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthKeyResponse implements AuthKeyResponse {
  const _AuthKeyResponse({@JsonKey(name: 'key') this.key = ''});
  factory _AuthKeyResponse.fromJson(Map<String, dynamic> json) => _$AuthKeyResponseFromJson(json);

@override@JsonKey(name: 'key') final  String key;

/// Create a copy of AuthKeyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthKeyResponseCopyWith<_AuthKeyResponse> get copyWith => __$AuthKeyResponseCopyWithImpl<_AuthKeyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthKeyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthKeyResponse&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'AuthKeyResponse(key: $key)';
}


}

/// @nodoc
abstract mixin class _$AuthKeyResponseCopyWith<$Res> implements $AuthKeyResponseCopyWith<$Res> {
  factory _$AuthKeyResponseCopyWith(_AuthKeyResponse value, $Res Function(_AuthKeyResponse) _then) = __$AuthKeyResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key') String key
});




}
/// @nodoc
class __$AuthKeyResponseCopyWithImpl<$Res>
    implements _$AuthKeyResponseCopyWith<$Res> {
  __$AuthKeyResponseCopyWithImpl(this._self, this._then);

  final _AuthKeyResponse _self;
  final $Res Function(_AuthKeyResponse) _then;

/// Create a copy of AuthKeyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,}) {
  return _then(_AuthKeyResponse(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
