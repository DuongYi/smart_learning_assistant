// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'part_chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PartChatDTO {

@JsonKey(name: 'text') String get question;
/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartChatDTOCopyWith<PartChatDTO> get copyWith => _$PartChatDTOCopyWithImpl<PartChatDTO>(this as PartChatDTO, _$identity);

  /// Serializes this PartChatDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartChatDTO&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question);

@override
String toString() {
  return 'PartChatDTO(question: $question)';
}


}

/// @nodoc
abstract mixin class $PartChatDTOCopyWith<$Res>  {
  factory $PartChatDTOCopyWith(PartChatDTO value, $Res Function(PartChatDTO) _then) = _$PartChatDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'text') String question
});




}
/// @nodoc
class _$PartChatDTOCopyWithImpl<$Res>
    implements $PartChatDTOCopyWith<$Res> {
  _$PartChatDTOCopyWithImpl(this._self, this._then);

  final PartChatDTO _self;
  final $Res Function(PartChatDTO) _then;

/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PartChatDTO].
extension PartChatDTOPatterns on PartChatDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PartChatDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PartChatDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PartChatDTO value)  $default,){
final _that = this;
switch (_that) {
case _PartChatDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PartChatDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PartChatDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'text')  String question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartChatDTO() when $default != null:
return $default(_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'text')  String question)  $default,) {final _that = this;
switch (_that) {
case _PartChatDTO():
return $default(_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'text')  String question)?  $default,) {final _that = this;
switch (_that) {
case _PartChatDTO() when $default != null:
return $default(_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PartChatDTO implements PartChatDTO {
  const _PartChatDTO({@JsonKey(name: 'text') required this.question});
  factory _PartChatDTO.fromJson(Map<String, dynamic> json) => _$PartChatDTOFromJson(json);

@override@JsonKey(name: 'text') final  String question;

/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartChatDTOCopyWith<_PartChatDTO> get copyWith => __$PartChatDTOCopyWithImpl<_PartChatDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartChatDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartChatDTO&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question);

@override
String toString() {
  return 'PartChatDTO(question: $question)';
}


}

/// @nodoc
abstract mixin class _$PartChatDTOCopyWith<$Res> implements $PartChatDTOCopyWith<$Res> {
  factory _$PartChatDTOCopyWith(_PartChatDTO value, $Res Function(_PartChatDTO) _then) = __$PartChatDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'text') String question
});




}
/// @nodoc
class __$PartChatDTOCopyWithImpl<$Res>
    implements _$PartChatDTOCopyWith<$Res> {
  __$PartChatDTOCopyWithImpl(this._self, this._then);

  final _PartChatDTO _self;
  final $Res Function(_PartChatDTO) _then;

/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,}) {
  return _then(_PartChatDTO(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
