import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackbar(
  String message, {
  Duration duration = const Duration(seconds: 5),
  BuildContext? context,
}) {
  ScaffoldMessenger.of(context ?? Get.context!).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Theme.of(context ?? Get.context!)
            .textTheme
            .bodyText1
            ?.copyWith(color: Colors.white),
      ),
      duration: duration,
    ),
  );
}
