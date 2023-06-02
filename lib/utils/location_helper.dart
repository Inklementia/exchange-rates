// Dart imports:
import 'dart:math';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';

class MyLocationHelper {
  //

  static LocationData geoPointToLocationData(GeoPoint geoPoint) {
    return LocationData.fromMap({
      'latitude': geoPoint.latitude,
      'longitude': geoPoint.longitude,
    });
  }

  static double distance(LocationData startLocation, LocationData endLocation) {
    final lat1 = startLocation.latitude!;
    final lon1 = startLocation.longitude!;
    final lat2 = endLocation.latitude!;
    final lon2 = endLocation.longitude!;

    final double p = 0.017453292519943295;
    final double a = 0.5 -
        cos((lat2 - lat1) * p) / 2 +
        cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;

    final double distanceInMeters = 12742 * asin(sqrt(a)) * 1000;
    return distanceInMeters;
  }
}
