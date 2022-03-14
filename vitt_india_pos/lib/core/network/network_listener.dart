import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vitt_india_pos/core/widgets/no_internet.dart';

class NetworkListener {
  late StreamSubscription<ConnectivityResult> _streamSubscription;
  bool isShown = false;
  bool hasConnection = true;
  StreamSubscription<ConnectivityResult> getSubscription(
      {VoidCallback? callback}) {
    return _streamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (result == ConnectivityResult.none) {
        hasConnection = await InternetConnectionChecker().hasConnection;
        if (!isShown && !hasConnection) {
          isShown = true;
          if (callback != null) {
            callback();
          } else {
            Get.to(() => const NoInternet());
          }
        }
      } else {
        if (isShown) {
          isShown = false;
          if (navigator!.canPop()) {
            navigator!.pop();
          }
        }
      }
    });
  }

  void cancelSubscription() {
    _streamSubscription.cancel();
  }
}
