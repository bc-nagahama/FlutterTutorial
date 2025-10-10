// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nickname_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NicknameResponse {

@JsonKey(name: 'nickname') String get nickname;
/// Create a copy of NicknameResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NicknameResponseCopyWith<NicknameResponse> get copyWith => _$NicknameResponseCopyWithImpl<NicknameResponse>(this as NicknameResponse, _$identity);

  /// Serializes this NicknameResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NicknameResponse&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname);

@override
String toString() {
  return 'NicknameResponse(nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $NicknameResponseCopyWith<$Res>  {
  factory $NicknameResponseCopyWith(NicknameResponse value, $Res Function(NicknameResponse) _then) = _$NicknameResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nickname') String nickname
});




}
/// @nodoc
class _$NicknameResponseCopyWithImpl<$Res>
    implements $NicknameResponseCopyWith<$Res> {
  _$NicknameResponseCopyWithImpl(this._self, this._then);

  final NicknameResponse _self;
  final $Res Function(NicknameResponse) _then;

/// Create a copy of NicknameResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickname = null,}) {
  return _then(_self.copyWith(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NicknameResponse].
extension NicknameResponsePatterns on NicknameResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NicknameResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NicknameResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NicknameResponse value)  $default,){
final _that = this;
switch (_that) {
case _NicknameResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NicknameResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NicknameResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nickname')  String nickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NicknameResponse() when $default != null:
return $default(_that.nickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nickname')  String nickname)  $default,) {final _that = this;
switch (_that) {
case _NicknameResponse():
return $default(_that.nickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nickname')  String nickname)?  $default,) {final _that = this;
switch (_that) {
case _NicknameResponse() when $default != null:
return $default(_that.nickname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NicknameResponse implements NicknameResponse {
  const _NicknameResponse({@JsonKey(name: 'nickname') this.nickname = ''});
  factory _NicknameResponse.fromJson(Map<String, dynamic> json) => _$NicknameResponseFromJson(json);

@override@JsonKey(name: 'nickname') final  String nickname;

/// Create a copy of NicknameResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NicknameResponseCopyWith<_NicknameResponse> get copyWith => __$NicknameResponseCopyWithImpl<_NicknameResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NicknameResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NicknameResponse&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname);

@override
String toString() {
  return 'NicknameResponse(nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class _$NicknameResponseCopyWith<$Res> implements $NicknameResponseCopyWith<$Res> {
  factory _$NicknameResponseCopyWith(_NicknameResponse value, $Res Function(_NicknameResponse) _then) = __$NicknameResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nickname') String nickname
});




}
/// @nodoc
class __$NicknameResponseCopyWithImpl<$Res>
    implements _$NicknameResponseCopyWith<$Res> {
  __$NicknameResponseCopyWithImpl(this._self, this._then);

  final _NicknameResponse _self;
  final $Res Function(_NicknameResponse) _then;

/// Create a copy of NicknameResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickname = null,}) {
  return _then(_NicknameResponse(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
