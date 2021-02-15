import 'package:mobx/mobx.dart';
import 'package:spotify/spotify.dart' as Spotify hide User;
import 'package:tracksfer/models/Track.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
part 'observable_track.g.dart';

class ObservableTrack = _ObservableTrackBase with _$ObservableTrack;

abstract class _ObservableTrackBase with Store implements Track {
  @observable
  String id;
  @observable
  ObservableGroup group;
  @observable
  String spotifyId;
  @observable
  ObservableUser user;
  @observable
  DateTime createdAt;
  @observable
  Spotify.Track spotifyTrack; // Stores Spotify info about track.

  _ObservableTrackBase({
    this.id,
    this.group,
    this.spotifyId,
    this.user,
    this.createdAt,
  });

  ObservableTrack factoryFromJson(Map<String, dynamic> json) {
    return ObservableTrack(
      id: json['id'],
      group: ObservableGroup().factoryFromJson(json['group']),
      spotifyId: json['spotify_id'],
      //user: User.fromJson(json['user']),
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    group = ObservableGroup().factoryFromJson(json['group']);
    spotifyId = json['spotify_id'];
    //user= User.fromJson(json['user']);
    createdAt = DateTime.parse(json['created_at']);
  }

  String getArtistNames() {
    List<String> artistNames = [];

    if (spotifyTrack != null) {
      spotifyTrack.artists.forEach((x) => artistNames.add(x.name));
    }

    return artistNames.join(', ');
  }

  String getAlbumThumbnail() {
    String url = '';

    if (spotifyTrack != null) {
      final images = spotifyTrack.album.images;
      // url = images[images.length - 1].url;
      url = images[0].url;
    }

    return url;
  }
}
