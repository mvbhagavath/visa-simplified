import 'package:flutter_flavor/flutter_flavor.dart';

String baseUrl = FlavorConfig.instance.variables["baseUrl"] as String;

// Login
const String requestOtpUrl = "/login/v1/login-user";
const String refreshTokenUrl = "/login/v1/refresh-token";
const String verifyUserUrl = "/login/v1/verify-user";
