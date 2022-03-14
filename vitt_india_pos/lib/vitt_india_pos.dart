import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/core/network/network_info.dart';
import 'package:vitt_india_pos/core/network/network_listener.dart';
import 'package:vitt_india_pos/core/utils/utils.dart';
import 'package:vitt_india_pos/core/widgets/no_internet.dart';
import 'package:vitt_india_pos/dependency_injection.dart' as di;
import 'package:vitt_india_pos/features/keypad/presentation/pages/pin_screen.dart';
import 'package:vitt_india_pos/generated/l10n.dart';
import 'package:secure_application/secure_application.dart';

class VittApp extends StatefulWidget {
  const VittApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  _VittAppState createState() => _VittAppState();
}

class _VittAppState extends State<VittApp> with WidgetsBindingObserver {
  final _listener = NetworkListener();
  bool _error = false;
  bool _initialized = false;
  final SecureApplicationController _secureApplicationController =
      SecureApplicationController(SecureApplicationState(secured: true));
  Future<void> initializeFlutterFire() async {
    try {
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _listener.getSubscription(callback: () async {
      final isConnected = await di.sl<NetworkInfo>().isConnected;
      if (!isConnected) {
        if (mounted) {
          Get.to(() => const NoInternet());
        }
      }
    });
    initializeFlutterFire();
    _secureApplicationController.secure();
  }

  @override
  void dispose() {
    super.dispose();
    _secureApplicationController.dispose();
  }

  Widget _materialApp() {
    return SecureApplication(
      nativeRemoveDelay: 100,
      secureApplicationController: _secureApplicationController,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => GestureDetector(
          onTap: () {
            /// To remove focus from keyboard when tapped anywhere else other than text field
            removeKeyboardFocus(context);
          },
          child: GetMaterialApp(
            theme: VittTheme.defaultTheme,
            debugShowCheckedModeBanner: false,
            title: 'Vitt India',
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale("en"),
            localeResolutionCallback: (locale, supportedLocales) {
              for (final supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale!.languageCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
            home: const PinScreen(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return Center(
        child: Text(S.of(context).somethingWentWrongTxt),
      );
    }
    if (!_initialized) {
      return Container(
        color: Colors.white,
      );
    }
    return _materialApp();
  }
}
