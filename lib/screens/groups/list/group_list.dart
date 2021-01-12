import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_time_ago/get_time_ago.dart';

import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/group_search.dart';
import 'package:tracksfer/screens/groups/list/group_list_controller.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';
import 'package:tracksfer/widgets/search_bar.dart';

import '../../../widgets/error.dart';
import '../../../widgets/loading.dart';

class GroupListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GroupListWidget();
  }
}

class GroupListWidget extends StatefulWidget {
  @override
  _GroupListWidgetState createState() => _GroupListWidgetState();
}

class _GroupListWidgetState extends State<GroupListWidget> {
  final _controller = G.get<GroupListController>();
  final _navigator = G.get<NavigationController>();

  Widget errorWidget;

  @override
  void initState() {
    super.initState();
    errorWidget = LoadErrorWidget(
      errorMessage: 'Failed to load your groups.',
      function: _controller.refresh,
    );
    _controller.loadGroupList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (_controller.isLoading) {
          return LoadingWidget();
        } else if (_controller.hasError) {
          return errorWidget;
        } else if (_controller.isEmpty) {
          return Center(
            child: Text('You are not in any groups yet'),
          );
        } else {
          // return RefreshIndicator(
          //   onRefresh: () async => _controller.loadGroupList(),
          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                snap: false,
                floating: false,
                expandedHeight: 150.0,
                backgroundColor: Theme.of(context).appBarTheme.color,
                title: Text(
                  'Playlists',
                  style: Theme.of(context).textTheme.headline6,
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => _navigator.push(GROUP_CREATE_ROUTE),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 70.0),
                          Text(
                            'Playlists',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 10.0),
                          SearchBarWidget(() {
                            showSearch(
                              context: context,
                              delegate: GroupSearchDelegate(),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    ObservableGroup group = _controller.groups[index];
                    return ListTile(
                      title: Text(
                        group.groupName,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      subtitle: Text(
                        group.groupDesc,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      trailing: Text(TimeAgo.getTimeAgo(group.updatedAt)),
                      onTap: () {
                        _navigator.push(GROUP_DETAILS_ROUTE, arguments: group);
                      },
                    );
                  },
                  childCount: _controller.length,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
