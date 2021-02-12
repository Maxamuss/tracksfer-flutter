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

class ColorPalette {
  static const PrimaryColor = Color(0xFF17181c);
  static const BackgroundColor = Color(0xFF050505);
  static const BackgroundSecondaryColor = Color(0xFF17181c);
  static const InputColor = Color(0xFF202022);
  static const WhiteTextColor = Color(0xFFfefffe);
}

ThemeData buildTheme() {
  return ThemeData(
    fontFamily: 'DM Sans',
    primaryColor: ColorPalette.PrimaryColor,
    scaffoldBackgroundColor: ColorPalette.BackgroundColor,
    appBarTheme: AppBarTheme(
      color: ColorPalette.BackgroundSecondaryColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: ColorPalette.WhiteTextColor,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
        color: ColorPalette.WhiteTextColor,
      ),
      headline2: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: ColorPalette.WhiteTextColor,
      ),
      headline3: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: ColorPalette.WhiteTextColor,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: ColorPalette.WhiteTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 17.0,
        color: ColorPalette.WhiteTextColor,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontSize: 15.0,
        color: ColorPalette.WhiteTextColor,
      ),
      button: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: ColorPalette.WhiteTextColor,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
