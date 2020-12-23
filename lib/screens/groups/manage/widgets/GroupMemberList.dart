import 'package:flutter/material.dart';
import 'package:tracksfer/screens/groups/manage/group_manage_controller.dart';
import 'package:tracksfer/screens/groups/manage/widgets/UserCard.dart';
import 'package:tracksfer/widgets/error.dart';
import 'package:tracksfer/widgets/loading.dart';

class GroupMemberList extends StatelessWidget {
  final GroupManagementController _controller;
  GroupMemberList(this._controller);
  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 70,
      delegate: SliverChildBuilderDelegate((context, index) {
        if (_controller.hasError) {
          return LoadErrorWidget(
              errorMessage:
                  'An error has ocurred while loading users, please retry.',
              function: _controller.retryGetUsers);
        } else if (_controller.isLoading) {
          return LoadingWidget();
        }
        return UserCard(_controller.users[index]);
      }, childCount: _controller.userListLength),
    );
  }
}
