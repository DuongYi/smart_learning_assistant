// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentChatDTO {

@JsonKey(name: 'parts') List<PartChatDTO> get parts;
/// Create a copy of ContentChatDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentChatDTOCopyWith<ContentChatDTO> get copyWith => _$ContentChatDTOCopyWithImpl<ContentChatDTO>(this as ContentChatDTO, _$identity);

  /// Serializes this ContentChatDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentChatDTO&&const DeepCollectionEquality().equals(other.parts, parts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parts));

@override
String toString() {
  return 'ContentChatDTO(parts: $parts)';
}


}

/// @nodoc
abstract mixin class $ContentChatDTOCopyWith<$Res>  {
  factory $ContentChatDTOCopyWith(ContentChatDTO value, $Res Function(ContentChatDTO) _then) = _$ContentChatDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parts') List<PartChatDTO> parts
});




}
/// @nodoc
class _$ContentChatDTOCopyWithImpl<$Res>
    implements $ContentChatDTOCopyWith<$Res> {
  _$ContentChatDTOCopyWithImpl(this._self, this._then);

  final ContentChatDTO _self;
  final $Res Function(ContentChatDTO) _then;

/// Create a copy of ContentChatDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parts = null,}) {
  return _then(_self.copyWith(
parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<PartChatDTO>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentChatDTO].
extension ContentChatDTOPatterns on ContentChatDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentChatDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentChatDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentChatDTO value)  $default,){
final _that = this;
switch (_that) {
case _ContentChatDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentChatDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ContentChatDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parts')  List<PartChatDTO> parts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentChatDTO() when $default != null:
return $default(_that.parts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parts')  List<PartChatDTO> parts)  $default,) {final _that = this;
switch (_that) {
case _ContentChatDTO():
return $default(_that.parts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parts')  List<PartChatDTO> parts)?  $default,) {final _that = this;
switch (_that) {
case _ContentChatDTO() when $default != null:
return $default(_that.parts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentChatDTO implements ContentChatDTO {
  const _ContentChatDTO({@JsonKey(name: 'parts') required final  List<PartChatDTO> parts}): _parts = parts;
  factory _ContentChatDTO.fromJson(Map<String, dynamic> json) => _$ContentChatDTOFromJson(json);

 final  List<PartChatDTO> _parts;
@override@JsonKey(name: 'parts') List<PartChatDTO> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}


/// Create a copy of ContentChatDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentChatDTOCopyWith<_ContentChatDTO> get copyWith => __$ContentChatDTOCopyWithImpl<_ContentChatDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentChatDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentChatDTO&&const DeepCollectionEquality().equals(other._parts, _parts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parts));

@override
String toString() {
  return 'ContentChatDTO(parts: $parts)';
}


}

/// @nodoc
abstract mixin class _$ContentChatDTOCopyWith<$Res> implements $ContentChatDTOCopyWith<$Res> {
  factory _$ContentChatDTOCopyWith(_ContentChatDTO value, $Res Function(_ContentChatDTO) _then) = __$ContentChatDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parts') List<PartChatDTO> parts
});




}
/// @nodoc
class __$ContentChatDTOCopyWithImpl<$Res>
    implements _$ContentChatDTOCopyWith<$Res> {
  __$ContentChatDTOCopyWithImpl(this._self, this._then);

  final _ContentChatDTO _self;
  final $Res Function(_ContentChatDTO) _then;

/// Create a copy of ContentChatDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parts = null,}) {
  return _then(_ContentChatDTO(
parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<PartChatDTO>,
  ));
}


}

// dart format on
