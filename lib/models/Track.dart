import 'package:spotify/spotify.dart' as Spotify hide User;
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';

abstract class Track {
  String id;
  ObservableGroup group;
  String spotifyId;
  ObservableUser user;
  DateTime createdAt;
  Spotify.Track spotifyTrack; // Stores Spotify info about track.

  // String getArtistNames() {
  //   List<String> artistNames = [];

  //   if (spotifyTrack != null) {
  //     spotifyTrack.artists.forEach((x) => artistNames.add(x.name));
  //   }

  //   return artistNames.join(', ');
  // }

  // String getAlbumThumbnail() {
  //   String url = '';

  //   if (spotifyTrack != null) {
  //     final images = spotifyTrack.album.images;
  //     // url = images[images.length - 1].url;
  //     url = images[0].url;
  //   }

  //   return url;
  // }
}
