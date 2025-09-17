// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 int get counter; String get subjectName1; String get subjectName2; String get unitName1; String get unitName2; String get grade1; String get grade2; String get lessonName1; String get lessonName2; int get difficulty1; int get difficulty2;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.subjectName1, subjectName1) || other.subjectName1 == subjectName1)&&(identical(other.subjectName2, subjectName2) || other.subjectName2 == subjectName2)&&(identical(other.unitName1, unitName1) || other.unitName1 == unitName1)&&(identical(other.unitName2, unitName2) || other.unitName2 == unitName2)&&(identical(other.grade1, grade1) || other.grade1 == grade1)&&(identical(other.grade2, grade2) || other.grade2 == grade2)&&(identical(other.lessonName1, lessonName1) || other.lessonName1 == lessonName1)&&(identical(other.lessonName2, lessonName2) || other.lessonName2 == lessonName2)&&(identical(other.difficulty1, difficulty1) || other.difficulty1 == difficulty1)&&(identical(other.difficulty2, difficulty2) || other.difficulty2 == difficulty2));
}


@override
int get hashCode => Object.hash(runtimeType,counter,subjectName1,subjectName2,unitName1,unitName2,grade1,grade2,lessonName1,lessonName2,difficulty1,difficulty2);

@override
String toString() {
  return 'HomeState(counter: $counter, subjectName1: $subjectName1, subjectName2: $subjectName2, unitName1: $unitName1, unitName2: $unitName2, grade1: $grade1, grade2: $grade2, lessonName1: $lessonName1, lessonName2: $lessonName2, difficulty1: $difficulty1, difficulty2: $difficulty2)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 int counter, String subjectName1, String subjectName2, String unitName1, String unitName2, String grade1, String grade2, String lessonName1, String lessonName2, int difficulty1, int difficulty2
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? counter = null,Object? subjectName1 = null,Object? subjectName2 = null,Object? unitName1 = null,Object? unitName2 = null,Object? grade1 = null,Object? grade2 = null,Object? lessonName1 = null,Object? lessonName2 = null,Object? difficulty1 = null,Object? difficulty2 = null,}) {
  return _then(_self.copyWith(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,subjectName1: null == subjectName1 ? _self.subjectName1 : subjectName1 // ignore: cast_nullable_to_non_nullable
as String,subjectName2: null == subjectName2 ? _self.subjectName2 : subjectName2 // ignore: cast_nullable_to_non_nullable
as String,unitName1: null == unitName1 ? _self.unitName1 : unitName1 // ignore: cast_nullable_to_non_nullable
as String,unitName2: null == unitName2 ? _self.unitName2 : unitName2 // ignore: cast_nullable_to_non_nullable
as String,grade1: null == grade1 ? _self.grade1 : grade1 // ignore: cast_nullable_to_non_nullable
as String,grade2: null == grade2 ? _self.grade2 : grade2 // ignore: cast_nullable_to_non_nullable
as String,lessonName1: null == lessonName1 ? _self.lessonName1 : lessonName1 // ignore: cast_nullable_to_non_nullable
as String,lessonName2: null == lessonName2 ? _self.lessonName2 : lessonName2 // ignore: cast_nullable_to_non_nullable
as String,difficulty1: null == difficulty1 ? _self.difficulty1 : difficulty1 // ignore: cast_nullable_to_non_nullable
as int,difficulty2: null == difficulty2 ? _self.difficulty2 : difficulty2 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int counter,  String subjectName1,  String subjectName2,  String unitName1,  String unitName2,  String grade1,  String grade2,  String lessonName1,  String lessonName2,  int difficulty1,  int difficulty2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.counter,_that.subjectName1,_that.subjectName2,_that.unitName1,_that.unitName2,_that.grade1,_that.grade2,_that.lessonName1,_that.lessonName2,_that.difficulty1,_that.difficulty2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int counter,  String subjectName1,  String subjectName2,  String unitName1,  String unitName2,  String grade1,  String grade2,  String lessonName1,  String lessonName2,  int difficulty1,  int difficulty2)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.counter,_that.subjectName1,_that.subjectName2,_that.unitName1,_that.unitName2,_that.grade1,_that.grade2,_that.lessonName1,_that.lessonName2,_that.difficulty1,_that.difficulty2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int counter,  String subjectName1,  String subjectName2,  String unitName1,  String unitName2,  String grade1,  String grade2,  String lessonName1,  String lessonName2,  int difficulty1,  int difficulty2)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.counter,_that.subjectName1,_that.subjectName2,_that.unitName1,_that.unitName2,_that.grade1,_that.grade2,_that.lessonName1,_that.lessonName2,_that.difficulty1,_that.difficulty2);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
   _HomeState({this.counter = 0, this.subjectName1 = '', this.subjectName2 = '', this.unitName1 = '', this.unitName2 = '', this.grade1 = '', this.grade2 = '', this.lessonName1 = '', this.lessonName2 = '', this.difficulty1 = 0, this.difficulty2 = 0});
  

@override@JsonKey() final  int counter;
@override@JsonKey() final  String subjectName1;
@override@JsonKey() final  String subjectName2;
@override@JsonKey() final  String unitName1;
@override@JsonKey() final  String unitName2;
@override@JsonKey() final  String grade1;
@override@JsonKey() final  String grade2;
@override@JsonKey() final  String lessonName1;
@override@JsonKey() final  String lessonName2;
@override@JsonKey() final  int difficulty1;
@override@JsonKey() final  int difficulty2;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.subjectName1, subjectName1) || other.subjectName1 == subjectName1)&&(identical(other.subjectName2, subjectName2) || other.subjectName2 == subjectName2)&&(identical(other.unitName1, unitName1) || other.unitName1 == unitName1)&&(identical(other.unitName2, unitName2) || other.unitName2 == unitName2)&&(identical(other.grade1, grade1) || other.grade1 == grade1)&&(identical(other.grade2, grade2) || other.grade2 == grade2)&&(identical(other.lessonName1, lessonName1) || other.lessonName1 == lessonName1)&&(identical(other.lessonName2, lessonName2) || other.lessonName2 == lessonName2)&&(identical(other.difficulty1, difficulty1) || other.difficulty1 == difficulty1)&&(identical(other.difficulty2, difficulty2) || other.difficulty2 == difficulty2));
}


@override
int get hashCode => Object.hash(runtimeType,counter,subjectName1,subjectName2,unitName1,unitName2,grade1,grade2,lessonName1,lessonName2,difficulty1,difficulty2);

@override
String toString() {
  return 'HomeState(counter: $counter, subjectName1: $subjectName1, subjectName2: $subjectName2, unitName1: $unitName1, unitName2: $unitName2, grade1: $grade1, grade2: $grade2, lessonName1: $lessonName1, lessonName2: $lessonName2, difficulty1: $difficulty1, difficulty2: $difficulty2)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 int counter, String subjectName1, String subjectName2, String unitName1, String unitName2, String grade1, String grade2, String lessonName1, String lessonName2, int difficulty1, int difficulty2
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? counter = null,Object? subjectName1 = null,Object? subjectName2 = null,Object? unitName1 = null,Object? unitName2 = null,Object? grade1 = null,Object? grade2 = null,Object? lessonName1 = null,Object? lessonName2 = null,Object? difficulty1 = null,Object? difficulty2 = null,}) {
  return _then(_HomeState(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,subjectName1: null == subjectName1 ? _self.subjectName1 : subjectName1 // ignore: cast_nullable_to_non_nullable
as String,subjectName2: null == subjectName2 ? _self.subjectName2 : subjectName2 // ignore: cast_nullable_to_non_nullable
as String,unitName1: null == unitName1 ? _self.unitName1 : unitName1 // ignore: cast_nullable_to_non_nullable
as String,unitName2: null == unitName2 ? _self.unitName2 : unitName2 // ignore: cast_nullable_to_non_nullable
as String,grade1: null == grade1 ? _self.grade1 : grade1 // ignore: cast_nullable_to_non_nullable
as String,grade2: null == grade2 ? _self.grade2 : grade2 // ignore: cast_nullable_to_non_nullable
as String,lessonName1: null == lessonName1 ? _self.lessonName1 : lessonName1 // ignore: cast_nullable_to_non_nullable
as String,lessonName2: null == lessonName2 ? _self.lessonName2 : lessonName2 // ignore: cast_nullable_to_non_nullable
as String,difficulty1: null == difficulty1 ? _self.difficulty1 : difficulty1 // ignore: cast_nullable_to_non_nullable
as int,difficulty2: null == difficulty2 ? _self.difficulty2 : difficulty2 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
