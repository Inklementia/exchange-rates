import 'dart:async';
import 'dart:ui';

import 'package:exchangerates/location_tracking_task.dart';
import 'package:exchangerates/utils/location_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyBackgroundServiceHelper {
  //
  static final FlutterBackgroundService instance = FlutterBackgroundService();

  static const notificationTitle = 'Location Tracking';
  static const notificationChannelId = 'default_channel';

  static const foregroundServiceId = 888;

  //

  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    notificationChannelId,
    notificationTitle,
    importance: Importance.low, // importance must be at low or higher level
  );

  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    // init notifs
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    // init service
    await instance.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStart,
        autoStart: true,
        isForegroundMode: true,
        notificationChannelId: notificationChannelId,
        initialNotificationTitle: notificationTitle,
        initialNotificationContent: 'Initializing...',
        foregroundServiceNotificationId: foregroundServiceId,
      ),
      iosConfiguration: IosConfiguration(
        // auto start service
        autoStart: true,

        // this will be executed when app is in foreground in separated isolate
        onForeground: onStart,

        // you have to enable background fetch capability on xcode project
        onBackground: onIosBackground,
      ),
    );

    instance.startService();
  }

// to ensure this is executed
// run app from xcode, then from xcode menu, select Simulate Background Fetch

  @pragma('vm:entry-point')
  static Future<bool> onIosBackground(ServiceInstance service) async {
    WidgetsFlutterBinding.ensureInitialized();
    DartPluginRegistrant.ensureInitialized();

    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.reload();
    final log = preferences.getStringList('log') ?? <String>[];
    log.add(DateTime.now().toIso8601String());
    await preferences.setStringList('log', log);

    return true;
  }

  @pragma('vm:entry-point')
  static void onStart(ServiceInstance service) async {
    // Only available for flutter 3.0.0 and later
    DartPluginRegistrant.ensureInitialized();

    if (service is AndroidServiceInstance) {
      service.on('currentLocation').listen((event) {
        service.setAsBackgroundService();
        service.setAsForegroundService();
      });
    }

    service.on('stopService').listen((event) {
      service.stopSelf();
    });

    //

    service.on('currentLocation').listen((event) async {
      print('Current Location: ${event?['latitude']} / ${event?['longitude']}');

      if (service is AndroidServiceInstance) {
        if (await service.isForegroundService()) {
          flutterLocalNotificationsPlugin.show(
            foregroundServiceId,
            notificationTitle,
            '${event?['latitude']} / ${event?['longitude']}',
            const NotificationDetails(
              android: AndroidNotificationDetails(
                notificationChannelId,
                notificationTitle,
                icon: 'ic_bg_service_small',
                ongoing: true,
              ),
            ),
          );
        }
      }
    });
  }
}
