import 'package:flutter/material.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:intl/intl.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/group_detail.dart';

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
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  Future<Map<String, dynamic>> _groups;
  bool _loading = true;
  bool _error = false;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    final errorWidget = LoadErrorWidget(
      errorMessage: 'Failed to load your groups.',
      function: _refresh,
    );

    if (_error) {
      return errorWidget;
    } else {
      return FutureBuilder<Map<String, dynamic>>(
        future: _groups,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Iterable groupsJson = snapshot.data['results'];
            List<ObservableGroup> groups = groupsJson
                .map((model) => ObservableGroup().factoryFromJson(model))
                .toList();

            if (groups.isEmpty) {
              return Center(
                child: Text('You are not in any groups yet'),
              );
            }

            return SmartRefresher(
              enablePullDown: true,
              // enablePullUp: false,
              header: ClassicHeader(),
              controller: _refreshController,
              onRefresh: _refresh,
              child: ListView.builder(
                itemCount: groups.length,
                itemBuilder: (context, index) {
                  ObservableGroup group = groups[index];
                  return ListTile(
                    title: Text(group.groupName),
                    subtitle: Text(group.groupDesc),
                    trailing: Text(
                      DateFormat('H:m EEEE d LLLL')
                          .format(group.updatedAt)
                          .toString(),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GroupDetailScreen(group),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return errorWidget;
          }
          return Center(
            child: LoadingWidget(),
          );
        },
      );
    }
  }

  Future<Map<String, dynamic>> _getGroups() async {
    try {
      final response = await Request.get('groups/');
      if (response.statusCode == 200) {
        _refreshController.refreshCompleted();
        return response.data;
      } else if (response.statusCode == 403) {
        logout(context);
      } else {
        _setError();
      }
    } catch (e) {
      _setError();
    }
  }

  void _refresh() {
    setState(() {
      _error = false;
      _groups = _getGroups();
    });
  }

  void _setError() {
    setState(() {
      this._error = true;
      this._loading = false;
    });
  }
}
