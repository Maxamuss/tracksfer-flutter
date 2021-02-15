import 'package:flutter/material.dart';
import 'package:tracksfer/screens/core/home/home.dart';
import 'package:tracksfer/screens/core/login/login_screen.dart';
import 'package:tracksfer/screens/core/splash/splash_screen.dart';
import 'package:tracksfer/screens/groups/create/group_create.dart';
import 'package:tracksfer/screens/groups/detailed/group_detail.dart';
import 'package:tracksfer/screens/groups/manage/group_manage.dart';
import 'package:tracksfer/screens/profile/settings.dart';

const LOGIN_ROUTE = '/';
const SPLASH_ROUTE = '/splash';
const HOME_ROUTE = '/home';
const SETTINGS_ROUTE = '/settings';
const GROUP_CREATE_ROUTE = '/group/create';
const GROUP_DETAILS_ROUTE = '/group/details';
const GROUP_MANAGE_ROUTE = '/group/manage';

class NavigationRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    LOGIN_ROUTE: (_) => LoginScreen(),
    SPLASH_ROUTE: (_) => SplashScreen(),
    HOME_ROUTE: (_) => HomeScreen(),
    SETTINGS_ROUTE: (_) => SettingsScreen(),
    GROUP_CREATE_ROUTE: (_) => GroupCreateScreen(),
    GROUP_DETAILS_ROUTE: (context) => _screenWithArgument(context),
    GROUP_MANAGE_ROUTE: (context) => _screenWithArgument(context)
  };

  static Widget _screenWithArgument(BuildContext context) {
    final route = ModalRoute.of(context).settings.name;
    final argument = ModalRoute.of(context).settings.arguments;
    switch (route) {
      case GROUP_DETAILS_ROUTE:
        return GroupDetailScreen(argument);
      case GROUP_MANAGE_ROUTE:
        return GroupManagementScreen(argument);
      default:
        return LoginScreen();
    }
  }
}
