// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_ratings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SafetyRatingsResponse _$SafetyRatingsResponseFromJson(
  Map<String, dynamic> json,
) => _SafetyRatingsResponse(
  category: json['category'] as String,
  probability: json['probability'] as String,
);

Map<String, dynamic> _$SafetyRatingsResponseToJson(
  _SafetyRatingsResponse instance,
) => <String, dynamic>{
  'category': instance.category,
  'probability': instance.probability,
};
