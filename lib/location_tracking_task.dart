import 'dart:async';
import 'package:exchangerates/core/repository/location_repository.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/utils/background_service_helper.dart';
import 'package:exchangerates/utils/location_helper.dart';
import 'package:location/location.dart';

void backgroundLocationTask() {
  //
  Timer.periodic(Duration(seconds: 10), (Timer timer) async {
    if (!(await MyBackgroundServiceHelper.instance.isRunning())) {
      timer.cancel();
      return;
    }

    Location location = Location();
    LocationData? locationData;
    try {
      locationData = await location.getLocation();
    } catch (e) {
      locationData = null;
    }

    if (locationData != null) {
      LocationData? lastSavedLocation =
          await injector<LocationRepository>().fetchLastLocation();

      if (lastSavedLocation != null) {
        if (MyLocationHelper.distance(lastSavedLocation, locationData) > 100)
          print('Updating location!');
        await injector<LocationRepository>()
            .addNewLocation(locationData.latitude!, locationData.longitude!);
      }
      double latitude = locationData.latitude!;
      double longitude = locationData.longitude!;

      MyBackgroundServiceHelper.instance.invoke('currentLocation', {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
      });
    }
  });
}
