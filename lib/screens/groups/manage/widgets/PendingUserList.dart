import 'package:expandable_sliver_list/expandable_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:tracksfer/screens/groups/manage/group_manage_controller.dart';
import 'package:tracksfer/screens/groups/manage/widgets/UserCard.dart';
import 'package:tracksfer/widgets/conditioned.dart';
import 'package:tracksfer/widgets/error.dart';
import 'package:tracksfer/widgets/loading.dart';

class PendingUserList extends StatefulWidget {
  final GroupManagementController _controller;
  PendingUserList(this._controller);
  @override
  _PendingUserListState createState() => _PendingUserListState();
}

class _PendingUserListState extends State<PendingUserList> {
  GroupManagementController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget._controller;
  }

  @override
  Widget build(BuildContext context) {
    return ConditionedWidget(
      condition: () =>
          _controller.pendingUsers != null &&
          _controller.pendingUserListLength > 0,
      child: ExpandableSliverList(
        initialItems: _controller.pendingUsers,
        controller: _controller.exSliverController,
        startCollapsed: true,
        builder: (context, item, index) {
          if (_controller.hasError) {
            return LoadErrorWidget(
                errorMessage:
                    'An error has ocurred while loading pending users, please retry.',
                function: _controller.retryGetUsers);
          } else if (_controller.isLoading) {
            return LoadingWidget();
          }
          return UserCard(_controller.pendingUsers[index]);
        },
      ),
      falseReturn: SliverList(
        delegate:
            SliverChildBuilderDelegate((_, __) => Container(), childCount: 1),
      ),
    );
  }
}
