import 'package:expandable_sliver_list/expandable_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/screens/groups/manage/group_manage_controller.dart';
import 'package:tracksfer/screens/groups/manage/widgets/UserCard.dart';
import 'package:tracksfer/widgets/bottomsheet.dart';
import 'package:tracksfer/widgets/conditioned.dart';
import 'package:tracksfer/widgets/error.dart';
import 'package:tracksfer/widgets/loading.dart';

class PendingUserList extends StatelessWidget {
  final GroupManagementController _controller;

  PendingUserList(this._controller);

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
          } else {
            return UserCard(
              user: _controller.pendingUsers[index],
              onTap: () {
                ObservableUser user = _controller.pendingUsers[index];
                CustomBottomSheets.showConfirmation(
                    context,
                    'Do you want to accept ${user.username} into the group?',
                    'Accept',
                    () => _controller.requestDecision(true, user),
                    hasOppositeAction: true,
                    onOppositeAction: () =>
                        _controller.requestDecision(false, user),
                    oppositeActionText: 'Deny');
              },
            );
          }
        },
      ),
      falseReturn: SliverList(
        delegate:
            SliverChildBuilderDelegate((_, __) => Container(), childCount: 1),
      ),
    );
  }
}
