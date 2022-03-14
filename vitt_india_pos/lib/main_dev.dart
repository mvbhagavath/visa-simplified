import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:vitt_india_pos/core/utils/token_storage/token_model.dart';
import 'package:vitt_india_pos/dependency_injection.dart' as di;
import 'package:vitt_india_pos/vitt_india_pos.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  await di.init();
  di.registerDependencies();

  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(TokenModelAdapter());

  await S.load(const Locale('en'));

  runZonedGuarded(() {
    FlavorConfig(
      name: "DEVELOP",
      location: BannerLocation.bottomStart,
      variables: {
        "baseUrl": "https://balerion-stage.vittindia.com",
      },
    );
    runApp(const VittApp());
  }, (error, stackTrace) {
    FirebaseCrashlytics.instance.sendUnsentReports();
    FirebaseCrashlytics.instance.recordError(
      error,
      stackTrace,
    );
  });
}
