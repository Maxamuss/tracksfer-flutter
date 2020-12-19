import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tracksfer/screens/groups/create/group_create_controller.dart';
import 'package:tracksfer/widgets/error.dart';

class GroupCreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Group'),
      ),
      body: GroupCreateWidget(),
    );
  }
}

class GroupCreateWidget extends StatefulWidget {
  @override
  _GroupCreateWidgetState createState() => _GroupCreateWidgetState();
}

class _GroupCreateWidgetState extends State<GroupCreateWidget> {
  final _controller = CreateGroupController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (_controller.hasError) {
          return LoadErrorWidget(
            errorMessage: 'Failed to create group.',
            function: _controller.refresh,
          );
        }
        return Container(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      controller: _controller.groupNameController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a name for the group.';
                        }
                        return null;
                      },
                      autofocus: true,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'Group name',
                        border: OutlineInputBorder(
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
                  padding: EdgeInsets.all(10.0),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      controller: _controller.groupDescController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a description for the group.';
                        }
                        return null;
                      },
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'Group description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      maxLength: 150,
                    );
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: FloatingActionButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _controller.createGroup();
                        }
                      },
                      child: Icon(Icons.add),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
