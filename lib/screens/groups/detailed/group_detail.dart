import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/models/observable_models/observable_track.dart';
import 'package:tracksfer/screens/groups/detailed/group_detail_controller.dart';
import 'package:tracksfer/screens/spotify/spotify_search.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';

import '../../../widgets/error.dart';
import '../../../widgets/loading.dart';

class GroupDetailScreen extends StatelessWidget {
  final ObservableGroup group;

  GroupDetailScreen(this.group);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GroupDetailWidget(group),
    );
  }
}

class GroupDetailWidget extends StatefulWidget {
  final ObservableGroup group;

  GroupDetailWidget(this.group);

  @override
  _GroupDetailWidgetState createState() => _GroupDetailWidgetState();
}

class _GroupDetailWidgetState extends State<GroupDetailWidget> {
  GroupDetailController _controller;

  @override
  void initState() {
    super.initState();
    _controller = GroupDetailController(widget.group);
  }

  //int _page = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_controller.groupName),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SpotifySearchDelegate(),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                G
                    .get<NavigationController>()
                    .push(GROUP_MANAGE_ROUTE, arguments: widget.group);
              },
            ),
          ],
        ),
        body: Observer(
          builder: (_) {
            return body();
          },
        ));
  }

  Widget body() {
    if (_controller.hasError) {
      return LoadErrorWidget(
        errorMessage: 'Failed to load group.',
        function: _controller.refresh,
      );
    } else if (_controller.isLoading) {
      return LoadingWidget();
    } else if (_controller.isEmpty) {
      return Center(
        child: Text(
          'No tracks have been added to this group yet! Why not add one now?',
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return ListView.builder(
        itemCount: _controller.length,
        itemBuilder: (context, index) {
          final ObservableTrack track = _controller.tracks[index];
          return ListTile(
            leading: CachedNetworkImage(
              imageUrl: track.getAlbumThumbnail(),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            title: Text(track.spotifyTrack.name),
            subtitle: Text(track.getArtistNames()),
            onTap: () {
              showCupertinoModalBottomSheet(
                context: context,
                builder: (context) => TrackModelWidget(track),
              );
            },
          );
        },
      );
    }
  }
}

class TrackModelWidget extends StatefulWidget {
  final ObservableTrack track;

  TrackModelWidget(this.track);

  @override
  _TrackModelWidgetState createState() => _TrackModelWidgetState();
}

class _TrackModelWidgetState extends State<TrackModelWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.track.spotifyTrack.name),
          Text(widget.track.getArtistNames()),
        ],
      ),
    );
  }
}
