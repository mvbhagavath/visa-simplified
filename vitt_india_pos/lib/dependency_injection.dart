import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitt_india_pos/core/network/network_info.dart';
import 'package:vitt_india_pos/services/analytics_service.dart';
import 'package:vitt_india_pos/services/vitt_http.dart';

final GetIt sl = GetIt.instance;

void resetSL() {
  sl.reset();
}

Future<void> init() async {
  final crashlytics = FirebaseCrashlytics.instance;
  final analyticsService = AnalyticsService();
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<FirebaseCrashlytics>(() => crashlytics);
  sl.registerLazySingleton<AnalyticsService>(() => analyticsService);
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

void registerDependencies() {
  registerDatasource();
  registerRepositories();
  registerUseCases();
  resgisterBlocs();
}

VittHttp get scHttp => sl<VittHttp>();

void registerDatasource() {
  final scHttp = VittHttp();
  sl.registerLazySingleton(() => scHttp);
}

void registerRepositories() {}

void registerUseCases() {}

void resgisterBlocs() {}
