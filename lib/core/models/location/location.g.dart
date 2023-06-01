// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MyLocationCWProxy {
  MyLocation latitude(double? latitude);

  MyLocation longitude(double? longitude);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MyLocation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MyLocation(...).copyWith(id: 12, name: "My name")
  /// ````
  MyLocation call({
    double? latitude,
    double? longitude,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMyLocation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMyLocation.copyWith.fieldName(...)`
class _$MyLocationCWProxyImpl implements _$MyLocationCWProxy {
  const _$MyLocationCWProxyImpl(this._value);

  final MyLocation _value;

  @override
  MyLocation latitude(double? latitude) => this(latitude: latitude);

  @override
  MyLocation longitude(double? longitude) => this(longitude: longitude);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MyLocation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MyLocation(...).copyWith(id: 12, name: "My name")
  /// ````
  MyLocation call({
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return MyLocation(
      latitude: latitude == const $CopyWithPlaceholder()
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double?,
      longitude: longitude == const $CopyWithPlaceholder()
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double?,
    );
  }
}

extension $MyLocationCopyWith on MyLocation {
  /// Returns a callable class that can be used as follows: `instanceOfMyLocation.copyWith(...)` or like so:`instanceOfMyLocation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MyLocationCWProxy get copyWith => _$MyLocationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyLocation _$MyLocationFromJson(Map<String, dynamic> json) => MyLocation(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$MyLocationToJson(MyLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  return val;
}
