// Package imports:
import 'package:exchangerates/utils/permission_helper.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

class MyLocationHelper {
  //
  static final _myLocation = BehaviorSubject<LatLng?>();
  static BehaviorSubject<LatLng?> get myLocation$ => _myLocation;

  static LatLng? get myLocation => myLocation$.valueOrNull;

  static Future getLocation() async {
    final isGranted = await MyPermissionHelper.request(Permission.location);
    if (isGranted == null || !isGranted) return isGranted;

    final position = await Geolocator.getCurrentPosition();
    return LatLng(position.latitude, position.longitude);
  }

  static void init() {
    Geolocator.getPositionStream().listen((data) {
      _myLocation.add(LatLng(data.latitude, data.longitude));
    }).onError((error) {
      _myLocation.add(null);
    });
  }

  // static Future<LatLng> getLocation() async {
  //   if (myLocation != null) {
  //     Geolocator.getCurrentPosition().then((position) {
  //       final latLang = LatLng(position.latitude, position.longitude);
  //       _myLocation.add(latLang);
  //     });
  //     return myLocation!;
  //   } else {
  //     final position = await Geolocator.getCurrentPosition();
  //     final latLang = LatLng(position.latitude, position.longitude);
  //     _myLocation.add(latLang);
  //     return latLang;
  //   }
  // }
}
