import 'package:flutter/material.dart';
import '../../models/group.dart';
import 'group_detail.dart';
import '../../services/auth.dart';
import '../../services/requests.dart';
import '../../widgets/error.dart';

class GroupCreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Group'),
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
  final _formKey = GlobalKey<FormState>();
  final _groupNameController = TextEditingController();
  final _groupDescController = TextEditingController();
  bool _error = false;

  Future<void> _createGroup() async {
    final formData = {
      'group_name': _groupNameController.text,
      'group_desc': _groupDescController.text
    };
    try {
      final response = await Request.post('groups/', formData);
      if (response.statusCode == 201) {
        final group = Group.fromJson(response.data);
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GroupDetailScreen(group),
          ),
        );
      } else if (response.statusCode == 403) {
        logout(context);
      } else {
        _setError();
      }
    } on Exception {
      _setError();
    }
  }

  void _setError() {
    setState(() {
      _error = true;
    });
  }

  void _refresh() {
    setState(() {
      _error = false;
    });
  }

  @override
  void dispose() {
    _groupNameController.dispose();
    _groupDescController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return LoadErrorWidget(
        errorMessage: 'Failed to create group.',
        function: _refresh,
      );
    }
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _groupNameController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a name for the group.';
                  }
                  return null;
                },
                autofocus: true,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  labelText: 'Group name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                maxLength: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _groupDescController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a description for the group.';
                  }
                  return null;
                },
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  labelText: 'Group description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                maxLength: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _createGroup();
                    }
                  },
                  child: const Icon(Icons.add),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
