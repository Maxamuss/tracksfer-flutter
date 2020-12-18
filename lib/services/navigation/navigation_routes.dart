import 'package:flutter/material.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/core/home.dart';
import 'package:tracksfer/screens/core/login/login_screen.dart';
import 'package:tracksfer/screens/core/splash/splash_screen.dart';
import 'package:tracksfer/screens/groups/create/group_create.dart';
import 'package:tracksfer/screens/groups/group_detail.dart';
import 'package:tracksfer/screens/profile/settings.dart';

const LOGIN_ROUTE = '/';
const SPLASH_ROUTE = '/splash';
const HOME_ROUTE = '/home';
const SETTINGS_ROUTE = '/settings';
const GROUP_DETAILS_ROUTE = '/group/details';
const GROUP_CREATE_ROUTE = '/group/create';

class NavigationRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    LOGIN_ROUTE: (_) => LoginScreen(),
    SPLASH_ROUTE: (_) => SplashScreen(),
    HOME_ROUTE: (_) => HomeScreen(),
    SETTINGS_ROUTE: (_) => SettingsScreen(),
    GROUP_CREATE_ROUTE: (_) => GroupCreateScreen(),
    GROUP_DETAILS_ROUTE: (context) => _groupDetailScreenHandler(context)
  };

  static Widget _groupDetailScreenHandler(BuildContext context) {
    final group = ModalRoute.of(context).settings.arguments as ObservableGroup;
    return GroupDetailScreen(group);
  }
}
