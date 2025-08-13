// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generation_config_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerationConfigDTO {

@JsonKey(name: 'temperature') double get temperature;@JsonKey(name: 'maxOutputTokens') int get maxOutputTokens;
/// Create a copy of GenerationConfigDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationConfigDTOCopyWith<GenerationConfigDTO> get copyWith => _$GenerationConfigDTOCopyWithImpl<GenerationConfigDTO>(this as GenerationConfigDTO, _$identity);

  /// Serializes this GenerationConfigDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationConfigDTO&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.maxOutputTokens, maxOutputTokens) || other.maxOutputTokens == maxOutputTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,maxOutputTokens);

@override
String toString() {
  return 'GenerationConfigDTO(temperature: $temperature, maxOutputTokens: $maxOutputTokens)';
}


}

/// @nodoc
abstract mixin class $GenerationConfigDTOCopyWith<$Res>  {
  factory $GenerationConfigDTOCopyWith(GenerationConfigDTO value, $Res Function(GenerationConfigDTO) _then) = _$GenerationConfigDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temperature') double temperature,@JsonKey(name: 'maxOutputTokens') int maxOutputTokens
});




}
/// @nodoc
class _$GenerationConfigDTOCopyWithImpl<$Res>
    implements $GenerationConfigDTOCopyWith<$Res> {
  _$GenerationConfigDTOCopyWithImpl(this._self, this._then);

  final GenerationConfigDTO _self;
  final $Res Function(GenerationConfigDTO) _then;

/// Create a copy of GenerationConfigDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = null,Object? maxOutputTokens = null,}) {
  return _then(_self.copyWith(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,maxOutputTokens: null == maxOutputTokens ? _self.maxOutputTokens : maxOutputTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GenerationConfigDTO].
extension GenerationConfigDTOPatterns on GenerationConfigDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationConfigDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationConfigDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationConfigDTO value)  $default,){
final _that = this;
switch (_that) {
case _GenerationConfigDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationConfigDTO value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationConfigDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'temperature')  double temperature, @JsonKey(name: 'maxOutputTokens')  int maxOutputTokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationConfigDTO() when $default != null:
return $default(_that.temperature,_that.maxOutputTokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'temperature')  double temperature, @JsonKey(name: 'maxOutputTokens')  int maxOutputTokens)  $default,) {final _that = this;
switch (_that) {
case _GenerationConfigDTO():
return $default(_that.temperature,_that.maxOutputTokens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'temperature')  double temperature, @JsonKey(name: 'maxOutputTokens')  int maxOutputTokens)?  $default,) {final _that = this;
switch (_that) {
case _GenerationConfigDTO() when $default != null:
return $default(_that.temperature,_that.maxOutputTokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationConfigDTO implements GenerationConfigDTO {
  const _GenerationConfigDTO({@JsonKey(name: 'temperature') required this.temperature, @JsonKey(name: 'maxOutputTokens') required this.maxOutputTokens});
  factory _GenerationConfigDTO.fromJson(Map<String, dynamic> json) => _$GenerationConfigDTOFromJson(json);

@override@JsonKey(name: 'temperature') final  double temperature;
@override@JsonKey(name: 'maxOutputTokens') final  int maxOutputTokens;

/// Create a copy of GenerationConfigDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationConfigDTOCopyWith<_GenerationConfigDTO> get copyWith => __$GenerationConfigDTOCopyWithImpl<_GenerationConfigDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationConfigDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationConfigDTO&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.maxOutputTokens, maxOutputTokens) || other.maxOutputTokens == maxOutputTokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,maxOutputTokens);

@override
String toString() {
  return 'GenerationConfigDTO(temperature: $temperature, maxOutputTokens: $maxOutputTokens)';
}


}

/// @nodoc
abstract mixin class _$GenerationConfigDTOCopyWith<$Res> implements $GenerationConfigDTOCopyWith<$Res> {
  factory _$GenerationConfigDTOCopyWith(_GenerationConfigDTO value, $Res Function(_GenerationConfigDTO) _then) = __$GenerationConfigDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temperature') double temperature,@JsonKey(name: 'maxOutputTokens') int maxOutputTokens
});




}
/// @nodoc
class __$GenerationConfigDTOCopyWithImpl<$Res>
    implements _$GenerationConfigDTOCopyWith<$Res> {
  __$GenerationConfigDTOCopyWithImpl(this._self, this._then);

  final _GenerationConfigDTO _self;
  final $Res Function(_GenerationConfigDTO) _then;

/// Create a copy of GenerationConfigDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = null,Object? maxOutputTokens = null,}) {
  return _then(_GenerationConfigDTO(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,maxOutputTokens: null == maxOutputTokens ? _self.maxOutputTokens : maxOutputTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
