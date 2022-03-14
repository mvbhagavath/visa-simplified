import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vitt_india_pos/core/widgets/no_internet.dart';

Future<String> getDeviceId() async {
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.id!;
  } else if (Platform.isIOS) {
    final IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
    return iosDeviceInfo.identifierForVendor!;
  }
  return "";
}

bool removeKeyboardFocus(BuildContext context) {
  final FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus?.unfocus();
    return false;
  }
  return true;
}

Future<void> checkForInternetConnection() async {
  final hasInternetConnection = await InternetConnectionChecker().hasConnection;
  if (!hasInternetConnection) {
    Get.offAll(() => const NoInternet());
  }
}

Future<Uint8List> getEncryptionKey(String key) async {
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();
  final containsEncryptionKey = await secureStorage.containsKey(key: key);
  if (!containsEncryptionKey) {
    final secureKey = Hive.generateSecureKey();
    await secureStorage.write(key: key, value: base64UrlEncode(secureKey));
  }
  final keyFromSecureStorage = await secureStorage.read(key: key);
  final encryptionKey = base64Url.decode(keyFromSecureStorage!);
  return encryptionKey;
}
