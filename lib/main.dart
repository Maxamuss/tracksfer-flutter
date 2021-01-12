import 'package:flutter/material.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';

void main() {
  initLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: buildTheme(),
        navigatorKey: G.get<NavigationController>().navigationKey,
        initialRoute: SPLASH_ROUTE,
        routes: NavigationRoutes.routes);
  }
}

ThemeData buildTheme() {
  return ThemeData(
    fontFamily: 'DM Sans',
    primaryColor: Color(0xff2d8fff),
    scaffoldBackgroundColor: Color(0xff050505),
    appBarTheme: AppBarTheme(
      color: Color(0xff17181b),
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline3: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontSize: 15.0,
        color: Color(0xff9a9aa0),
      ),
      button: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
