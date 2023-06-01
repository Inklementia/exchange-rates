// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@CopyWith()
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
)
class MyLocation {
  //
  @JsonKey(defaultValue: 0)
  final double? latitude;

  @JsonKey(defaultValue: 0)
  final double? longitude;

  //
  MyLocation({
    required this.latitude,
    required this.longitude,
  });
  //

  factory MyLocation.fromJson(Map<String, dynamic> json) =>
      _$MyLocationFromJson(json);

  Map<String, dynamic> toJson() => _$MyLocationToJson(this);
}
