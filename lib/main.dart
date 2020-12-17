import 'package:flutter/material.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/screens/core/splash/splash_screen.dart';

import 'screens/core/home.dart';
import 'screens/core/login/login_screen.dart';

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
      theme: ThemeData(
        // scaffoldBackgroundColor: Color(0xff22272C),
        // appBarTheme: AppBarTheme(
        //   color: Color(0xff22272C),
        //   elevation: 0,
        //   centerTitle: true,
        // ),
        fontFamily: 'HKGrotesk',
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.normal,
        //     color: Color(0xffFCFBF8),
        //   ),
        // ),
        // primaryColor: Color(0xffFCFBF8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash',
      routes: {
        '/': (_) => LoginScreen(),
        '/splash': (_) => SplashScreen(),
        '/home': (_) => HomeScreen(),
      },
    );
  }
}
