import 'package:spotify/spotify.dart' as spotify;
import '../models/track.dart';

spotify.SpotifyApi spotifyInit() {
  var credentials = spotify.SpotifyApiCredentials(
    '549d7e8076914f5b91d4c00578bf604f',
    '827d0fc220ce493180afa504b2244356',
  );
  return spotify.SpotifyApi(credentials);
}

// This method takes a list of Tracks, gets the Spotify data for them and then
// adds the spotify data to the Track model.
Future<void> populateSpotifyDetails(List<Track> tracks) async {
  if (tracks.isNotEmpty) {
    // Create map for tracks with key being the Spotify track id.
    final tracksMap =
        Map.fromIterable(tracks, key: (e) => e.spotifyId, value: (e) => e);

    final tracksIds = <String>[];
    for (var track in tracks) {
      tracksIds.add(track.spotifyId);
    }

    // Get the Spotify Tracks.
    final spotify = spotifyInit();
    try {
      final spotifyTracks =
          await spotify.tracks.list(tracksIds);
      for (var track in spotifyTracks) {
        tracksMap[track.id].spotifyTrack = track;
      }
    } on Exception {}
  }
}
