import 'package:flutter/material.dart';

import '../../models/Group.dart';
import '../../services/auth.dart';
import '../../services/requests.dart';
import '../../widgets/error.dart';
import '../../widgets/loading.dart';

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
  List<Group> _groups;
  List<Group> _pendingGroups;
  bool _loading = true;
  bool _error = false;

  void _getGroups() async {
    final responses = await Future.wait([
      Request.get('groups/'),
      Request.get('groups/?pending=true'),
    ]);
    final groupResponse = responses[0];
    final pendingGroupResponse = responses[1];
    if (groupResponse.statusCode == 200 &&
        pendingGroupResponse.statusCode == 200) {
      final groupsJson = groupResponse.data['results'];
      final pendingGroupsJson = pendingGroupResponse.data['results'];
      _groups = groupsJson.map((model) => Group.fromJson(model)).toList();
      _pendingGroups =
          pendingGroupsJson.map((model) => Group.fromJson(model)).toList();

      setState(() {
        _loading = false;
      });
    } else if (groupResponse.statusCode == 403 ||
        pendingGroupResponse.statusCode == 403) {
      logout(context);
    } else {
      _setError();
    }
  }

  void _refresh() {
    setState(() {
      _loading = true;
      _error = false;
    });
  }

  void _setError() {
    setState(() {
      this._error = true;
      this._loading = false;
    });
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
    _getGroups();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      LoadErrorWidget(
        errorMessage: 'Failed to load your groups.',
        function: _refresh,
      );
    }

    if (_loading) {
      return LoadingWidget();
    } else {
      return Container(
        child: Center(
          child: Text('groups'),
        ),
      );
    }
  }
}
