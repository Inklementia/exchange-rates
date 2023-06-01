// Dart imports:
import 'dart:math';

// Package imports:
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';

class MyLocationHelper {
  //
  static final _myLocation = BehaviorSubject<LocationData?>();
  static BehaviorSubject<LocationData?> get myLocation$ => _myLocation;
  static LocationData? get myLocation => myLocation$.valueOrNull;

  //

  static Future<LocationData> getLocation() async {
    if (myLocation != null) {
      Location.instance.getLocation().then((position) {
        final latLang = LocationData.fromMap({
          'latitude': position.latitude,
          'longitude': position.longitude,
        });
        _myLocation.add(latLang);
      });
      return myLocation!;
    } else {
      final position = await Location.instance.getLocation();
      final latLang = LocationData.fromMap({
        'latitude': position.latitude,
        'longitude': position.longitude,
      });
      _myLocation.add(latLang);
      return latLang;
    }
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
