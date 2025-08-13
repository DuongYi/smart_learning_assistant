// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_assistant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreeAssistantResponse {

@JsonKey(name: 'candidates') List<CandidateChatResponse> get candidates;
/// Create a copy of FreeAssistantResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreeAssistantResponseCopyWith<FreeAssistantResponse> get copyWith => _$FreeAssistantResponseCopyWithImpl<FreeAssistantResponse>(this as FreeAssistantResponse, _$identity);

  /// Serializes this FreeAssistantResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreeAssistantResponse&&const DeepCollectionEquality().equals(other.candidates, candidates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(candidates));

@override
String toString() {
  return 'FreeAssistantResponse(candidates: $candidates)';
}


}

/// @nodoc
abstract mixin class $FreeAssistantResponseCopyWith<$Res>  {
  factory $FreeAssistantResponseCopyWith(FreeAssistantResponse value, $Res Function(FreeAssistantResponse) _then) = _$FreeAssistantResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'candidates') List<CandidateChatResponse> candidates
});




}
/// @nodoc
class _$FreeAssistantResponseCopyWithImpl<$Res>
    implements $FreeAssistantResponseCopyWith<$Res> {
  _$FreeAssistantResponseCopyWithImpl(this._self, this._then);

  final FreeAssistantResponse _self;
  final $Res Function(FreeAssistantResponse) _then;

/// Create a copy of FreeAssistantResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? candidates = null,}) {
  return _then(_self.copyWith(
candidates: null == candidates ? _self.candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<CandidateChatResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [FreeAssistantResponse].
extension FreeAssistantResponsePatterns on FreeAssistantResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreeAssistantResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreeAssistantResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreeAssistantResponse value)  $default,){
final _that = this;
switch (_that) {
case _FreeAssistantResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreeAssistantResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FreeAssistantResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'candidates')  List<CandidateChatResponse> candidates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreeAssistantResponse() when $default != null:
return $default(_that.candidates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'candidates')  List<CandidateChatResponse> candidates)  $default,) {final _that = this;
switch (_that) {
case _FreeAssistantResponse():
return $default(_that.candidates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'candidates')  List<CandidateChatResponse> candidates)?  $default,) {final _that = this;
switch (_that) {
case _FreeAssistantResponse() when $default != null:
return $default(_that.candidates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FreeAssistantResponse implements FreeAssistantResponse {
  const _FreeAssistantResponse({@JsonKey(name: 'candidates') required final  List<CandidateChatResponse> candidates}): _candidates = candidates;
  factory _FreeAssistantResponse.fromJson(Map<String, dynamic> json) => _$FreeAssistantResponseFromJson(json);

 final  List<CandidateChatResponse> _candidates;
@override@JsonKey(name: 'candidates') List<CandidateChatResponse> get candidates {
  if (_candidates is EqualUnmodifiableListView) return _candidates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_candidates);
}


/// Create a copy of FreeAssistantResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreeAssistantResponseCopyWith<_FreeAssistantResponse> get copyWith => __$FreeAssistantResponseCopyWithImpl<_FreeAssistantResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreeAssistantResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreeAssistantResponse&&const DeepCollectionEquality().equals(other._candidates, _candidates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_candidates));

@override
String toString() {
  return 'FreeAssistantResponse(candidates: $candidates)';
}


}

/// @nodoc
abstract mixin class _$FreeAssistantResponseCopyWith<$Res> implements $FreeAssistantResponseCopyWith<$Res> {
  factory _$FreeAssistantResponseCopyWith(_FreeAssistantResponse value, $Res Function(_FreeAssistantResponse) _then) = __$FreeAssistantResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'candidates') List<CandidateChatResponse> candidates
});




}
/// @nodoc
class __$FreeAssistantResponseCopyWithImpl<$Res>
    implements _$FreeAssistantResponseCopyWith<$Res> {
  __$FreeAssistantResponseCopyWithImpl(this._self, this._then);

  final _FreeAssistantResponse _self;
  final $Res Function(_FreeAssistantResponse) _then;

/// Create a copy of FreeAssistantResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? candidates = null,}) {
  return _then(_FreeAssistantResponse(
candidates: null == candidates ? _self._candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<CandidateChatResponse>,
  ));
}


}

// dart format on
