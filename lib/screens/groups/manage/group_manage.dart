import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/manage/group_manage_controller.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';

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
              Observer(builder: (_) {
                return SliverAppBar(
                    pinned: true,
                    expandedHeight: _controller.isEditing ? 230.0 : 190.0,
                    backgroundColor: Color(0xff1F1F1F),
                    leading: Container(),
                    leadingWidth: 0,
                    title: Text('Manage Group'),
                    actions: [
                      IconButton(
                          icon: !_controller.isEditing
                              ? Icon(Icons.edit)
                              : Icon(Icons.save),
                          onPressed: !_controller.isEditing
                              ? _controller.startEditing
                              : _controller.saveChanges),
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: G.get<NavigationController>().pop)
                    ],
                    flexibleSpace: AppBarForm(_controller));
              }),
              SliverFixedExtentList(
                itemExtent: 70,
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Card(
                    color: Color(0xff1D1D1D),
                    child: ListTile(
                      title: Text(
                        "User $index",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }, childCount: 10),
              )
            ],
          );
        }));
  }
}

class AppBarForm extends StatelessWidget {
  final GroupManagementController _controller;
  AppBarForm(this._controller);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Observer(builder: (_) {
                  return TextFormField(
                    controller: _controller.nameController,
                    enabled: _controller.isEditing,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a name for the group.';
                      }
                      return null;
                    },
                    autofocus: true,
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Group name',
                      labelStyle: TextStyle(color: Colors.grey),
                      helperStyle: TextStyle(color: Colors.white),
                      counter: _controller.isEditing ? null : Container(),
                      disabledBorder: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow[100]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    maxLength: 100,
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Observer(builder: (_) {
                  return TextFormField(
                    controller: _controller.descController,
                    enabled: _controller.isEditing,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a description for the group.';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Group description',
                      labelStyle: TextStyle(color: Colors.grey),
                      helperStyle: TextStyle(color: Colors.white),
                      counter: _controller.isEditing ? null : Container(),
                      disabledBorder: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow[100]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    maxLength: 150,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
