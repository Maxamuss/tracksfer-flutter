import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:intl/intl.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/list/group_list_controller.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';

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
    return Observer(builder: (_) {
      if (_controller.isLoading) {
        return LoadingWidget();
      } else if (_controller.hasError) {
        return errorWidget;
      } else if (_controller.isEmpty) {
        return Center(
          child: Text('You are not in any groups yet'),
        );
      } else {
        return SmartRefresher(
          enablePullDown: true,
          // enablePullUp: false,
          header: ClassicHeader(),
          controller: _controller.refreshController,
          onRefresh: _controller.refresh,
          child: ListView.builder(
            itemCount: _controller.length,
            itemBuilder: (context, index) {
              ObservableGroup group = _controller.groups[index];
              return ListTile(
                title: Text(group.groupName),
                subtitle: Text(group.groupDesc),
                trailing: Text(
                  DateFormat('H:m EEEE d LLLL')
                      .format(group.updatedAt)
                      .toString(),
                ),
                onTap: () {
                  _navigator.push(GROUP_DETAILS_ROUTE, arguments: group);
                },
              );
            },
          ),
        );
      }
    });
  }
}
