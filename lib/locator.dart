import 'package:get_it/get_it.dart';import 'package:world_clock_app/services/navigation_service.dart';import 'package:world_clock_app/services/time_helper_service.dart';GetIt locator = GetIt.instance;void setupLocator() {  TimeHelperService();  locator.registerLazySingleton(() => NavigationService());  //locator.registerLazySingleton(() => Api());}