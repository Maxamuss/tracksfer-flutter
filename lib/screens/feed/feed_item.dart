import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/feed_activity.dart';

class FeedItemWidget extends StatefulWidget {
  final feedItem;

  FeedItemWidget(this.feedItem);

  @override
  _FeedItemWidgetState createState() => _FeedItemWidgetState();
}

class _FeedItemWidgetState extends State<FeedItemWidget> {
  @override
  Widget build(BuildContext context) {
    ObservableList<FeedActivity> activities = widget.feedItem.activities;

    return Container(
      child: ListView.builder(
        itemCount: activities.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // FeedActivity activity = activities[index];
          return ListTile(
            title: Text(''),
          );
        },
      ),
    );
  }
}
