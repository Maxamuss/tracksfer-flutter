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
}
