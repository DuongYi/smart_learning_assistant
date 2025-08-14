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
mixin _$InlineDataDTO {

@JsonKey(name: 'mime_type') String get mimeType; String get data;
/// Create a copy of InlineDataDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InlineDataDTOCopyWith<InlineDataDTO> get copyWith => _$InlineDataDTOCopyWithImpl<InlineDataDTO>(this as InlineDataDTO, _$identity);

  /// Serializes this InlineDataDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InlineDataDTO&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mimeType,data);

@override
String toString() {
  return 'InlineDataDTO(mimeType: $mimeType, data: $data)';
}


}

/// @nodoc
abstract mixin class $InlineDataDTOCopyWith<$Res>  {
  factory $InlineDataDTOCopyWith(InlineDataDTO value, $Res Function(InlineDataDTO) _then) = _$InlineDataDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mime_type') String mimeType, String data
});




}
/// @nodoc
class _$InlineDataDTOCopyWithImpl<$Res>
    implements $InlineDataDTOCopyWith<$Res> {
  _$InlineDataDTOCopyWithImpl(this._self, this._then);

  final InlineDataDTO _self;
  final $Res Function(InlineDataDTO) _then;

/// Create a copy of InlineDataDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mimeType = null,Object? data = null,}) {
  return _then(_self.copyWith(
mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InlineDataDTO].
extension InlineDataDTOPatterns on InlineDataDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InlineDataDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InlineDataDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InlineDataDTO value)  $default,){
final _that = this;
switch (_that) {
case _InlineDataDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InlineDataDTO value)?  $default,){
final _that = this;
switch (_that) {
case _InlineDataDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mime_type')  String mimeType,  String data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InlineDataDTO() when $default != null:
return $default(_that.mimeType,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mime_type')  String mimeType,  String data)  $default,) {final _that = this;
switch (_that) {
case _InlineDataDTO():
return $default(_that.mimeType,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mime_type')  String mimeType,  String data)?  $default,) {final _that = this;
switch (_that) {
case _InlineDataDTO() when $default != null:
return $default(_that.mimeType,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InlineDataDTO implements InlineDataDTO {
  const _InlineDataDTO({@JsonKey(name: 'mime_type') required this.mimeType, required this.data});
  factory _InlineDataDTO.fromJson(Map<String, dynamic> json) => _$InlineDataDTOFromJson(json);

@override@JsonKey(name: 'mime_type') final  String mimeType;
@override final  String data;

/// Create a copy of InlineDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InlineDataDTOCopyWith<_InlineDataDTO> get copyWith => __$InlineDataDTOCopyWithImpl<_InlineDataDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InlineDataDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InlineDataDTO&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mimeType,data);

@override
String toString() {
  return 'InlineDataDTO(mimeType: $mimeType, data: $data)';
}


}

/// @nodoc
abstract mixin class _$InlineDataDTOCopyWith<$Res> implements $InlineDataDTOCopyWith<$Res> {
  factory _$InlineDataDTOCopyWith(_InlineDataDTO value, $Res Function(_InlineDataDTO) _then) = __$InlineDataDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mime_type') String mimeType, String data
});




}
/// @nodoc
class __$InlineDataDTOCopyWithImpl<$Res>
    implements _$InlineDataDTOCopyWith<$Res> {
  __$InlineDataDTOCopyWithImpl(this._self, this._then);

  final _InlineDataDTO _self;
  final $Res Function(_InlineDataDTO) _then;

/// Create a copy of InlineDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mimeType = null,Object? data = null,}) {
  return _then(_InlineDataDTO(
mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FileDataDTO {

 String get fileUri;@JsonKey(name: 'mime_type') String? get mimeType;
/// Create a copy of FileDataDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileDataDTOCopyWith<FileDataDTO> get copyWith => _$FileDataDTOCopyWithImpl<FileDataDTO>(this as FileDataDTO, _$identity);

  /// Serializes this FileDataDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileDataDTO&&(identical(other.fileUri, fileUri) || other.fileUri == fileUri)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileUri,mimeType);

@override
String toString() {
  return 'FileDataDTO(fileUri: $fileUri, mimeType: $mimeType)';
}


}

/// @nodoc
abstract mixin class $FileDataDTOCopyWith<$Res>  {
  factory $FileDataDTOCopyWith(FileDataDTO value, $Res Function(FileDataDTO) _then) = _$FileDataDTOCopyWithImpl;
@useResult
$Res call({
 String fileUri,@JsonKey(name: 'mime_type') String? mimeType
});




}
/// @nodoc
class _$FileDataDTOCopyWithImpl<$Res>
    implements $FileDataDTOCopyWith<$Res> {
  _$FileDataDTOCopyWithImpl(this._self, this._then);

  final FileDataDTO _self;
  final $Res Function(FileDataDTO) _then;

/// Create a copy of FileDataDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileUri = null,Object? mimeType = freezed,}) {
  return _then(_self.copyWith(
fileUri: null == fileUri ? _self.fileUri : fileUri // ignore: cast_nullable_to_non_nullable
as String,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileDataDTO].
extension FileDataDTOPatterns on FileDataDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileDataDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileDataDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileDataDTO value)  $default,){
final _that = this;
switch (_that) {
case _FileDataDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileDataDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FileDataDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fileUri, @JsonKey(name: 'mime_type')  String? mimeType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileDataDTO() when $default != null:
return $default(_that.fileUri,_that.mimeType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fileUri, @JsonKey(name: 'mime_type')  String? mimeType)  $default,) {final _that = this;
switch (_that) {
case _FileDataDTO():
return $default(_that.fileUri,_that.mimeType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fileUri, @JsonKey(name: 'mime_type')  String? mimeType)?  $default,) {final _that = this;
switch (_that) {
case _FileDataDTO() when $default != null:
return $default(_that.fileUri,_that.mimeType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileDataDTO implements FileDataDTO {
  const _FileDataDTO({required this.fileUri, @JsonKey(name: 'mime_type') this.mimeType});
  factory _FileDataDTO.fromJson(Map<String, dynamic> json) => _$FileDataDTOFromJson(json);

@override final  String fileUri;
@override@JsonKey(name: 'mime_type') final  String? mimeType;

/// Create a copy of FileDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileDataDTOCopyWith<_FileDataDTO> get copyWith => __$FileDataDTOCopyWithImpl<_FileDataDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileDataDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileDataDTO&&(identical(other.fileUri, fileUri) || other.fileUri == fileUri)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileUri,mimeType);

@override
String toString() {
  return 'FileDataDTO(fileUri: $fileUri, mimeType: $mimeType)';
}


}

/// @nodoc
abstract mixin class _$FileDataDTOCopyWith<$Res> implements $FileDataDTOCopyWith<$Res> {
  factory _$FileDataDTOCopyWith(_FileDataDTO value, $Res Function(_FileDataDTO) _then) = __$FileDataDTOCopyWithImpl;
@override @useResult
$Res call({
 String fileUri,@JsonKey(name: 'mime_type') String? mimeType
});




}
/// @nodoc
class __$FileDataDTOCopyWithImpl<$Res>
    implements _$FileDataDTOCopyWith<$Res> {
  __$FileDataDTOCopyWithImpl(this._self, this._then);

  final _FileDataDTO _self;
  final $Res Function(_FileDataDTO) _then;

/// Create a copy of FileDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fileUri = null,Object? mimeType = freezed,}) {
  return _then(_FileDataDTO(
fileUri: null == fileUri ? _self.fileUri : fileUri // ignore: cast_nullable_to_non_nullable
as String,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PartChatDTO {

 String? get text;@JsonKey(name: 'inline_data') InlineDataDTO? get inlineData;@JsonKey(name: 'file_data') FileDataDTO? get fileData;
/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartChatDTOCopyWith<PartChatDTO> get copyWith => _$PartChatDTOCopyWithImpl<PartChatDTO>(this as PartChatDTO, _$identity);

  /// Serializes this PartChatDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartChatDTO&&(identical(other.text, text) || other.text == text)&&(identical(other.inlineData, inlineData) || other.inlineData == inlineData)&&(identical(other.fileData, fileData) || other.fileData == fileData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,inlineData,fileData);

@override
String toString() {
  return 'PartChatDTO(text: $text, inlineData: $inlineData, fileData: $fileData)';
}


}

/// @nodoc
abstract mixin class $PartChatDTOCopyWith<$Res>  {
  factory $PartChatDTOCopyWith(PartChatDTO value, $Res Function(PartChatDTO) _then) = _$PartChatDTOCopyWithImpl;
@useResult
$Res call({
 String? text,@JsonKey(name: 'inline_data') InlineDataDTO? inlineData,@JsonKey(name: 'file_data') FileDataDTO? fileData
});


$InlineDataDTOCopyWith<$Res>? get inlineData;$FileDataDTOCopyWith<$Res>? get fileData;

}
/// @nodoc
class _$PartChatDTOCopyWithImpl<$Res>
    implements $PartChatDTOCopyWith<$Res> {
  _$PartChatDTOCopyWithImpl(this._self, this._then);

  final PartChatDTO _self;
  final $Res Function(PartChatDTO) _then;

/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? inlineData = freezed,Object? fileData = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,inlineData: freezed == inlineData ? _self.inlineData : inlineData // ignore: cast_nullable_to_non_nullable
as InlineDataDTO?,fileData: freezed == fileData ? _self.fileData : fileData // ignore: cast_nullable_to_non_nullable
as FileDataDTO?,
  ));
}
/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InlineDataDTOCopyWith<$Res>? get inlineData {
    if (_self.inlineData == null) {
    return null;
  }

  return $InlineDataDTOCopyWith<$Res>(_self.inlineData!, (value) {
    return _then(_self.copyWith(inlineData: value));
  });
}/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileDataDTOCopyWith<$Res>? get fileData {
    if (_self.fileData == null) {
    return null;
  }

  return $FileDataDTOCopyWith<$Res>(_self.fileData!, (value) {
    return _then(_self.copyWith(fileData: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? text, @JsonKey(name: 'inline_data')  InlineDataDTO? inlineData, @JsonKey(name: 'file_data')  FileDataDTO? fileData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartChatDTO() when $default != null:
return $default(_that.text,_that.inlineData,_that.fileData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? text, @JsonKey(name: 'inline_data')  InlineDataDTO? inlineData, @JsonKey(name: 'file_data')  FileDataDTO? fileData)  $default,) {final _that = this;
switch (_that) {
case _PartChatDTO():
return $default(_that.text,_that.inlineData,_that.fileData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? text, @JsonKey(name: 'inline_data')  InlineDataDTO? inlineData, @JsonKey(name: 'file_data')  FileDataDTO? fileData)?  $default,) {final _that = this;
switch (_that) {
case _PartChatDTO() when $default != null:
return $default(_that.text,_that.inlineData,_that.fileData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PartChatDTO extends PartChatDTO {
  const _PartChatDTO({this.text, @JsonKey(name: 'inline_data') this.inlineData, @JsonKey(name: 'file_data') this.fileData}): super._();
  factory _PartChatDTO.fromJson(Map<String, dynamic> json) => _$PartChatDTOFromJson(json);

@override final  String? text;
@override@JsonKey(name: 'inline_data') final  InlineDataDTO? inlineData;
@override@JsonKey(name: 'file_data') final  FileDataDTO? fileData;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartChatDTO&&(identical(other.text, text) || other.text == text)&&(identical(other.inlineData, inlineData) || other.inlineData == inlineData)&&(identical(other.fileData, fileData) || other.fileData == fileData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,inlineData,fileData);

@override
String toString() {
  return 'PartChatDTO(text: $text, inlineData: $inlineData, fileData: $fileData)';
}


}

/// @nodoc
abstract mixin class _$PartChatDTOCopyWith<$Res> implements $PartChatDTOCopyWith<$Res> {
  factory _$PartChatDTOCopyWith(_PartChatDTO value, $Res Function(_PartChatDTO) _then) = __$PartChatDTOCopyWithImpl;
@override @useResult
$Res call({
 String? text,@JsonKey(name: 'inline_data') InlineDataDTO? inlineData,@JsonKey(name: 'file_data') FileDataDTO? fileData
});


@override $InlineDataDTOCopyWith<$Res>? get inlineData;@override $FileDataDTOCopyWith<$Res>? get fileData;

}
/// @nodoc
class __$PartChatDTOCopyWithImpl<$Res>
    implements _$PartChatDTOCopyWith<$Res> {
  __$PartChatDTOCopyWithImpl(this._self, this._then);

  final _PartChatDTO _self;
  final $Res Function(_PartChatDTO) _then;

/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? inlineData = freezed,Object? fileData = freezed,}) {
  return _then(_PartChatDTO(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,inlineData: freezed == inlineData ? _self.inlineData : inlineData // ignore: cast_nullable_to_non_nullable
as InlineDataDTO?,fileData: freezed == fileData ? _self.fileData : fileData // ignore: cast_nullable_to_non_nullable
as FileDataDTO?,
  ));
}

/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InlineDataDTOCopyWith<$Res>? get inlineData {
    if (_self.inlineData == null) {
    return null;
  }

  return $InlineDataDTOCopyWith<$Res>(_self.inlineData!, (value) {
    return _then(_self.copyWith(inlineData: value));
  });
}/// Create a copy of PartChatDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileDataDTOCopyWith<$Res>? get fileData {
    if (_self.fileData == null) {
    return null;
  }

  return $FileDataDTOCopyWith<$Res>(_self.fileData!, (value) {
    return _then(_self.copyWith(fileData: value));
  });
}
}

// dart format on
