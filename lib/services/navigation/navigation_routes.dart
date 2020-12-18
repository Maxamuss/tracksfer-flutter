import 'package:flutter/material.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/core/home.dart';
import 'package:tracksfer/screens/core/login/login_screen.dart';
import 'package:tracksfer/screens/core/splash/splash_screen.dart';
import 'package:tracksfer/screens/groups/group_detail.dart';

const LOGIN_ROUTE = '/';
const SPLASH_ROUTE = '/splash';
const HOME_ROUTE = '/home';
const GROUP_DETAILS_ROUTE = '/group/details';

class NavigationRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    LOGIN_ROUTE: (_) => LoginScreen(),
    SPLASH_ROUTE: (_) => SplashScreen(),
    HOME_ROUTE: (_) => HomeScreen(),
    GROUP_DETAILS_ROUTE: (context) => _groupDetailScreenHandler(context)
  };

  static Widget _groupDetailScreenHandler(BuildContext context) {
    final group = ModalRoute.of(context).settings.arguments as ObservableGroup;
    return GroupDetailScreen(group);
  }
}
