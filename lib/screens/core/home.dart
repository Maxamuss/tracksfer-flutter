import 'package:flutter/material.dart';

import '../feed/feed.dart';
import '../groups/group_create.dart';
import '../groups/group_list.dart';
import '../groups/group_search.dart';
import '../profile/profile.dart';
import '../profile/settings.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  // FirebaseMessaging _fcm = FirebaseMessaging();
  int _currentIndex = 1;
  String _appBarTitle;
  final List<String> _titles = [
    'Groups',
    'Feed',
    'Profile',
  ];
  final List<Widget> _children = [
    GroupListScreen(),
    FeedScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    String title = _titles[index];
    setState(() {
      this._currentIndex = index;
      this._appBarTitle = title;
    });
  }

  @override
  void initState() {
    _appBarTitle = _titles[_currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_appBarTitle),
        leading: _getLeading(),
        actions: _getActions(),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color(0xff2E343B),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          )
        ],
      ),
    );
  }

  Widget _getLeading() {
    Widget leading;

    if (_currentIndex == 0) {
      leading = IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          showSearch(
            context: context,
            delegate: GroupSearchDelegate(),
          );
        },
      );
    } else if (_currentIndex == 1) {
      leading = null;
    } else {
      leading = null;
    }

    return leading;
  }

  List<Widget> _getActions() {
    List<Widget> actions;

    if (_currentIndex == 0) {
      actions = [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroupCreateScreen(),
              ),
            );
          },
        ),
      ];
    } else if (_currentIndex == 1) {
      actions = [];
    } else {
      actions = [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              ),
            );
          },
        ),
      ];
    }

    return actions;
  }
}
