import 'package:spotify/spotify.dart' as Spotify hide User;

import 'Group.dart';
import 'User.dart';

class Track {
  final String id;
  final Group group;
  final String spotifyId;
  final User user;
  final DateTime createdAt;
  Spotify.Track spotifyTrack; // Stores Spotify info about track.

  Track({
    this.id,
    this.group,
    this.spotifyId,
    this.user,
    this.createdAt,
  });

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'],
      group: Group.fromJson(json['group']),
      spotifyId: json['spotify_id'],
      user: User.fromJson(json['user']),
      createdAt: DateTime.parse(json['created_at']),
    );
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
