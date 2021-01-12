import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tracksfer/screens/core/home/home_controller.dart';

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
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
          // appBar: AppBar(
          //   centerTitle: true,
          //   title: Text(_controller.appBarTitle),
          //   leading: _controller.getLeading(context),
          //   actions: _controller.currentAction,
          // ),
          body: _controller.currentBody,
          bottomNavigationBar: Observer(builder: (_) {
            return BottomNavigationBar(
              // backgroundColor: Color(0xff2E343B),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: _controller.onTabTapped,
              currentIndex: _controller.currentIndex,
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
            );
          }));
    });
  }
}
