import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class AnalyticsService {
  final FirebaseAnalytics _firebaseAnalytics = FirebaseAnalytics();

  FirebaseAnalytics get instance => _firebaseAnalytics;

  FirebaseAnalyticsObserver getObserver() {
    return FirebaseAnalyticsObserver(analytics: _firebaseAnalytics);
  }

  Future<void> logEventAppOpen() async {
    await _firebaseAnalytics.logAppOpen();
  }

  Future<void> logEventUserSignedIn({String method = "username/email"}) async {
    await _firebaseAnalytics.logLogin(loginMethod: method);
  }

  void setUserInfo(String userID) {
    _firebaseAnalytics.setUserId(userID);
  }

  Future<void> setCurrentScreen(String screenName) async {
    _firebaseAnalytics.setCurrentScreen(screenName: screenName);
  }

  Future<void> sendAppEvent(
      String eventName, Map<String, dynamic> parameters) async {
    await _firebaseAnalytics.logEvent(name: eventName, parameters: parameters);
  }
}
