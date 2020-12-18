import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/screens/feed/feed.dart';
import 'package:tracksfer/screens/groups/group_list.dart';
import 'package:tracksfer/screens/groups/group_search.dart';
import 'package:tracksfer/screens/profile/profile.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final List<String> titles = [
    'Groups',
    'Feed',
    'Profile',
  ];
  final List<Widget> children = [
    GroupListScreen(),
    FeedScreen(),
    ProfileScreen(),
  ];
  final List<Widget> actions = [
    IconButton(
      icon: Icon(Icons.add),
      onPressed: () {
        G.get<NavigationController>().push(GROUP_CREATE_ROUTE);
      },
    ),
    Container(),
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        G.get<NavigationController>().push(SETTINGS_ROUTE);
      },
    )
  ];

  @observable
  int currentIndex = 1;

  @computed
  String get appBarTitle => titles[currentIndex];

  @computed
  Widget get currentBody => children[currentIndex];

  @computed
  List<Widget> get currentAction => [actions[currentIndex]];

  @action
  void onTabTapped(int index) {
    currentIndex = index;
  }

  Widget getLeading(BuildContext context) {
    if (currentIndex == 0) {
      return IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          showSearch(
            context: context,
            delegate: GroupSearchDelegate(),
          );
        },
      );
    } else if (currentIndex == 1) {
      return null;
    } else {
      return null;
    }
  }
}
