import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchangerates/utils/collection_seeder.dart';
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

  await Firebase.initializeApp();
  FirebaseFirestore.setLoggingEnabled(true);

  await MySPHelper.init();

  configureDependencies();

  runApp(MyApp());
}
