// Package imports:
import 'package:app_settings/app_settings.dart';
import 'package:exchangerates/conf/enums/alert_type_enum.dart';
import 'package:exchangerates/conf/values/strings_constants.dart';
import 'package:exchangerates/core/repository/location_repository.dart';
import 'package:exchangerates/location_tracking_task.dart';
import 'package:exchangerates/utils/background_service_helper.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/utils/shared_preference_helper.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
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
  bool isLocationEnabled = MySPHelper.trackLocation!;

  @observable
  LocationData? locationData;

  //

  void setData() async {
    bool isRunning = await MyBackgroundServiceHelper.instance.isRunning();
    if (!isRunning) setIsLocationEnabled(false);
  }

  void startTrackingLocation() {
    MyBackgroundServiceHelper.init();
    MyBackgroundServiceHelper.instance.invoke("currentLocation");
  }

  void stopLocationTracking() async {
    final service = MyBackgroundServiceHelper.instance;
    var isRunning = await service.isRunning();
    if (isRunning) service.invoke("stopService");
  }

  Future<bool> _checkLocationPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        injector<NavigatorService>()
            .showAlert(MyStrings.locationServiceRequired);
        return false;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      AppSettings.openAppSettings();
      return false;
    }

    if (_permissionGranted != PermissionStatus.granted) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        injector<NavigatorService>()
            .showAlert(MyStrings.noPermissionToUseLocation);
        return false;
      }
    }
    return true;
  }

  //

  @action
  void setIsLocationEnabled(bool value) async {
    isLocationEnabled = value;
    MySPHelper.trackLocation = isLocationEnabled;

    if (isLocationEnabled) {
      final result = await _checkLocationPermission();
      if (result) startTrackingLocation();
    } else {
      stopLocationTracking();
    }
  }

  @action
  void setLocationData(LocationData? value) => locationData = value;
}
