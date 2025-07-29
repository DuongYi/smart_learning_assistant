// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QAChatMessage {

 String get text; String? get imagePath; bool get isUser;
/// Create a copy of QAChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QAChatMessageCopyWith<QAChatMessage> get copyWith => _$QAChatMessageCopyWithImpl<QAChatMessage>(this as QAChatMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QAChatMessage&&(identical(other.text, text) || other.text == text)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isUser, isUser) || other.isUser == isUser));
}


@override
int get hashCode => Object.hash(runtimeType,text,imagePath,isUser);

@override
String toString() {
  return 'QAChatMessage(text: $text, imagePath: $imagePath, isUser: $isUser)';
}


}

/// @nodoc
abstract mixin class $QAChatMessageCopyWith<$Res>  {
  factory $QAChatMessageCopyWith(QAChatMessage value, $Res Function(QAChatMessage) _then) = _$QAChatMessageCopyWithImpl;
@useResult
$Res call({
 String text, String? imagePath, bool isUser
});




}
/// @nodoc
class _$QAChatMessageCopyWithImpl<$Res>
    implements $QAChatMessageCopyWith<$Res> {
  _$QAChatMessageCopyWithImpl(this._self, this._then);

  final QAChatMessage _self;
  final $Res Function(QAChatMessage) _then;

/// Create a copy of QAChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? imagePath = freezed,Object? isUser = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [QAChatMessage].
extension QAChatMessagePatterns on QAChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QAChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QAChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QAChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _QAChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QAChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _QAChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String? imagePath,  bool isUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QAChatMessage() when $default != null:
return $default(_that.text,_that.imagePath,_that.isUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String? imagePath,  bool isUser)  $default,) {final _that = this;
switch (_that) {
case _QAChatMessage():
return $default(_that.text,_that.imagePath,_that.isUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String? imagePath,  bool isUser)?  $default,) {final _that = this;
switch (_that) {
case _QAChatMessage() when $default != null:
return $default(_that.text,_that.imagePath,_that.isUser);case _:
  return null;

}
}

}

/// @nodoc


class _QAChatMessage implements QAChatMessage {
  const _QAChatMessage({required this.text, this.imagePath, required this.isUser});
  

@override final  String text;
@override final  String? imagePath;
@override final  bool isUser;

/// Create a copy of QAChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QAChatMessageCopyWith<_QAChatMessage> get copyWith => __$QAChatMessageCopyWithImpl<_QAChatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QAChatMessage&&(identical(other.text, text) || other.text == text)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isUser, isUser) || other.isUser == isUser));
}


@override
int get hashCode => Object.hash(runtimeType,text,imagePath,isUser);

@override
String toString() {
  return 'QAChatMessage(text: $text, imagePath: $imagePath, isUser: $isUser)';
}


}

/// @nodoc
abstract mixin class _$QAChatMessageCopyWith<$Res> implements $QAChatMessageCopyWith<$Res> {
  factory _$QAChatMessageCopyWith(_QAChatMessage value, $Res Function(_QAChatMessage) _then) = __$QAChatMessageCopyWithImpl;
@override @useResult
$Res call({
 String text, String? imagePath, bool isUser
});




}
/// @nodoc
class __$QAChatMessageCopyWithImpl<$Res>
    implements _$QAChatMessageCopyWith<$Res> {
  __$QAChatMessageCopyWithImpl(this._self, this._then);

  final _QAChatMessage _self;
  final $Res Function(_QAChatMessage) _then;

/// Create a copy of QAChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? imagePath = freezed,Object? isUser = null,}) {
  return _then(_QAChatMessage(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$QAState {

 List<QAChatMessage> get history; bool get isLoading; String? get error;
/// Create a copy of QAState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QAStateCopyWith<QAState> get copyWith => _$QAStateCopyWithImpl<QAState>(this as QAState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QAState&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(history),isLoading,error);

@override
String toString() {
  return 'QAState(history: $history, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $QAStateCopyWith<$Res>  {
  factory $QAStateCopyWith(QAState value, $Res Function(QAState) _then) = _$QAStateCopyWithImpl;
@useResult
$Res call({
 List<QAChatMessage> history, bool isLoading, String? error
});




}
/// @nodoc
class _$QAStateCopyWithImpl<$Res>
    implements $QAStateCopyWith<$Res> {
  _$QAStateCopyWithImpl(this._self, this._then);

  final QAState _self;
  final $Res Function(QAState) _then;

/// Create a copy of QAState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? history = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<QAChatMessage>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QAState].
extension QAStatePatterns on QAState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QAState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QAState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QAState value)  $default,){
final _that = this;
switch (_that) {
case _QAState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QAState value)?  $default,){
final _that = this;
switch (_that) {
case _QAState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<QAChatMessage> history,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QAState() when $default != null:
return $default(_that.history,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<QAChatMessage> history,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _QAState():
return $default(_that.history,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<QAChatMessage> history,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _QAState() when $default != null:
return $default(_that.history,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _QAState implements QAState {
  const _QAState({final  List<QAChatMessage> history = const [], this.isLoading = false, this.error}): _history = history;
  

 final  List<QAChatMessage> _history;
@override@JsonKey() List<QAChatMessage> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of QAState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QAStateCopyWith<_QAState> get copyWith => __$QAStateCopyWithImpl<_QAState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QAState&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_history),isLoading,error);

@override
String toString() {
  return 'QAState(history: $history, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$QAStateCopyWith<$Res> implements $QAStateCopyWith<$Res> {
  factory _$QAStateCopyWith(_QAState value, $Res Function(_QAState) _then) = __$QAStateCopyWithImpl;
@override @useResult
$Res call({
 List<QAChatMessage> history, bool isLoading, String? error
});




}
/// @nodoc
class __$QAStateCopyWithImpl<$Res>
    implements _$QAStateCopyWith<$Res> {
  __$QAStateCopyWithImpl(this._self, this._then);

  final _QAState _self;
  final $Res Function(_QAState) _then;

/// Create a copy of QAState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? history = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_QAState(
history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<QAChatMessage>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
