import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/feed_item.dart';
import 'package:tracksfer/screens/feed/feed_controller.dart';
import 'package:tracksfer/screens/feed/feed_item.dart';
import 'package:tracksfer/widgets/error.dart';
import 'package:tracksfer/widgets/loading.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FeedWidget();
  }
}

class FeedWidget extends StatefulWidget {
  FeedWidget({Key key}) : super(key: key);

  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  final _controller = G.get<FeedController>();

  Widget errorWidget;

  @override
  void initState() {
    super.initState();
    errorWidget = LoadErrorWidget(
      errorMessage: 'Failed to load your groups.',
      function: _controller.refresh,
    );
    _controller.loadFeed();
  }

  @override
  Widget build(BuildContext context) {
    //wrap with Observer each widget that needs to update when a value annotated with computed or observable changes in the controller, like when you do a refresh
    return Observer(
      builder: (_) {
        if (_controller.isLoading) {
          return LoadingWidget();
        } else if (_controller.hasError) {
          return errorWidget;
        } else if (_controller.isEmpty) {
          return Center(
            child: Text('No feed to show...'),
          );
        } else {
          return CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text(
                  'Feed',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'DM Sans',
                  ),
                ),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              ),
              CupertinoSliverRefreshControl(
                onRefresh: () async => _controller.loadFeed(),
              ),
              SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      FeedItem feed = _controller.items[index];
                      return FeedItemWidget(feed);
                    },
                    childCount: _controller.length,
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
