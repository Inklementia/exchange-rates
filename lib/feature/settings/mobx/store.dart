// Package imports:
import 'package:app_settings/app_settings.dart';
import 'package:exchangerates/utils/location_helper.dart';
import 'package:exchangerates/utils/shared_preference_helper.dart';
import 'package:mobx/mobx.dart';

// Project imports:
import 'package:location/location.dart';

part 'store.g.dart';

class SettingsStore extends _SettingsStore with _$SettingsStore {}

abstract class _SettingsStore with Store {
  //
  bool isLocationTrackingEnabled = false;

  Location location = Location();

  bool _serviceEnabled = false;
  PermissionStatus? _permissionGranted;

  //
  @observable
  bool isLocationEnabled = false;

  @observable
  LocationData? locationData;

  //
  void subsForLocationUpdates() {
    MyLocationHelper.myLocation$.listen(setLocationData);
  }

  Future<void> _checkLocationPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      AppSettings.openAppSettings();
      return;
    }

    if (_permissionGranted != PermissionStatus.granted) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  //

  @action
  void setIsLocationEnabled(bool value) {
    isLocationEnabled = value;
    MySPHelper.trackLocation = isLocationEnabled;

    if (isLocationEnabled) {
      _checkLocationPermission();
      MyLocationHelper.getLocation();
    }
  }

  @action
  void setLocationData(LocationData? value) => locationData = value;
}
