import 'package:spotify/spotify.dart' as spotify hide User;

import 'group.dart';
import 'user.dart';

class Track {
  final String id;
  final Group group;
  final String spotifyId;
  final User user;
  final DateTime createdAt;
  spotify.Track spotifyTrack; // Stores Spotify info about track.

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
    final artistNames = [];

    if (spotifyTrack != null) {
      for (var artist in spotifyTrack.artists) {
        artistNames.add(artist.name);
      }
    }

    return artistNames.join(', ');
  }

  String getAlbumThumbnail() {
    var url = '';

    if (spotifyTrack != null) {
      final images = spotifyTrack.album.images;
      // url = images[images.length - 1].url;
      url = images[0].url;
    }

    return url;
  }
}
