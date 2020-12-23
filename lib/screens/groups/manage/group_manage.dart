import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/manage/group_manage_controller.dart';
import 'package:tracksfer/screens/groups/manage/widgets/AnyInSliver.dart';
import 'package:tracksfer/screens/groups/manage/widgets/GroupManagementAppBar.dart';
import 'package:tracksfer/screens/groups/manage/widgets/GroupMemberList.dart';
import 'package:tracksfer/screens/groups/manage/widgets/PendingUserList.dart';
import 'package:tracksfer/widgets/conditioned.dart';

class GroupManagementScreen extends StatefulWidget {
  final ObservableGroup group;
  GroupManagementScreen(this.group);
  @override
  _GroupManagementScreenState createState() => _GroupManagementScreenState();
}

class _GroupManagementScreenState extends State<GroupManagementScreen> {
  GroupManagementController _controller;

  @override
  void initState() {
    super.initState();
    _controller = GroupManagementController(widget.group);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff121212),
        body: Observer(builder: (context) {
          return CustomScrollView(
            controller: _controller.scrollController,
            physics:
                _controller.isEditing ? NeverScrollableScrollPhysics() : null,
            slivers: <Widget>[
              GroupManagementAppBar(_controller),
              ConditionedWidget(
                condition: () =>
                    _controller.pendingUsers != null &&
                    _controller.pendingUserListLength > 0,
                child: AnyInSliver(
                    child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pending Users',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      IconButton(
                          icon: _controller.isCollapsed
                              ? Icon(Icons.arrow_upward)
                              : Icon(Icons.arrow_downward),
                          color: Colors.white,
                          onPressed: _controller.toggleExpandable)
                    ],
                  ),
                )),
                falseReturn: SliverList(
                  delegate: SliverChildBuilderDelegate((_, __) => Container(),
                      childCount: 1),
                ),
              ),
              PendingUserList(_controller),
              AnyInSliver(
                  child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Users',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )),
              GroupMemberList(_controller)
            ],
          );
        }));
  }
}
