// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentChatResponse {

@JsonKey(name: 'parts') List<PartChatResponse> get parts;@JsonKey(name: 'role') String get role;
/// Create a copy of ContentChatResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentChatResponseCopyWith<ContentChatResponse> get copyWith => _$ContentChatResponseCopyWithImpl<ContentChatResponse>(this as ContentChatResponse, _$identity);

  /// Serializes this ContentChatResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentChatResponse&&const DeepCollectionEquality().equals(other.parts, parts)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parts),role);

@override
String toString() {
  return 'ContentChatResponse(parts: $parts, role: $role)';
}


}

/// @nodoc
abstract mixin class $ContentChatResponseCopyWith<$Res>  {
  factory $ContentChatResponseCopyWith(ContentChatResponse value, $Res Function(ContentChatResponse) _then) = _$ContentChatResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parts') List<PartChatResponse> parts,@JsonKey(name: 'role') String role
});




}
/// @nodoc
class _$ContentChatResponseCopyWithImpl<$Res>
    implements $ContentChatResponseCopyWith<$Res> {
  _$ContentChatResponseCopyWithImpl(this._self, this._then);

  final ContentChatResponse _self;
  final $Res Function(ContentChatResponse) _then;

/// Create a copy of ContentChatResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parts = null,Object? role = null,}) {
  return _then(_self.copyWith(
parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<PartChatResponse>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentChatResponse].
extension ContentChatResponsePatterns on ContentChatResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentChatResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentChatResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentChatResponse value)  $default,){
final _that = this;
switch (_that) {
case _ContentChatResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentChatResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ContentChatResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parts')  List<PartChatResponse> parts, @JsonKey(name: 'role')  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentChatResponse() when $default != null:
return $default(_that.parts,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parts')  List<PartChatResponse> parts, @JsonKey(name: 'role')  String role)  $default,) {final _that = this;
switch (_that) {
case _ContentChatResponse():
return $default(_that.parts,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parts')  List<PartChatResponse> parts, @JsonKey(name: 'role')  String role)?  $default,) {final _that = this;
switch (_that) {
case _ContentChatResponse() when $default != null:
return $default(_that.parts,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentChatResponse implements ContentChatResponse {
  const _ContentChatResponse({@JsonKey(name: 'parts') required final  List<PartChatResponse> parts, @JsonKey(name: 'role') required this.role}): _parts = parts;
  factory _ContentChatResponse.fromJson(Map<String, dynamic> json) => _$ContentChatResponseFromJson(json);

 final  List<PartChatResponse> _parts;
@override@JsonKey(name: 'parts') List<PartChatResponse> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}

@override@JsonKey(name: 'role') final  String role;

/// Create a copy of ContentChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentChatResponseCopyWith<_ContentChatResponse> get copyWith => __$ContentChatResponseCopyWithImpl<_ContentChatResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentChatResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentChatResponse&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parts),role);

@override
String toString() {
  return 'ContentChatResponse(parts: $parts, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ContentChatResponseCopyWith<$Res> implements $ContentChatResponseCopyWith<$Res> {
  factory _$ContentChatResponseCopyWith(_ContentChatResponse value, $Res Function(_ContentChatResponse) _then) = __$ContentChatResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parts') List<PartChatResponse> parts,@JsonKey(name: 'role') String role
});




}
/// @nodoc
class __$ContentChatResponseCopyWithImpl<$Res>
    implements _$ContentChatResponseCopyWith<$Res> {
  __$ContentChatResponseCopyWithImpl(this._self, this._then);

  final _ContentChatResponse _self;
  final $Res Function(_ContentChatResponse) _then;

/// Create a copy of ContentChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parts = null,Object? role = null,}) {
  return _then(_ContentChatResponse(
parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<PartChatResponse>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
