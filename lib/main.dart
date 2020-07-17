import 'package:flutter/material.dart';
import 'package:world_clock_app/locator.dart';
import 'package:world_clock_app/routing/router.dart';
import 'package:world_clock_app/services/navigation_service.dart';
import 'package:world_clock_app/styles/themes.dart';
import 'package:world_clock_app/views/home/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Clock',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeView(),
      onGenerateRoute: generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
