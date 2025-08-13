import 'package:freezed_annotation/freezed_annotation.dart';

part 'safety_ratings_response.freezed.dart';
part 'safety_ratings_response.g.dart';

@freezed
class SafetyRatingsResponse with _$SafetyRatingsResponse {
  const factory SafetyRatingsResponse({
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'probability') required String probability,
  }) = _SafetyRatingsResponse;

  factory SafetyRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$SafetyRatingsResponseFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
