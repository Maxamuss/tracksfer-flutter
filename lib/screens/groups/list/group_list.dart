import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_time_ago/get_time_ago.dart';

import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/main.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/group_search.dart';
import 'package:tracksfer/screens/groups/list/group_list_controller.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';
import 'package:tracksfer/widgets/search_bar.dart';

import '../../../widgets/error.dart';
import '../../../widgets/loading.dart';

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
  final _controller = G.get<GroupListController>();
  final _navigator = G.get<NavigationController>();

  Widget errorWidget;

  @override
  void initState() {
    super.initState();
    errorWidget = LoadErrorWidget(
      errorMessage: 'Failed to load your groups.',
      function: _controller.refresh,
    );
    _controller.loadGroupList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (_controller.isLoading) {
          return LoadingWidget();
        } else if (_controller.hasError) {
          return errorWidget;
        } else if (_controller.isEmpty) {
          return Center(
            child: Text('You are not in any groups yet'),
          );
        } else {
          return CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text(
                  'Playlists',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'DM Sans',
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => showSearch(
                    context: context,
                    delegate: GroupSearchDelegate(),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _navigator.push(GROUP_CREATE_ROUTE),
                ),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              ),
              CupertinoSliverRefreshControl(
                onRefresh: () async => _controller.loadGroupList(),
              ),
              SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      ObservableGroup group = _controller.groups[index];
                      return ListTile(
                        title: Text(
                          group.groupName,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        subtitle: Text(
                          group.groupDesc,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        trailing: Text(TimeAgo.getTimeAgo(group.updatedAt)),
                        onTap: () {
                          _navigator.push(
                            GROUP_DETAILS_ROUTE,
                            arguments: group,
                          );
                        },
                      );
                    },
                    childCount: _controller.groups.length,
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

class PersistentHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: CupertinoTextField(
        prefix: Icon(CupertinoIcons.search),
        textInputAction: TextInputAction.done,
        placeholder: 'Search Playlists',
        clearButtonMode: OverlayVisibilityMode.editing,
        placeholderStyle: Theme.of(context).textTheme.bodyText1,
        decoration: BoxDecoration(color: ColorPalette.InputColor),
      ),
    );
  }

  @override
  double get maxExtent => 30.0;

  @override
  double get minExtent => 30.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
