// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_assistant_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FreeAssistantState {

 List<PartChatDTO> get listPartChat; FreeAssistantResponse? get freeAssistantResponse; bool get isLoading; List<ChatBotModel> get history;
/// Create a copy of FreeAssistantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreeAssistantStateCopyWith<FreeAssistantState> get copyWith => _$FreeAssistantStateCopyWithImpl<FreeAssistantState>(this as FreeAssistantState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreeAssistantState&&const DeepCollectionEquality().equals(other.listPartChat, listPartChat)&&(identical(other.freeAssistantResponse, freeAssistantResponse) || other.freeAssistantResponse == freeAssistantResponse)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listPartChat),freeAssistantResponse,isLoading,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'FreeAssistantState(listPartChat: $listPartChat, freeAssistantResponse: $freeAssistantResponse, isLoading: $isLoading, history: $history)';
}


}

/// @nodoc
abstract mixin class $FreeAssistantStateCopyWith<$Res>  {
  factory $FreeAssistantStateCopyWith(FreeAssistantState value, $Res Function(FreeAssistantState) _then) = _$FreeAssistantStateCopyWithImpl;
@useResult
$Res call({
 List<PartChatDTO> listPartChat, FreeAssistantResponse? freeAssistantResponse, bool isLoading, List<ChatBotModel> history
});


$FreeAssistantResponseCopyWith<$Res>? get freeAssistantResponse;

}
/// @nodoc
class _$FreeAssistantStateCopyWithImpl<$Res>
    implements $FreeAssistantStateCopyWith<$Res> {
  _$FreeAssistantStateCopyWithImpl(this._self, this._then);

  final FreeAssistantState _self;
  final $Res Function(FreeAssistantState) _then;

/// Create a copy of FreeAssistantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listPartChat = null,Object? freeAssistantResponse = freezed,Object? isLoading = null,Object? history = null,}) {
  return _then(_self.copyWith(
listPartChat: null == listPartChat ? _self.listPartChat : listPartChat // ignore: cast_nullable_to_non_nullable
as List<PartChatDTO>,freeAssistantResponse: freezed == freeAssistantResponse ? _self.freeAssistantResponse : freeAssistantResponse // ignore: cast_nullable_to_non_nullable
as FreeAssistantResponse?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<ChatBotModel>,
  ));
}
/// Create a copy of FreeAssistantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreeAssistantResponseCopyWith<$Res>? get freeAssistantResponse {
    if (_self.freeAssistantResponse == null) {
    return null;
  }

  return $FreeAssistantResponseCopyWith<$Res>(_self.freeAssistantResponse!, (value) {
    return _then(_self.copyWith(freeAssistantResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [FreeAssistantState].
extension FreeAssistantStatePatterns on FreeAssistantState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreeAssistantState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreeAssistantState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreeAssistantState value)  $default,){
final _that = this;
switch (_that) {
case _FreeAssistantState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreeAssistantState value)?  $default,){
final _that = this;
switch (_that) {
case _FreeAssistantState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PartChatDTO> listPartChat,  FreeAssistantResponse? freeAssistantResponse,  bool isLoading,  List<ChatBotModel> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreeAssistantState() when $default != null:
return $default(_that.listPartChat,_that.freeAssistantResponse,_that.isLoading,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PartChatDTO> listPartChat,  FreeAssistantResponse? freeAssistantResponse,  bool isLoading,  List<ChatBotModel> history)  $default,) {final _that = this;
switch (_that) {
case _FreeAssistantState():
return $default(_that.listPartChat,_that.freeAssistantResponse,_that.isLoading,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PartChatDTO> listPartChat,  FreeAssistantResponse? freeAssistantResponse,  bool isLoading,  List<ChatBotModel> history)?  $default,) {final _that = this;
switch (_that) {
case _FreeAssistantState() when $default != null:
return $default(_that.listPartChat,_that.freeAssistantResponse,_that.isLoading,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _FreeAssistantState implements FreeAssistantState {
  const _FreeAssistantState({final  List<PartChatDTO> listPartChat = const [], this.freeAssistantResponse, this.isLoading = false, final  List<ChatBotModel> history = const []}): _listPartChat = listPartChat,_history = history;
  

 final  List<PartChatDTO> _listPartChat;
@override@JsonKey() List<PartChatDTO> get listPartChat {
  if (_listPartChat is EqualUnmodifiableListView) return _listPartChat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listPartChat);
}

@override final  FreeAssistantResponse? freeAssistantResponse;
@override@JsonKey() final  bool isLoading;
 final  List<ChatBotModel> _history;
@override@JsonKey() List<ChatBotModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of FreeAssistantState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreeAssistantStateCopyWith<_FreeAssistantState> get copyWith => __$FreeAssistantStateCopyWithImpl<_FreeAssistantState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreeAssistantState&&const DeepCollectionEquality().equals(other._listPartChat, _listPartChat)&&(identical(other.freeAssistantResponse, freeAssistantResponse) || other.freeAssistantResponse == freeAssistantResponse)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listPartChat),freeAssistantResponse,isLoading,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'FreeAssistantState(listPartChat: $listPartChat, freeAssistantResponse: $freeAssistantResponse, isLoading: $isLoading, history: $history)';
}


}

/// @nodoc
abstract mixin class _$FreeAssistantStateCopyWith<$Res> implements $FreeAssistantStateCopyWith<$Res> {
  factory _$FreeAssistantStateCopyWith(_FreeAssistantState value, $Res Function(_FreeAssistantState) _then) = __$FreeAssistantStateCopyWithImpl;
@override @useResult
$Res call({
 List<PartChatDTO> listPartChat, FreeAssistantResponse? freeAssistantResponse, bool isLoading, List<ChatBotModel> history
});


@override $FreeAssistantResponseCopyWith<$Res>? get freeAssistantResponse;

}
/// @nodoc
class __$FreeAssistantStateCopyWithImpl<$Res>
    implements _$FreeAssistantStateCopyWith<$Res> {
  __$FreeAssistantStateCopyWithImpl(this._self, this._then);

  final _FreeAssistantState _self;
  final $Res Function(_FreeAssistantState) _then;

/// Create a copy of FreeAssistantState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listPartChat = null,Object? freeAssistantResponse = freezed,Object? isLoading = null,Object? history = null,}) {
  return _then(_FreeAssistantState(
listPartChat: null == listPartChat ? _self._listPartChat : listPartChat // ignore: cast_nullable_to_non_nullable
as List<PartChatDTO>,freeAssistantResponse: freezed == freeAssistantResponse ? _self.freeAssistantResponse : freeAssistantResponse // ignore: cast_nullable_to_non_nullable
as FreeAssistantResponse?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<ChatBotModel>,
  ));
}

/// Create a copy of FreeAssistantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreeAssistantResponseCopyWith<$Res>? get freeAssistantResponse {
    if (_self.freeAssistantResponse == null) {
    return null;
  }

  return $FreeAssistantResponseCopyWith<$Res>(_self.freeAssistantResponse!, (value) {
    return _then(_self.copyWith(freeAssistantResponse: value));
  });
}
}

// dart format on
