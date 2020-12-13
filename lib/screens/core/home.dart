import 'package:flutter/material.dart';
import 'package:tracksfer/screens/groups/group_list.dart';
import 'package:tracksfer/screens/groups/group_search.dart';
import 'package:tracksfer/screens/profile/profile.dart';
import '../feed/feed.dart';

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
  int _currentIndex = 0;
  String _appBarTitle;
  final List<String> _titles = [
    'Feed',
    'Groups',
    'Profile',
  ];
  final List<Widget> _children = [
    FeedScreen(),
    GroupListScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    String title = _titles[index];
    setState(() {
      this._currentIndex = index;
      this._appBarTitle = title;
    });
  }

  List<Widget> _getActions() {
    List<Widget> actions;

    if (_currentIndex == 0) {
      actions = [];
    } else if (_currentIndex == 1) {
      actions = [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: GroupSearchDelegate(),
            );
          },
        ),
      ];
    } else {
      actions = [];
    }

    return actions;
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
        actions: _getActions(),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
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
}
