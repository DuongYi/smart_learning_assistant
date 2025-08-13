// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_ratings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafetyRatingsResponse {

@JsonKey(name: 'category') String get category;@JsonKey(name: 'probability') String get probability;
/// Create a copy of SafetyRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SafetyRatingsResponseCopyWith<SafetyRatingsResponse> get copyWith => _$SafetyRatingsResponseCopyWithImpl<SafetyRatingsResponse>(this as SafetyRatingsResponse, _$identity);

  /// Serializes this SafetyRatingsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SafetyRatingsResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,probability);

@override
String toString() {
  return 'SafetyRatingsResponse(category: $category, probability: $probability)';
}


}

/// @nodoc
abstract mixin class $SafetyRatingsResponseCopyWith<$Res>  {
  factory $SafetyRatingsResponseCopyWith(SafetyRatingsResponse value, $Res Function(SafetyRatingsResponse) _then) = _$SafetyRatingsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category') String category,@JsonKey(name: 'probability') String probability
});




}
/// @nodoc
class _$SafetyRatingsResponseCopyWithImpl<$Res>
    implements $SafetyRatingsResponseCopyWith<$Res> {
  _$SafetyRatingsResponseCopyWithImpl(this._self, this._then);

  final SafetyRatingsResponse _self;
  final $Res Function(SafetyRatingsResponse) _then;

/// Create a copy of SafetyRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? probability = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SafetyRatingsResponse].
extension SafetyRatingsResponsePatterns on SafetyRatingsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SafetyRatingsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SafetyRatingsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SafetyRatingsResponse value)  $default,){
final _that = this;
switch (_that) {
case _SafetyRatingsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SafetyRatingsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SafetyRatingsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'category')  String category, @JsonKey(name: 'probability')  String probability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SafetyRatingsResponse() when $default != null:
return $default(_that.category,_that.probability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'category')  String category, @JsonKey(name: 'probability')  String probability)  $default,) {final _that = this;
switch (_that) {
case _SafetyRatingsResponse():
return $default(_that.category,_that.probability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'category')  String category, @JsonKey(name: 'probability')  String probability)?  $default,) {final _that = this;
switch (_that) {
case _SafetyRatingsResponse() when $default != null:
return $default(_that.category,_that.probability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SafetyRatingsResponse implements SafetyRatingsResponse {
  const _SafetyRatingsResponse({@JsonKey(name: 'category') required this.category, @JsonKey(name: 'probability') required this.probability});
  factory _SafetyRatingsResponse.fromJson(Map<String, dynamic> json) => _$SafetyRatingsResponseFromJson(json);

@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'probability') final  String probability;

/// Create a copy of SafetyRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SafetyRatingsResponseCopyWith<_SafetyRatingsResponse> get copyWith => __$SafetyRatingsResponseCopyWithImpl<_SafetyRatingsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SafetyRatingsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SafetyRatingsResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,probability);

@override
String toString() {
  return 'SafetyRatingsResponse(category: $category, probability: $probability)';
}


}

/// @nodoc
abstract mixin class _$SafetyRatingsResponseCopyWith<$Res> implements $SafetyRatingsResponseCopyWith<$Res> {
  factory _$SafetyRatingsResponseCopyWith(_SafetyRatingsResponse value, $Res Function(_SafetyRatingsResponse) _then) = __$SafetyRatingsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category') String category,@JsonKey(name: 'probability') String probability
});




}
/// @nodoc
class __$SafetyRatingsResponseCopyWithImpl<$Res>
    implements _$SafetyRatingsResponseCopyWith<$Res> {
  __$SafetyRatingsResponseCopyWithImpl(this._self, this._then);

  final _SafetyRatingsResponse _self;
  final $Res Function(_SafetyRatingsResponse) _then;

/// Create a copy of SafetyRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? probability = null,}) {
  return _then(_SafetyRatingsResponse(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
