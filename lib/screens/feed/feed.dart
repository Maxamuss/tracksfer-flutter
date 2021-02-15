import 'package:flutter/material.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/screens/feed/feed_controller.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = G.get<FeedController>();
    //wrap with Observer each widget that needs to update when a value annotated with computed or observable changes in the controller, like when you do a refresh
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Feed'),
        ),
      ),
    );
  }
}
