import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchangerates/conf/values/system_ui_overlay_style_constants.dart';
import 'package:exchangerates/location_tracking_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:exchangerates/core/root/injector.dart';
import 'utils/shared_preference_helper.dart';
import 'package:exchangerates/app.dart';
import 'conf/enums/api_env_enum.dart';

const env = Env.Prod;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(MySystemUiOverlayStyle.light);

  await Firebase.initializeApp();
  FirebaseFirestore.setLoggingEnabled(false);

  await MySPHelper.init();

  configureDependencies();

  backgroundLocationTask();

  runApp(MyApp());
}
