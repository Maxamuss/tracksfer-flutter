import 'package:flutter/material.dart';
import 'package:tracksfer/models/Group.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';
import 'package:tracksfer/widgets/error.dart';
import 'package:tracksfer/widgets/loading.dart';

class GroupSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }

    return SearchResultsWidget(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Column();
  }
}

class SearchResultsWidget extends StatefulWidget {
  final String query;

  SearchResultsWidget(this.query);

  @override
  _SearchResultsWidgetState createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {
  bool _loading = true;
  bool _error = false;

  Future<Map<String, dynamic>> _getSearchResults() async {
    try {
      final response = await Request.get('groups/search/?q=${widget.query}');
      if (response.statusCode == 200) {
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

  void _setError() {
    setState(() {
      this._error = true;
      this._loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final errorWidget = LoadErrorWidget(
      errorMessage: 'Failed to load search results.',
      function: null,
    );

    if (_error) {
      return errorWidget;
    }

    return FutureBuilder<Map<String, dynamic>>(
      future: _getSearchResults(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Iterable groupsJson = snapshot.data['results'];
          List<Group> groups =
              groupsJson.map((model) => Group.fromJson(model)).toList();

          if (groups.isEmpty) {
            return Center(
              child: Text('No groups matching search query.'),
            );
          }

          return ListView.builder(
            itemCount: groups.length,
            itemBuilder: (context, index) {
              Group group = groups[index];
              return ListTile(
                title: Text(group.groupName),
                subtitle: Text(group.groupDesc),
              );
            },
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
