// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate_chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CandidateChatResponse {

@JsonKey(name: 'content') ContentChatResponse get content;@JsonKey(name: 'finishReason') String get finishReason;@JsonKey(name: 'index') int get index;@JsonKey(name: 'safetyRatings') List<SafetyRatingsResponse> get safetyRatings;
/// Create a copy of CandidateChatResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CandidateChatResponseCopyWith<CandidateChatResponse> get copyWith => _$CandidateChatResponseCopyWithImpl<CandidateChatResponse>(this as CandidateChatResponse, _$identity);

  /// Serializes this CandidateChatResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CandidateChatResponse&&(identical(other.content, content) || other.content == content)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.index, index) || other.index == index)&&const DeepCollectionEquality().equals(other.safetyRatings, safetyRatings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,finishReason,index,const DeepCollectionEquality().hash(safetyRatings));

@override
String toString() {
  return 'CandidateChatResponse(content: $content, finishReason: $finishReason, index: $index, safetyRatings: $safetyRatings)';
}


}

/// @nodoc
abstract mixin class $CandidateChatResponseCopyWith<$Res>  {
  factory $CandidateChatResponseCopyWith(CandidateChatResponse value, $Res Function(CandidateChatResponse) _then) = _$CandidateChatResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'content') ContentChatResponse content,@JsonKey(name: 'finishReason') String finishReason,@JsonKey(name: 'index') int index,@JsonKey(name: 'safetyRatings') List<SafetyRatingsResponse> safetyRatings
});


$ContentChatResponseCopyWith<$Res> get content;

}
/// @nodoc
class _$CandidateChatResponseCopyWithImpl<$Res>
    implements $CandidateChatResponseCopyWith<$Res> {
  _$CandidateChatResponseCopyWithImpl(this._self, this._then);

  final CandidateChatResponse _self;
  final $Res Function(CandidateChatResponse) _then;

/// Create a copy of CandidateChatResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? finishReason = null,Object? index = null,Object? safetyRatings = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ContentChatResponse,finishReason: null == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,safetyRatings: null == safetyRatings ? _self.safetyRatings : safetyRatings // ignore: cast_nullable_to_non_nullable
as List<SafetyRatingsResponse>,
  ));
}
/// Create a copy of CandidateChatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentChatResponseCopyWith<$Res> get content {
  
  return $ContentChatResponseCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [CandidateChatResponse].
extension CandidateChatResponsePatterns on CandidateChatResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CandidateChatResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CandidateChatResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CandidateChatResponse value)  $default,){
final _that = this;
switch (_that) {
case _CandidateChatResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CandidateChatResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CandidateChatResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'content')  ContentChatResponse content, @JsonKey(name: 'finishReason')  String finishReason, @JsonKey(name: 'index')  int index, @JsonKey(name: 'safetyRatings')  List<SafetyRatingsResponse> safetyRatings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CandidateChatResponse() when $default != null:
return $default(_that.content,_that.finishReason,_that.index,_that.safetyRatings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'content')  ContentChatResponse content, @JsonKey(name: 'finishReason')  String finishReason, @JsonKey(name: 'index')  int index, @JsonKey(name: 'safetyRatings')  List<SafetyRatingsResponse> safetyRatings)  $default,) {final _that = this;
switch (_that) {
case _CandidateChatResponse():
return $default(_that.content,_that.finishReason,_that.index,_that.safetyRatings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'content')  ContentChatResponse content, @JsonKey(name: 'finishReason')  String finishReason, @JsonKey(name: 'index')  int index, @JsonKey(name: 'safetyRatings')  List<SafetyRatingsResponse> safetyRatings)?  $default,) {final _that = this;
switch (_that) {
case _CandidateChatResponse() when $default != null:
return $default(_that.content,_that.finishReason,_that.index,_that.safetyRatings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CandidateChatResponse implements CandidateChatResponse {
  const _CandidateChatResponse({@JsonKey(name: 'content') required this.content, @JsonKey(name: 'finishReason') required this.finishReason, @JsonKey(name: 'index') required this.index, @JsonKey(name: 'safetyRatings') required final  List<SafetyRatingsResponse> safetyRatings}): _safetyRatings = safetyRatings;
  factory _CandidateChatResponse.fromJson(Map<String, dynamic> json) => _$CandidateChatResponseFromJson(json);

@override@JsonKey(name: 'content') final  ContentChatResponse content;
@override@JsonKey(name: 'finishReason') final  String finishReason;
@override@JsonKey(name: 'index') final  int index;
 final  List<SafetyRatingsResponse> _safetyRatings;
@override@JsonKey(name: 'safetyRatings') List<SafetyRatingsResponse> get safetyRatings {
  if (_safetyRatings is EqualUnmodifiableListView) return _safetyRatings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_safetyRatings);
}


/// Create a copy of CandidateChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CandidateChatResponseCopyWith<_CandidateChatResponse> get copyWith => __$CandidateChatResponseCopyWithImpl<_CandidateChatResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CandidateChatResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CandidateChatResponse&&(identical(other.content, content) || other.content == content)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.index, index) || other.index == index)&&const DeepCollectionEquality().equals(other._safetyRatings, _safetyRatings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,finishReason,index,const DeepCollectionEquality().hash(_safetyRatings));

@override
String toString() {
  return 'CandidateChatResponse(content: $content, finishReason: $finishReason, index: $index, safetyRatings: $safetyRatings)';
}


}

/// @nodoc
abstract mixin class _$CandidateChatResponseCopyWith<$Res> implements $CandidateChatResponseCopyWith<$Res> {
  factory _$CandidateChatResponseCopyWith(_CandidateChatResponse value, $Res Function(_CandidateChatResponse) _then) = __$CandidateChatResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'content') ContentChatResponse content,@JsonKey(name: 'finishReason') String finishReason,@JsonKey(name: 'index') int index,@JsonKey(name: 'safetyRatings') List<SafetyRatingsResponse> safetyRatings
});


@override $ContentChatResponseCopyWith<$Res> get content;

}
/// @nodoc
class __$CandidateChatResponseCopyWithImpl<$Res>
    implements _$CandidateChatResponseCopyWith<$Res> {
  __$CandidateChatResponseCopyWithImpl(this._self, this._then);

  final _CandidateChatResponse _self;
  final $Res Function(_CandidateChatResponse) _then;

/// Create a copy of CandidateChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? finishReason = null,Object? index = null,Object? safetyRatings = null,}) {
  return _then(_CandidateChatResponse(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ContentChatResponse,finishReason: null == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,safetyRatings: null == safetyRatings ? _self._safetyRatings : safetyRatings // ignore: cast_nullable_to_non_nullable
as List<SafetyRatingsResponse>,
  ));
}

/// Create a copy of CandidateChatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentChatResponseCopyWith<$Res> get content {
  
  return $ContentChatResponseCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}

// dart format on
