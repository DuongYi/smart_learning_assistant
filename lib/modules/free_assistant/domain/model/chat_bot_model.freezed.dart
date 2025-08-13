// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBotModel {

@JsonKey(name: 'isUser') bool get isUser;@JsonKey(name: 'question') String get question;
/// Create a copy of ChatBotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatBotModelCopyWith<ChatBotModel> get copyWith => _$ChatBotModelCopyWithImpl<ChatBotModel>(this as ChatBotModel, _$identity);

  /// Serializes this ChatBotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatBotModel&&(identical(other.isUser, isUser) || other.isUser == isUser)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isUser,question);

@override
String toString() {
  return 'ChatBotModel(isUser: $isUser, question: $question)';
}


}

/// @nodoc
abstract mixin class $ChatBotModelCopyWith<$Res>  {
  factory $ChatBotModelCopyWith(ChatBotModel value, $Res Function(ChatBotModel) _then) = _$ChatBotModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isUser') bool isUser,@JsonKey(name: 'question') String question
});




}
/// @nodoc
class _$ChatBotModelCopyWithImpl<$Res>
    implements $ChatBotModelCopyWith<$Res> {
  _$ChatBotModelCopyWithImpl(this._self, this._then);

  final ChatBotModel _self;
  final $Res Function(ChatBotModel) _then;

/// Create a copy of ChatBotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isUser = null,Object? question = null,}) {
  return _then(_self.copyWith(
isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatBotModel].
extension ChatBotModelPatterns on ChatBotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatBotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatBotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatBotModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatBotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatBotModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatBotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isUser')  bool isUser, @JsonKey(name: 'question')  String question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatBotModel() when $default != null:
return $default(_that.isUser,_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isUser')  bool isUser, @JsonKey(name: 'question')  String question)  $default,) {final _that = this;
switch (_that) {
case _ChatBotModel():
return $default(_that.isUser,_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isUser')  bool isUser, @JsonKey(name: 'question')  String question)?  $default,) {final _that = this;
switch (_that) {
case _ChatBotModel() when $default != null:
return $default(_that.isUser,_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatBotModel implements ChatBotModel {
  const _ChatBotModel({@JsonKey(name: 'isUser') required this.isUser, @JsonKey(name: 'question') required this.question});
  factory _ChatBotModel.fromJson(Map<String, dynamic> json) => _$ChatBotModelFromJson(json);

@override@JsonKey(name: 'isUser') final  bool isUser;
@override@JsonKey(name: 'question') final  String question;

/// Create a copy of ChatBotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatBotModelCopyWith<_ChatBotModel> get copyWith => __$ChatBotModelCopyWithImpl<_ChatBotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatBotModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatBotModel&&(identical(other.isUser, isUser) || other.isUser == isUser)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isUser,question);

@override
String toString() {
  return 'ChatBotModel(isUser: $isUser, question: $question)';
}


}

/// @nodoc
abstract mixin class _$ChatBotModelCopyWith<$Res> implements $ChatBotModelCopyWith<$Res> {
  factory _$ChatBotModelCopyWith(_ChatBotModel value, $Res Function(_ChatBotModel) _then) = __$ChatBotModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isUser') bool isUser,@JsonKey(name: 'question') String question
});




}
/// @nodoc
class __$ChatBotModelCopyWithImpl<$Res>
    implements _$ChatBotModelCopyWith<$Res> {
  __$ChatBotModelCopyWithImpl(this._self, this._then);

  final _ChatBotModel _self;
  final $Res Function(_ChatBotModel) _then;

/// Create a copy of ChatBotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isUser = null,Object? question = null,}) {
  return _then(_ChatBotModel(
isUser: null == isUser ? _self.isUser : isUser // ignore: cast_nullable_to_non_nullable
as bool,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
