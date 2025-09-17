// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectsResponse {

@JsonKey(name: 'subjects') List<SubjectDto> get subjects;
/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectsResponseCopyWith<SubjectsResponse> get copyWith => _$SubjectsResponseCopyWithImpl<SubjectsResponse>(this as SubjectsResponse, _$identity);

  /// Serializes this SubjectsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectsResponse&&const DeepCollectionEquality().equals(other.subjects, subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(subjects));

@override
String toString() {
  return 'SubjectsResponse(subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class $SubjectsResponseCopyWith<$Res>  {
  factory $SubjectsResponseCopyWith(SubjectsResponse value, $Res Function(SubjectsResponse) _then) = _$SubjectsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subjects') List<SubjectDto> subjects
});




}
/// @nodoc
class _$SubjectsResponseCopyWithImpl<$Res>
    implements $SubjectsResponseCopyWith<$Res> {
  _$SubjectsResponseCopyWithImpl(this._self, this._then);

  final SubjectsResponse _self;
  final $Res Function(SubjectsResponse) _then;

/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjects = null,}) {
  return _then(_self.copyWith(
subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectsResponse].
extension SubjectsResponsePatterns on SubjectsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectsResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubjectsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subjects')  List<SubjectDto> subjects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
return $default(_that.subjects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subjects')  List<SubjectDto> subjects)  $default,) {final _that = this;
switch (_that) {
case _SubjectsResponse():
return $default(_that.subjects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subjects')  List<SubjectDto> subjects)?  $default,) {final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
return $default(_that.subjects);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectsResponse implements SubjectsResponse {
  const _SubjectsResponse({@JsonKey(name: 'subjects') final  List<SubjectDto> subjects = const []}): _subjects = subjects;
  factory _SubjectsResponse.fromJson(Map<String, dynamic> json) => _$SubjectsResponseFromJson(json);

 final  List<SubjectDto> _subjects;
@override@JsonKey(name: 'subjects') List<SubjectDto> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}


/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectsResponseCopyWith<_SubjectsResponse> get copyWith => __$SubjectsResponseCopyWithImpl<_SubjectsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectsResponse&&const DeepCollectionEquality().equals(other._subjects, _subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subjects));

@override
String toString() {
  return 'SubjectsResponse(subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class _$SubjectsResponseCopyWith<$Res> implements $SubjectsResponseCopyWith<$Res> {
  factory _$SubjectsResponseCopyWith(_SubjectsResponse value, $Res Function(_SubjectsResponse) _then) = __$SubjectsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subjects') List<SubjectDto> subjects
});




}
/// @nodoc
class __$SubjectsResponseCopyWithImpl<$Res>
    implements _$SubjectsResponseCopyWith<$Res> {
  __$SubjectsResponseCopyWithImpl(this._self, this._then);

  final _SubjectsResponse _self;
  final $Res Function(_SubjectsResponse) _then;

/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjects = null,}) {
  return _then(_SubjectsResponse(
subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectDto>,
  ));
}


}


/// @nodoc
mixin _$SubjectDto {

@JsonKey(name: 'subjectName') String get subjectName;@JsonKey(name: 'unit') UnitDto? get unit;
/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectDtoCopyWith<SubjectDto> get copyWith => _$SubjectDtoCopyWithImpl<SubjectDto>(this as SubjectDto, _$identity);

  /// Serializes this SubjectDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectDto&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjectName,unit);

@override
String toString() {
  return 'SubjectDto(subjectName: $subjectName, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $SubjectDtoCopyWith<$Res>  {
  factory $SubjectDtoCopyWith(SubjectDto value, $Res Function(SubjectDto) _then) = _$SubjectDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subjectName') String subjectName,@JsonKey(name: 'unit') UnitDto? unit
});


$UnitDtoCopyWith<$Res>? get unit;

}
/// @nodoc
class _$SubjectDtoCopyWithImpl<$Res>
    implements $SubjectDtoCopyWith<$Res> {
  _$SubjectDtoCopyWithImpl(this._self, this._then);

  final SubjectDto _self;
  final $Res Function(SubjectDto) _then;

/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectName = null,Object? unit = freezed,}) {
  return _then(_self.copyWith(
subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as UnitDto?,
  ));
}
/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnitDtoCopyWith<$Res>? get unit {
    if (_self.unit == null) {
    return null;
  }

  return $UnitDtoCopyWith<$Res>(_self.unit!, (value) {
    return _then(_self.copyWith(unit: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubjectDto].
extension SubjectDtoPatterns on SubjectDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectDto value)  $default,){
final _that = this;
switch (_that) {
case _SubjectDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectDto value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subjectName')  String subjectName, @JsonKey(name: 'unit')  UnitDto? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
return $default(_that.subjectName,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subjectName')  String subjectName, @JsonKey(name: 'unit')  UnitDto? unit)  $default,) {final _that = this;
switch (_that) {
case _SubjectDto():
return $default(_that.subjectName,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subjectName')  String subjectName, @JsonKey(name: 'unit')  UnitDto? unit)?  $default,) {final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
return $default(_that.subjectName,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectDto implements SubjectDto {
  const _SubjectDto({@JsonKey(name: 'subjectName') this.subjectName = '', @JsonKey(name: 'unit') this.unit});
  factory _SubjectDto.fromJson(Map<String, dynamic> json) => _$SubjectDtoFromJson(json);

@override@JsonKey(name: 'subjectName') final  String subjectName;
@override@JsonKey(name: 'unit') final  UnitDto? unit;

/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectDtoCopyWith<_SubjectDto> get copyWith => __$SubjectDtoCopyWithImpl<_SubjectDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectDto&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjectName,unit);

@override
String toString() {
  return 'SubjectDto(subjectName: $subjectName, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$SubjectDtoCopyWith<$Res> implements $SubjectDtoCopyWith<$Res> {
  factory _$SubjectDtoCopyWith(_SubjectDto value, $Res Function(_SubjectDto) _then) = __$SubjectDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subjectName') String subjectName,@JsonKey(name: 'unit') UnitDto? unit
});


@override $UnitDtoCopyWith<$Res>? get unit;

}
/// @nodoc
class __$SubjectDtoCopyWithImpl<$Res>
    implements _$SubjectDtoCopyWith<$Res> {
  __$SubjectDtoCopyWithImpl(this._self, this._then);

  final _SubjectDto _self;
  final $Res Function(_SubjectDto) _then;

/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectName = null,Object? unit = freezed,}) {
  return _then(_SubjectDto(
subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as UnitDto?,
  ));
}

/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnitDtoCopyWith<$Res>? get unit {
    if (_self.unit == null) {
    return null;
  }

  return $UnitDtoCopyWith<$Res>(_self.unit!, (value) {
    return _then(_self.copyWith(unit: value));
  });
}
}


/// @nodoc
mixin _$UnitDto {

@JsonKey(name: 'unitName') String get unitName;@JsonKey(name: 'grade') String get grade;@JsonKey(name: 'lesson') LessonDto? get lesson;
/// Create a copy of UnitDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitDtoCopyWith<UnitDto> get copyWith => _$UnitDtoCopyWithImpl<UnitDto>(this as UnitDto, _$identity);

  /// Serializes this UnitDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitDto&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.lesson, lesson) || other.lesson == lesson));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitName,grade,lesson);

@override
String toString() {
  return 'UnitDto(unitName: $unitName, grade: $grade, lesson: $lesson)';
}


}

/// @nodoc
abstract mixin class $UnitDtoCopyWith<$Res>  {
  factory $UnitDtoCopyWith(UnitDto value, $Res Function(UnitDto) _then) = _$UnitDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'unitName') String unitName,@JsonKey(name: 'grade') String grade,@JsonKey(name: 'lesson') LessonDto? lesson
});


$LessonDtoCopyWith<$Res>? get lesson;

}
/// @nodoc
class _$UnitDtoCopyWithImpl<$Res>
    implements $UnitDtoCopyWith<$Res> {
  _$UnitDtoCopyWithImpl(this._self, this._then);

  final UnitDto _self;
  final $Res Function(UnitDto) _then;

/// Create a copy of UnitDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitName = null,Object? grade = null,Object? lesson = freezed,}) {
  return _then(_self.copyWith(
unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,lesson: freezed == lesson ? _self.lesson : lesson // ignore: cast_nullable_to_non_nullable
as LessonDto?,
  ));
}
/// Create a copy of UnitDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonDtoCopyWith<$Res>? get lesson {
    if (_self.lesson == null) {
    return null;
  }

  return $LessonDtoCopyWith<$Res>(_self.lesson!, (value) {
    return _then(_self.copyWith(lesson: value));
  });
}
}


/// Adds pattern-matching-related methods to [UnitDto].
extension UnitDtoPatterns on UnitDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitDto value)  $default,){
final _that = this;
switch (_that) {
case _UnitDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitDto value)?  $default,){
final _that = this;
switch (_that) {
case _UnitDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'unitName')  String unitName, @JsonKey(name: 'grade')  String grade, @JsonKey(name: 'lesson')  LessonDto? lesson)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitDto() when $default != null:
return $default(_that.unitName,_that.grade,_that.lesson);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'unitName')  String unitName, @JsonKey(name: 'grade')  String grade, @JsonKey(name: 'lesson')  LessonDto? lesson)  $default,) {final _that = this;
switch (_that) {
case _UnitDto():
return $default(_that.unitName,_that.grade,_that.lesson);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'unitName')  String unitName, @JsonKey(name: 'grade')  String grade, @JsonKey(name: 'lesson')  LessonDto? lesson)?  $default,) {final _that = this;
switch (_that) {
case _UnitDto() when $default != null:
return $default(_that.unitName,_that.grade,_that.lesson);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnitDto implements UnitDto {
  const _UnitDto({@JsonKey(name: 'unitName') this.unitName = '', @JsonKey(name: 'grade') this.grade = '', @JsonKey(name: 'lesson') this.lesson});
  factory _UnitDto.fromJson(Map<String, dynamic> json) => _$UnitDtoFromJson(json);

@override@JsonKey(name: 'unitName') final  String unitName;
@override@JsonKey(name: 'grade') final  String grade;
@override@JsonKey(name: 'lesson') final  LessonDto? lesson;

/// Create a copy of UnitDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitDtoCopyWith<_UnitDto> get copyWith => __$UnitDtoCopyWithImpl<_UnitDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitDto&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.lesson, lesson) || other.lesson == lesson));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitName,grade,lesson);

@override
String toString() {
  return 'UnitDto(unitName: $unitName, grade: $grade, lesson: $lesson)';
}


}

/// @nodoc
abstract mixin class _$UnitDtoCopyWith<$Res> implements $UnitDtoCopyWith<$Res> {
  factory _$UnitDtoCopyWith(_UnitDto value, $Res Function(_UnitDto) _then) = __$UnitDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'unitName') String unitName,@JsonKey(name: 'grade') String grade,@JsonKey(name: 'lesson') LessonDto? lesson
});


@override $LessonDtoCopyWith<$Res>? get lesson;

}
/// @nodoc
class __$UnitDtoCopyWithImpl<$Res>
    implements _$UnitDtoCopyWith<$Res> {
  __$UnitDtoCopyWithImpl(this._self, this._then);

  final _UnitDto _self;
  final $Res Function(_UnitDto) _then;

/// Create a copy of UnitDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unitName = null,Object? grade = null,Object? lesson = freezed,}) {
  return _then(_UnitDto(
unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,lesson: freezed == lesson ? _self.lesson : lesson // ignore: cast_nullable_to_non_nullable
as LessonDto?,
  ));
}

/// Create a copy of UnitDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonDtoCopyWith<$Res>? get lesson {
    if (_self.lesson == null) {
    return null;
  }

  return $LessonDtoCopyWith<$Res>(_self.lesson!, (value) {
    return _then(_self.copyWith(lesson: value));
  });
}
}


/// @nodoc
mixin _$LessonDto {

@JsonKey(name: 'lessonName') String get lessonName;@JsonKey(name: 'difficulty') int get difficulty;
/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonDtoCopyWith<LessonDto> get copyWith => _$LessonDtoCopyWithImpl<LessonDto>(this as LessonDto, _$identity);

  /// Serializes this LessonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonDto&&(identical(other.lessonName, lessonName) || other.lessonName == lessonName)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonName,difficulty);

@override
String toString() {
  return 'LessonDto(lessonName: $lessonName, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $LessonDtoCopyWith<$Res>  {
  factory $LessonDtoCopyWith(LessonDto value, $Res Function(LessonDto) _then) = _$LessonDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lessonName') String lessonName,@JsonKey(name: 'difficulty') int difficulty
});




}
/// @nodoc
class _$LessonDtoCopyWithImpl<$Res>
    implements $LessonDtoCopyWith<$Res> {
  _$LessonDtoCopyWithImpl(this._self, this._then);

  final LessonDto _self;
  final $Res Function(LessonDto) _then;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonName = null,Object? difficulty = null,}) {
  return _then(_self.copyWith(
lessonName: null == lessonName ? _self.lessonName : lessonName // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonDto].
extension LessonDtoPatterns on LessonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonDto value)  $default,){
final _that = this;
switch (_that) {
case _LessonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonDto value)?  $default,){
final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lessonName')  String lessonName, @JsonKey(name: 'difficulty')  int difficulty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
return $default(_that.lessonName,_that.difficulty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lessonName')  String lessonName, @JsonKey(name: 'difficulty')  int difficulty)  $default,) {final _that = this;
switch (_that) {
case _LessonDto():
return $default(_that.lessonName,_that.difficulty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lessonName')  String lessonName, @JsonKey(name: 'difficulty')  int difficulty)?  $default,) {final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
return $default(_that.lessonName,_that.difficulty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonDto implements LessonDto {
  const _LessonDto({@JsonKey(name: 'lessonName') this.lessonName = '', @JsonKey(name: 'difficulty') this.difficulty = 0});
  factory _LessonDto.fromJson(Map<String, dynamic> json) => _$LessonDtoFromJson(json);

@override@JsonKey(name: 'lessonName') final  String lessonName;
@override@JsonKey(name: 'difficulty') final  int difficulty;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonDtoCopyWith<_LessonDto> get copyWith => __$LessonDtoCopyWithImpl<_LessonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonDto&&(identical(other.lessonName, lessonName) || other.lessonName == lessonName)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lessonName,difficulty);

@override
String toString() {
  return 'LessonDto(lessonName: $lessonName, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$LessonDtoCopyWith<$Res> implements $LessonDtoCopyWith<$Res> {
  factory _$LessonDtoCopyWith(_LessonDto value, $Res Function(_LessonDto) _then) = __$LessonDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lessonName') String lessonName,@JsonKey(name: 'difficulty') int difficulty
});




}
/// @nodoc
class __$LessonDtoCopyWithImpl<$Res>
    implements _$LessonDtoCopyWith<$Res> {
  __$LessonDtoCopyWithImpl(this._self, this._then);

  final _LessonDto _self;
  final $Res Function(_LessonDto) _then;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonName = null,Object? difficulty = null,}) {
  return _then(_LessonDto(
lessonName: null == lessonName ? _self.lessonName : lessonName // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
