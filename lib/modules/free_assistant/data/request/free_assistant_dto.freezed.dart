// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_assistant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreeAssistantDTO {

@JsonKey(name: 'contents') List<ContentChatDTO> get contents;@JsonKey(name: 'generationConfig') GenerationConfigDTO get generationConfig;
/// Create a copy of FreeAssistantDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreeAssistantDTOCopyWith<FreeAssistantDTO> get copyWith => _$FreeAssistantDTOCopyWithImpl<FreeAssistantDTO>(this as FreeAssistantDTO, _$identity);

  /// Serializes this FreeAssistantDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreeAssistantDTO&&const DeepCollectionEquality().equals(other.contents, contents)&&(identical(other.generationConfig, generationConfig) || other.generationConfig == generationConfig));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contents),generationConfig);

@override
String toString() {
  return 'FreeAssistantDTO(contents: $contents, generationConfig: $generationConfig)';
}


}

/// @nodoc
abstract mixin class $FreeAssistantDTOCopyWith<$Res>  {
  factory $FreeAssistantDTOCopyWith(FreeAssistantDTO value, $Res Function(FreeAssistantDTO) _then) = _$FreeAssistantDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contents') List<ContentChatDTO> contents,@JsonKey(name: 'generationConfig') GenerationConfigDTO generationConfig
});


$GenerationConfigDTOCopyWith<$Res> get generationConfig;

}
/// @nodoc
class _$FreeAssistantDTOCopyWithImpl<$Res>
    implements $FreeAssistantDTOCopyWith<$Res> {
  _$FreeAssistantDTOCopyWithImpl(this._self, this._then);

  final FreeAssistantDTO _self;
  final $Res Function(FreeAssistantDTO) _then;

/// Create a copy of FreeAssistantDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contents = null,Object? generationConfig = null,}) {
  return _then(_self.copyWith(
contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as List<ContentChatDTO>,generationConfig: null == generationConfig ? _self.generationConfig : generationConfig // ignore: cast_nullable_to_non_nullable
as GenerationConfigDTO,
  ));
}
/// Create a copy of FreeAssistantDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationConfigDTOCopyWith<$Res> get generationConfig {
  
  return $GenerationConfigDTOCopyWith<$Res>(_self.generationConfig, (value) {
    return _then(_self.copyWith(generationConfig: value));
  });
}
}


/// Adds pattern-matching-related methods to [FreeAssistantDTO].
extension FreeAssistantDTOPatterns on FreeAssistantDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreeAssistantDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreeAssistantDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreeAssistantDTO value)  $default,){
final _that = this;
switch (_that) {
case _FreeAssistantDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreeAssistantDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FreeAssistantDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'contents')  List<ContentChatDTO> contents, @JsonKey(name: 'generationConfig')  GenerationConfigDTO generationConfig)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreeAssistantDTO() when $default != null:
return $default(_that.contents,_that.generationConfig);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'contents')  List<ContentChatDTO> contents, @JsonKey(name: 'generationConfig')  GenerationConfigDTO generationConfig)  $default,) {final _that = this;
switch (_that) {
case _FreeAssistantDTO():
return $default(_that.contents,_that.generationConfig);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'contents')  List<ContentChatDTO> contents, @JsonKey(name: 'generationConfig')  GenerationConfigDTO generationConfig)?  $default,) {final _that = this;
switch (_that) {
case _FreeAssistantDTO() when $default != null:
return $default(_that.contents,_that.generationConfig);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FreeAssistantDTO implements FreeAssistantDTO {
  const _FreeAssistantDTO({@JsonKey(name: 'contents') required final  List<ContentChatDTO> contents, @JsonKey(name: 'generationConfig') required this.generationConfig}): _contents = contents;
  factory _FreeAssistantDTO.fromJson(Map<String, dynamic> json) => _$FreeAssistantDTOFromJson(json);

 final  List<ContentChatDTO> _contents;
@override@JsonKey(name: 'contents') List<ContentChatDTO> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}

@override@JsonKey(name: 'generationConfig') final  GenerationConfigDTO generationConfig;

/// Create a copy of FreeAssistantDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreeAssistantDTOCopyWith<_FreeAssistantDTO> get copyWith => __$FreeAssistantDTOCopyWithImpl<_FreeAssistantDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreeAssistantDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreeAssistantDTO&&const DeepCollectionEquality().equals(other._contents, _contents)&&(identical(other.generationConfig, generationConfig) || other.generationConfig == generationConfig));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents),generationConfig);

@override
String toString() {
  return 'FreeAssistantDTO(contents: $contents, generationConfig: $generationConfig)';
}


}

/// @nodoc
abstract mixin class _$FreeAssistantDTOCopyWith<$Res> implements $FreeAssistantDTOCopyWith<$Res> {
  factory _$FreeAssistantDTOCopyWith(_FreeAssistantDTO value, $Res Function(_FreeAssistantDTO) _then) = __$FreeAssistantDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contents') List<ContentChatDTO> contents,@JsonKey(name: 'generationConfig') GenerationConfigDTO generationConfig
});


@override $GenerationConfigDTOCopyWith<$Res> get generationConfig;

}
/// @nodoc
class __$FreeAssistantDTOCopyWithImpl<$Res>
    implements _$FreeAssistantDTOCopyWith<$Res> {
  __$FreeAssistantDTOCopyWithImpl(this._self, this._then);

  final _FreeAssistantDTO _self;
  final $Res Function(_FreeAssistantDTO) _then;

/// Create a copy of FreeAssistantDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contents = null,Object? generationConfig = null,}) {
  return _then(_FreeAssistantDTO(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<ContentChatDTO>,generationConfig: null == generationConfig ? _self.generationConfig : generationConfig // ignore: cast_nullable_to_non_nullable
as GenerationConfigDTO,
  ));
}

/// Create a copy of FreeAssistantDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationConfigDTOCopyWith<$Res> get generationConfig {
  
  return $GenerationConfigDTOCopyWith<$Res>(_self.generationConfig, (value) {
    return _then(_self.copyWith(generationConfig: value));
  });
}
}

// dart format on
